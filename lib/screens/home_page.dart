import "package:flutter/material.dart";


class HomePage extends StatelessWidget {
  int days = 30;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          appBar: AppBar(
            title: Text("Catalog"),
          ),
          body:Center(
          child:Container(
            child:Text('sample $days message')
          ),
        ),
        drawer:Drawer(),
        
      );
  }
}