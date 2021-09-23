import 'package:flutter/cupertino.dart';
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
      floatingActionButton: FloatingActionButton(

          onPressed: () {
          showDialog(context: context,
              builder: (BuildContext context){
            return AlertDialog(
              title: Text('Add Product'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        TextField(
                        decoration: InputDecoration(
                            hintText: 'Image URl',
                        ),
                          onChanged: (String name){

                          },
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Price',
                          ),
                          onChanged: (String contact){
                          },

                        ),
                      ],
                    ),

                  ),

                actions:<Widget>

                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,


                    children: [
                      ElevatedButton(onPressed: (){
                         Navigator.pop(context);
                      },
                          child: Text('Cancel')),

                      ElevatedButton(onPressed: (){

                      },
                          child: Text('Add'))
                    ],
                  ),

                ],
            );
              }

          );
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.blue,

      ) ,
    );
  }
}
