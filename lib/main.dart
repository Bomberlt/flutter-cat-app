import 'package:flutter/material.dart';
import 'cat_model.dart';
import 'cat_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Cat> listOfCats = [
    Cat("Shookie", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiQoXcnz09d4N7QEFK0QRI_oKXe37Ef09fn8vaFO_LnX6lmO5l&s"),
    Cat("Fluffy",
        "http://mister-t-shirt.emyspot.com/medias/images/manga-cute-cat-t-shirt-graphic-500x500.jpg"),
    Cat("Spooky",
        "https://previews.123rf.com/images/yulia87/yulia871809/yulia87180900012/109988423-cute-black-cat-in-sitting-on-a-halloween-pumpkin.jpg"),
  ];

  void onButtonPressed(){
    setState(() {
      listOfCats.add(new Cat("Random cat", "https://loremflickr.com/400/400"));
    });
    print(listOfCats);
  }

  Widget build(BuildContext context) {
    List<Widget> listOfCatCards = [];
    for(Cat cat in listOfCats){
      listOfCatCards.add(CatCard(cat));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Cat app"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onButtonPressed,
        backgroundColor: Colors.cyan,
        child: IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: listOfCatCards
      ),
    );
  }
}