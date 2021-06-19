import 'package:flutter/material.dart';

class NewRecipes extends StatelessWidget {
  const NewRecipes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:200, left: 30.0),
      child: Column(
        children: <Widget>[
          Text(
            'NEW RECIPIES',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'AT THIS MOMENT',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 3.0,
            width: 150.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
