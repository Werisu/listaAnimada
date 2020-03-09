import 'package:flutter/material.dart';
import 'package:listworkanimation/screens/home/widgets/category_view.dart';

class HomeTop extends StatelessWidget {

  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/kimetsu-no-yaiba.jpg"),
          fit: BoxFit.cover
        )
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Bem-Vindo Enjuru!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/perfil.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: EdgeInsets.only(left: 80),
                alignment: Alignment.center,
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: containerGrow.value * 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(0, 191, 247, 1.0)
                ),
              ),
            ),
            CategoryView()
          ],
        )
      ),
    );
  }
}
