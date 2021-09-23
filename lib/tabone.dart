import 'package:flutter/material.dart';

class ImageTab extends StatefulWidget {
  @override
  _ImageTabState createState() => _ImageTabState();
}

class _ImageTabState extends State<ImageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
      children:
      List.generate(
          31,
          (index) {
            return Card(
              color: Colors.green,
              elevation: 10.0,
              margin: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
                 child: Container(
                   child: Align(
                     child: Text(
                     '$index',style: TextStyle(
                       fontSize: 40,color: Colors.red
                   ),
                   ),
                   ),
                 ),

            );
          } )
      ),
    );
  }
}
