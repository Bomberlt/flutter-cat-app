import 'cat_model.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  Cat cat;
  CatCard(this.cat);

  Widget build(BuildContext build){
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
      child: Container(
        height: 100,
        color: Colors.pink.withOpacity(0.5),
        child: Row(
          children:[
            Image(image: NetworkImage(cat.url),),
            Padding(
              padding:EdgeInsets.only(left: 60),
              child: Text(
                cat.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )
      )
    );
  }

}