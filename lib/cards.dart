import 'package:flutter/material.dart';
import 'card.dart';

class Cards extends StatelessWidget {
  List<CardContainer> cards;
  final CardContainerCallback callback;
  Cards(this.cards, {this.callback}) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 160.0,
      child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: cards
              .map((element) => Card(
                    child: Column(
                      children: <Widget>[
                        //Image.asset('assets/img.png'),
                        //Text(element)
                        new GestureDetector(
                            onTap: () {
                              print(element.number.toString());
                              callback(element);
                            },
                            child: Container(
                              width: 160.0,
                              height: 150.0,
                              color: element.color,
                              child: Center(
                                child: Text(element.number.toString()),
                              ),
                            ))
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}

typedef void CardContainerCallback(CardContainer val);
