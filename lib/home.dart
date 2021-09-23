import 'package:flutter/material.dart';
import 'package:grid_view/TabOnee.dart' as tabone;
import 'package:grid_view/Tabtow.dart' as tabtow;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
  void initState(){
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Grid view test App',style: TextStyle(
        color: Colors.white
        ),
        ),
        backgroundColor: Colors.blue[900],
        bottom: TabBar(
          indicatorColor: Colors.red,
          indicatorWeight: 5.0,
          controller: controller,
          tabs:const [
            Tab(
              icon: Icon(Icons.face),text: 'contact',
            ),
            Tab(
              icon: Icon(Icons.image),text: 'image',
            ),
        ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          tabtow.ImageTab(),
          tabone.ContactTab(),
        ],

      ),
    );
  }
}

