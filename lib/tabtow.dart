import 'package:flutter/material.dart';

class ContactTab extends StatefulWidget {
  @override
  _ContactTabState createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
      children: [
        Container(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)),
              margin: EdgeInsets.all(10.0),
               elevation: 25.0,
               child:Column(
              children: [
                Image.network(
                  'https://lallahoriye.com/wp-content/uploads/2019/04/Product_Lg_Type.jpg',
                  height:100,
                ),

                SizedBox(
                  height: 3.0,
                ),
                Padding(
                    padding: EdgeInsets.all(5.0),
                  child: Text(
                    '\$50',style: TextStyle(
                      fontSize: 25,color: Colors.deepOrange
                  ),
                  ),
                ),
              ],
    ),

          ),
        )
        ],
      ),

    );
  }
}
