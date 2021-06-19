import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
  }) : super(key: key);

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
                    'assets/images/balanced.jpg'),
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
                'Grilled Chicken',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
              Text(
                'with Fruit Salad',
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
                            'assets/images/chris.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'James Kaiser',
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
