import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galot_eat/components/food_card.dart';
import 'package:galot_eat/components/new_recipes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                color: Colors.orange,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 35, 15, 10),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          contentPadding:
                              EdgeInsets.only(left: 15.0, top: 15.0),
                          hintText: 'What is on your mind?',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0,
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'LOSE YOUR HUNGER',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'TODAY',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                    ),
                    height: 125,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FoodCard(
                          food_image: "kha_moo.jpg",
                          food_name: "Khao Khamo",
                          food_description: "with gravy sauce",
                          name: "Sean Bean",
                          writer_image: "sean_bean.jpg",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FoodCard(
                          food_image: "pad_thai.jpg",
                          food_name: "Pad Thai",
                          food_description: "match your taste",
                          name: "Tom Hank",
                          writer_image: "tom_hank.jpg",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FoodCard(
                          food_image: "mun_kai.jpg",
                          food_name: "Khao Mun Kai",
                          food_description: "with soup",
                          name: "Matt Demon",
                          writer_image: "mat_demon.jpg",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              '16 JULY 2021',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.grey),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'FOODS',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  height: 275.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/breakfast.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              NewRecipes()
              //TODO make another component
            ],
          ),
        ],
      ),
    );
  }
}
