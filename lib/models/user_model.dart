import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model{

  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser firebaseUser;
  Map<String, dynamic> userData = Map();

  bool isLoading = false;

  static UserModel of(BuildContext context) => ScopedModel.of<UserModel>(context);

  @override
  void addListener(listener) {
    super.addListener(listener);

    _loadCurrentUser();
  }

  void signUp({
    @required Map<String, dynamic> userData,
    @required String pass,
    @required VoidCallback onSucess,
    @required VoidCallback onFail}){
    isLoading = true;
    notifyListeners();

    _auth.createUserWithEmailAndPassword(
        email: userData["email"],
        password: pass
    ).then((user) async{
      firebaseUser = user.user;
      await _saveUserData(userData);

      onSucess();

      isLoading = false;
      notifyListeners();
    }).catchError((e){
      onFail();
      print("Falha ao tentar criar conta: $e");
      isLoading = false;
      notifyListeners();
    });
    }

    bool isLoggedIn(String email){
    _auth.sendPasswordResetEmail(email: email);
    }

    bool isSignIn(){
      return firebaseUser != null;
    }

  /// carregar Usuário atual
  Future<Null> _loadCurrentUser() async{
    if(firebaseUser == null ){
      firebaseUser = await _auth.currentUser();
    }
    if(firebaseUser != null){
      if(userData["name"] == null){
        DocumentSnapshot documentSnapshot = await Firestore.instance.collection("users")
            .document(firebaseUser.uid).get();
        userData = documentSnapshot.data;
      }
    }
    notifyListeners();
  }

  Future<Null> _saveUserData(Map<String, dynamic> userData) async{
    /// Criando coleção no firebase

    this.userData = userData;
    await Firestore.instance.collection("users").
    document(firebaseUser.uid).setData(userData);
  }

}