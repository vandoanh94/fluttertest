import 'package:flutter/material.dart';
import 'package:fluttertest/card-detail.dart';
import 'package:fluttertest/cards.dart';
import 'card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<CardContainer> cards = [
    new CardContainer(Color(0xFFe0e0e0), 1),
    new CardContainer(Color(0xFFb3b3b3), 2),
    new CardContainer(Color(0xFF808080), 3),
    new CardContainer(Color(0xFF262626), 4),
    new CardContainer(Color(0xFF000000), 5),
    new CardContainer(Color(0xff2980b9), 6),
    new CardContainer(Color(0xFF808080), 7),
    new CardContainer(Color(0xFFb3b3b3), 8),
    new CardContainer(Color(0xFFb3b3b3), 9),
    new CardContainer(Color(0xFF262626), 10),
  ];
  void initState() {
      _currentCardContainer = cards[0];
      super.initState();
  }

  CardContainer _currentCardContainer;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Cards(cards, callback: (val) => setState(() => {
            _currentCardContainer = val
            })),
          CardDetail(_currentCardContainer)
        ]    
      )
    );
  }
}
