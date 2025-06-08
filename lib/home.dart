import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 12),
                  alignment: Alignment.center,
                  // width: ,
                  height: 88,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), color: Color(0xFFFFFFF2), boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(214, 211, 192, 0.4),
                      blurRadius: 20,
                      spreadRadius: 0,
                      offset: Offset(0, 8),
                    )
                  ], ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60, 
                        height: 60,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset('images/mask.png', fit: BoxFit.fill,),
                      ),   
                      SizedBox(width: 12,),        
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome back, Pin!',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),
                          Text('How Hungry are you?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                          Text('Today !!!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),

                        ],
                      )
                    ],
                  ),
                ),
                TextField(),
              ],
            )
          ],
        ),
      )   
    );
  }
}