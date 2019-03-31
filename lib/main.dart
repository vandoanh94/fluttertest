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
    new CardContainer(1,Color(0xFFe0e0e0), 0),
    new CardContainer(2,Color(0xFFb3b3b3), 0),
    new CardContainer(3,Color(0xFF808080), 0),
    new CardContainer(4,Color(0xFF262626), 0),
    new CardContainer(5,Color(0xFF000000), 0),
    new CardContainer(6,Color(0xff2980b9), 0),
    new CardContainer(7,Color(0xFF808080), 0),
    new CardContainer(8,Color(0xFFb3b3b3), 0),
    new CardContainer(9,Color(0xFFb3b3b3), 0),
    new CardContainer(10,Color(0xFF262626), 0),
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
          CardDetail(_currentCardContainer, callback: (val) => setState(() => {
            _currentCardContainer = val,
                                          print(_currentCardContainer.number.toString())
            }))
        ]    
      )
    );
  }
}
