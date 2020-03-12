import 'package:flutter/material.dart';
import 'package:food_order/pages/cartpage.dart';
import 'package:food_order/widgets/best_food.dart';
import 'package:food_order/widgets/categories.dart';
import 'package:food_order/widgets/popular_food.dart';

import '../common.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "What would you like to eat?",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.notifications_none), onPressed: () {}),
                  Positioned(
                    top: 10,
                    right: 12,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: red, borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: grey[300], offset: Offset(2, 1), blurRadius: 5)
                  ]),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: red,
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Find food ",
                      border: InputBorder.none),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Categories(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Popular food",
              style: TextStyle(fontSize: 22, color: grey),
            ),
          ),
          Popular(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best food",
              style: TextStyle(fontSize: 22, color: grey),
            ),
          ),
          BestFood(),


        ],
      )),
      bottomNavigationBar: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(onPressed: null,
              child: Image.asset(
                "lib/assets/images/home.png",
                width: 28,
                height: 28,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "lib/assets/images/target.png",
                width: 28,
                height: 28,
                
              ),
            ),

            Padding( 
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed:() {Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => cartpage()),
     );},
               child: Image.asset(
                "lib/assets/images/shopping-bag.png",
                width: 28,
                height: 28,
                
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "lib/assets/images/avatar.png",
                width: 28,
                height: 28,
              ),
            ),



          ],
        ),
      ),
    );
  }
}
