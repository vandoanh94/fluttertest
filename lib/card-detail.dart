import 'package:flutter/material.dart';
import 'card.dart';

class CardDetail extends StatelessWidget {
  CardContainer card;
  final CardContainerCallback callback;
  CardDetail(this.card, {this.callback}) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
                            onTap: () {
                              card.number += 1;
                              callback(card);
                            },
                            child: new Container(
        height: 200.0,
        width: 200.0,
        color: card.color,
        child: Center(
        child: Text(card.number.toString()),
        )))
    ;
  }
}

typedef void CardContainerCallback(CardContainer val);

