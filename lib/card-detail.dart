import 'package:flutter/material.dart';
import 'card.dart';

class CardDetail extends StatelessWidget {
  CardContainer card;

  CardDetail(this.card) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        height: 200.0,
        width: 200.0,
        color: card.color,
        child: Center(
        child: Text(card.number.toString()),
        ));
  }
}
