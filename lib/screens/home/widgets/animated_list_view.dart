import 'package:flutter/material.dart';
import 'package:listworkanimation/screens/home/widgets/list_data.dart';

class AnimedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Enjuru",
          image: NetworkImage("https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.0-9/s960x960/86648294_2490521697742890_3531151072288571392_o.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=cVOweqncGgEAX9j5YPZ&_nc_ht=scontent.fbsb9-1.fna&_nc_tp=7&oh=f32ffead684355e08b37c04296b4da33&oe=5E957BE5"),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Enjuru",
          image: NetworkImage("https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.0-9/s960x960/86648294_2490521697742890_3531151072288571392_o.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=cVOweqncGgEAX9j5YPZ&_nc_ht=scontent.fbsb9-1.fna&_nc_tp=7&oh=f32ffead684355e08b37c04296b4da33&oe=5E957BE5"),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Enjuru",
          image: NetworkImage("https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.0-9/s960x960/86648294_2490521697742890_3531151072288571392_o.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=cVOweqncGgEAX9j5YPZ&_nc_ht=scontent.fbsb9-1.fna&_nc_tp=7&oh=f32ffead684355e08b37c04296b4da33&oe=5E957BE5"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Enjuru",
          image: NetworkImage("https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.0-9/s960x960/86648294_2490521697742890_3531151072288571392_o.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=cVOweqncGgEAX9j5YPZ&_nc_ht=scontent.fbsb9-1.fna&_nc_tp=7&oh=f32ffead684355e08b37c04296b4da33&oe=5E957BE5"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Enjuru",
          image: NetworkImage("https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.0-9/s960x960/86648294_2490521697742890_3531151072288571392_o.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=cVOweqncGgEAX9j5YPZ&_nc_ht=scontent.fbsb9-1.fna&_nc_tp=7&oh=f32ffead684355e08b37c04296b4da33&oe=5E957BE5"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso do Enjuru",
          image: NetworkImage("https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.0-9/s960x960/86648294_2490521697742890_3531151072288571392_o.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=cVOweqncGgEAX9j5YPZ&_nc_ht=scontent.fbsb9-1.fna&_nc_tp=7&oh=f32ffead684355e08b37c04296b4da33&oe=5E957BE5"),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
