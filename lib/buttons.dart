import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function(String) changeJokeIndex;

  Buttons({required this.changeJokeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex('prev');
            },
            child: Icon(
              Icons.arrow_left_rounded,
              size: 60,
            ),
            backgroundColor: Colors.indigoAccent,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex('next');
            },
            child: Icon(
              Icons.arrow_right_rounded,
              size: 60,
            ),
            backgroundColor: Colors.indigoAccent,
          ),
        ),
      ],
    );
  }
}
