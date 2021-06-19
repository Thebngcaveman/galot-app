import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  String food_image;
  String food_name;
  String food_description;
  String name;
  String writer_image;
  FoodCard({required this.food_name,required this.name,required this.food_description,required this.food_image,required this.writer_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/$food_image'),
              ),
            ),
            height: 125.0,
            width: 100.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$food_name',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
              Text(
                '$food_description',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(12.5),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/$writer_image'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '$name',
                    style:
                    TextStyle(fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
