import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars",style: TextStyle(color: Colors.deepOrange,fontSize: 25),),
        //brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.notifications_none,color: Colors.deepOrange,), onPressed: () {  },),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.deepOrange,), onPressed: () {  },),

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //kate
            Container(
              height: 50,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  singleTab(true,"All"),
                  singleTab(false,"red"),
                  singleTab(false,"blue"),
                  singleTab(false,"green"),
                  singleTab(false,"yellow ")


                ],

              ),
            ),

            SizedBox(height: 20,),

            //rasm
            make("assets/images/image_1.png"),
            make("assets/images/image_2.png"),
            make("assets/images/image_3.png")
          ],
        ),
      ) ,
      ),
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(
        aspectRatio: 2.2/1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: type? Colors.deepOrange:Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(text,style: TextStyle( fontSize: type? 24:22),),
      ),
    ),
    );
  }
  Widget make(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: Offset(0,10),
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween  ,

          children: [
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PDP Car",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("Electric",style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),)
                  ],
                ), ),
                Text("100\$",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)



              ],
            ),
            Expanded(

              child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange
              ),
              child: Center(
                child: Icon(Icons.favorite_border,size: 20,color: Colors.white,),
              ),
            ),)

          ],
        ),

      ),
    );
  }






}




















