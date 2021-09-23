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
                            hintText: 'Name',
                          ),
                          onChanged: (String name){

                          },
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Number',
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
