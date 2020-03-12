import 'package:flutter/material.dart';
import 'package:food_order/pages/cartpage.dart';
import 'package:food_order/widgets/best_food.dart';
import 'package:food_order/widgets/popular_food.dart';
import 'package:food_order/utils/CustomTextStyle.dart';

import '../common.dart';

class productdetails extends StatelessWidget {
  final bFood detail;
  productdetails({Key key, @required this.detail}):
  super(key:key);
  @override
  Widget build(BuildContext context) {
    var halfOfScreen = MediaQuery.of(context).size.height / 1.5;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Builder(builder: (context) {
        return Container(
          height: double.infinity,
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                              child: Container(
                    child: Image(
                      image: AssetImage("lib/assets/images/${detail.image}"),
                      height: halfOfScreen,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 28,
                      width: 32,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: 14,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          Container(
                            height: 28,
                            width: 32,
                            child: IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              onPressed: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) => cartpage()));
                              },
                              iconSize: 14,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: productDetailsSection(),
               )
            ],
          ),
        );
      }),
    );
  }

      
    
  
 productDetailsSection(){
   return Container(
     padding: EdgeInsets.all(8),
      height: 320,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  "${detail.name}",
                  style: CustomTextStyle.textFormFieldSemiBold
                      .copyWith(color: Colors.black),
                ),
              ),
              IconButton(icon: Icon(Icons.close), onPressed: () {})
            ],
          ),
          
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  "Total",
                  style: CustomTextStyle.textFormFieldMedium
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Text(
                  "${detail.price}",
                  style: CustomTextStyle.textFormFieldBlack.copyWith(
                      color: Colors.greenAccent.shade700, fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          RaisedButton(
            onPressed: () {items.add(detail);},
            color: Colors.green,
            padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Text(
              "Add To Cart",
              style: CustomTextStyle.textFormFieldSemiBold
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    );
  }
   
}
  
