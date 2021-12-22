import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Biz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard.Item"),
        centerTitle: false,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Mensah Sandra" ,
          style: TextStyle(fontSize: 20.9,
          color: Colors.white,
          fontWeight: FontWeight.w500),),
          Text("Sandramensah243@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text("T: @buildappswithme")
            ],
          )
        ],
      )
    );
  }

 Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular((50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(image: NetworkImage("https:picsum.photos/200/300"),
        fit: BoxFit.cover)
        ),

      );


 }
}

//class ScaffoldExample extends StatelessWidget {...}

//class CustomButton extends StatelessWidget {...}

//class Home extends StatelessWidget {...}
