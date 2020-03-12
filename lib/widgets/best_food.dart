import 'package:flutter/material.dart';
import 'package:food_order/pages/productdetails.dart';
import 'package:food_order/widgets/small_floating_button.dart';
import 'package:food_order/pages/productdetails.dart';

import '../common.dart';


List<bFood> bestfoodList = [
  bFood(name: "Butter Chicken",
      image: "butter-chicken.jpg",
      price: 34.99),
  bFood(name: "Biryani",
  image: "biryani.jpg",
  price: 13.99),
  bFood(name: "Pancakes",
      image: "food.jpg",
      price: 3.72),

];

class BestFood extends StatefulWidget {
  @override
  _BestFoodState createState() => _BestFoodState();
}

class _BestFoodState extends State<BestFood> {
  @override
  Widget build(BuildContext context) {
     return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: bestfoodList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: red[50],
                              offset: Offset(3, 8),
                              blurRadius: 15)
                        ]),
                    child: Column(
                      children: <Widget>[
                        FlatButton(onPressed: (){{
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => productdetails(
        detail:bestfoodList[index],
        )),
     );
  }},
                        child:Image.asset(
                          "lib/assets/images/${bestfoodList[index].image}",
                          width: 140,
                          height: 140,
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(bestfoodList[index].name),
                            ),
                            SmallButton(Icons.favorite)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "4.5",
                                    style: TextStyle(color: grey, fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "(298)",
                                    style: TextStyle(color: grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "\$${bestfoodList[index].price}",
                                style: TextStyle(color: black, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    ); 
    // Row(
    //   children: <Widget>[
    //     Expanded(
    //       child: SizedBox(
    //         height: 4000,
    //         child: new ListView.builder(
    //           scrollDirection: Axis.horizontal,
    //           itemBuilder: (_,index){
    //   return    Padding(padding: EdgeInsets.all(2),
    //     children: <Widget>[
    //       Stack(
    //       children: <Widget>[
    //         Card(
    //         child: Container(
    //           height: 500,
    //           child: Column(
    //         children: <Widget>[
    //           Padding(
    //             padding: const EdgeInsets.all(30),
    //             child: Image.asset("lib/assets/images/butter-chicken.jpg"),
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 8.0),
    //                 child: Container(
    //                     height: 40,
    //                     child: Column(
    //                       children: <Widget>[
    //                         Text("Butter Chicken"),
    //                         Padding(
    //                           padding: const EdgeInsets.only(left: 8.0),
    //                           child: Row(
    //                             children: <Widget>[
    //                               SizedBox(
    //                                 width: 3,
    //                               ),
    //                               Icon(
    //                                 Icons.star,
    //                                 color: red,
    //                                 size: 14,
    //                               ),
    //                               Icon(
    //                                 Icons.star,
    //                                 color: red,
    //                                 size: 14,
    //                               ),
    //                               Icon(
    //                                 Icons.star,
    //                                 color: red,
    //                                 size: 14,
    //                               ),
    //                               Icon(
    //                                 Icons.star,
    //                                 color: red,
    //                                 size: 14,
    //                               ),
    //                               Icon(
    //                                 Icons.star,
    //                                 color: grey,
    //                                 size: 14,
    //                               ),
    //                               SizedBox(
    //                                 width: 3,
    //                               ),
    //                               Text(
    //                                 "(298)",
    //                                 style: TextStyle(color: grey, fontSize: 12),
    //                               ),
    //                             ],
    //                           ),
    //                         ),

    //                       ],
    //                     )),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 8.0),
    //                 child: Text("\$34.99", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
    //               ),
    //             ],
    //           ),

    //         ],
    //           ),
    //         ),
    //         ),],),
    //         Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: SmallButton(Icons.favorite),
    //         ),

    //       Padding(padding: EdgeInsets.all(2),
    //         child: Stack(
    //           children: <Widget>[
    //             Card(
    //               child: Container(
    //                 height: 450,
    //                 child: Column(
    //                   children: <Widget>[
    //                     Padding(
    //                       padding: const EdgeInsets.all(4.0),
    //                       child: Image.asset("lib/assets/images/biryani.jpg"),
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: <Widget>[
    //                         Padding(
    //                           padding: const EdgeInsets.only(left: 8.0),
    //                           child: Container(
    //                               height: 40,
    //                               child: Column(
    //                                 children: <Widget>[
    //                                   Text("Biryani"),
    //                                   Padding(
    //                                     padding: const EdgeInsets.only(left: 8.0),
    //                                     child: Row(
    //                                       children: <Widget>[
    //                                         SizedBox(
    //                                           width: 3,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: grey,
    //                                           size: 14,
    //                                         ),
    //                                         SizedBox(
    //                                           width: 3,
    //                                         ),
    //                                         Text(
    //                                           "(298)",
    //                                           style: TextStyle(color: grey, fontSize: 12),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),

    //                                 ],
    //                               )),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.only(left: 8.0),
    //                           child: Text("\$34.99", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
    //                         ),
    //                       ],
    //                     ),

    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: SmallButton(Icons.favorite),
    //             )
    //           ],
    //         ),),

    //       Padding(padding: EdgeInsets.all(2),
    //         child: Stack(
    //           children: <Widget>[
    //             Card(
    //               child: Container(
    //                 height: 320,
    //                 child: Column(
    //                   children: <Widget>[
    //                     Padding(
    //                       padding: const EdgeInsets.all(4.0),
    //                       child: Image.asset("lib/assets/images/food.jpg"),
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: <Widget>[
    //                         Padding(
    //                           padding: const EdgeInsets.only(left: 8.0),
    //                           child: Container(
    //                               height: 40,
    //                               child: Column(
    //                                 children: <Widget>[
    //                                   Text("Pancakes"),
    //                                   Padding(
    //                                     padding: const EdgeInsets.only(left: 8.0),
    //                                     child: Row(
    //                                       children: <Widget>[
    //                                         SizedBox(
    //                                           width: 3,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: red,
    //                                           size: 14,
    //                                         ),
    //                                         Icon(
    //                                           Icons.star,
    //                                           color: grey,
    //                                           size: 14,
    //                                         ),
    //                                         SizedBox(
    //                                           width: 3,
    //                                         ),
    //                                         Text(
    //                                           "(298)",
    //                                           style: TextStyle(color: grey, fontSize: 12),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),

    //                                 ],
    //                               )),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.only(left: 8.0),
    //                           child: Text("\$34.99", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
    //                         )
    //                   ],
    //                 ),

    //               ],
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: SmallButton(Icons.favorite),
    //         )
    //       ],
    //     ),),],),);

    // }
        
              
    //         ),
    //       ),
    //     )
    //   ],

    // );
    // ListView.builder(itemBuilder: (_,index){
    //   return           Padding(padding: EdgeInsets.all(2),
    //     child: Stack(
    //       children: <Widget>[
    //         Card(
    //           child: Container(
    //             height: 275,
    //             child: Column(
    //               children: <Widget>[
    //                 Padding(
    //                   padding: const EdgeInsets.all(4.0),
    //                   child: Image.asset("lib/assets/images/food.jpg"),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: <Widget>[
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 8.0),
    //                       child: Container(
    //                           height: 40,
    //                           child: Column(
    //                             children: <Widget>[
    //                               Text("Some Food"),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 8.0),
    //                                 child: Row(
    //                                   children: <Widget>[
    //                                     SizedBox(
    //                                       width: 3,
    //                                     ),
    //                                     Icon(
    //                                       Icons.star,
    //                                       color: red,
    //                                       size: 14,
    //                                     ),
    //                                     Icon(
    //                                       Icons.star,
    //                                       color: red,
    //                                       size: 14,
    //                                     ),
    //                                     Icon(
    //                                       Icons.star,
    //                                       color: red,
    //                                       size: 14,
    //                                     ),
    //                                     Icon(
    //                                       Icons.star,
    //                                       color: red,
    //                                       size: 14,
    //                                     ),
    //                                     Icon(
    //                                       Icons.star,
    //                                       color: grey,
    //                                       size: 14,
    //                                     ),
    //                                     SizedBox(
    //                                       width: 3,
    //                                     ),
    //                                     Text(
    //                                       "(298)",
    //                                       style: TextStyle(color: grey, fontSize: 12),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),

    //                             ],
    //                           )),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 8.0),
    //                       child: Text("\$34.99", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
    //                     ),
    //                   ],
    //                 ),

    //               ],
    //             ),
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: SmallButton(Icons.favorite),
    //         )
    //       ],
    //     ),);

    // });
  }
}
  class bFood{
  final String name;
  final String image;
  final double price;

  bFood({this.name, this.image, this.price});


}

