import 'package:flutter/material.dart';
import 'package:foodie/cards.dart';

class MrCheezy extends StatefulWidget {
  const MrCheezy({super.key});

  @override
  State<MrCheezy> createState() => _MrCheezyState();
}

class _MrCheezyState extends State<MrCheezy> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    int counter = 1;

    return Scaffold(
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: screenHeight * 0.40,
                      width: screenWidth * 1.0,
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.04,
                        left: screenWidth * 0.04,
                        right: screenWidth * 0.04,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 132, 130, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          bottomRight: Radius.circular(28),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mr. Cheezy',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(245, 202, 195, 1),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Icon(
                                Icons.close,
                                color: Color.fromRGBO(242, 132, 130, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: -13,
                      child: Image.asset('images/burger.png'),
                    ),

                    Positioned(
                      left: 15,
                      top: 100,
                      child: Container(
                        height: 43,
                        width: 160,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Color.fromRGBO(247, 237, 226, 1),
                        ),
                        child: Text(
                          'Classic Taste',
                          style: TextStyle(
                            color: Color.fromRGBO(242, 132, 130, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 15,
                      top: 150,
                      child: Container(
                        height: 43,
                        width: 126,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Color.fromRGBO(132, 165, 157, 1),
                        ),
                        child: Text(
                          'Bestseller',
                          style: TextStyle(
                            color: Color.fromRGBO(247, 237, 226, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.05),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add More Flavor 🤩',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ingredentCard(
                              ingImg: 'images/cheese.png',
                              ingTitle: 'Chedder',
                              ingPrice: '+ \$0.79',
                            ),
                            SizedBox(width: screenWidth * 0.03),

                            ingredentCard(
                              ingImg: 'images/lme.png',
                              ingTitle: 'Bacon',
                              ingPrice: '+ \$0.59',
                            ),
                            SizedBox(width: screenWidth * 0.03),

                            ingredentCard(
                              ingImg: 'images/onion.png',
                              ingTitle: 'Onion',
                              ingPrice: '+ \$0.29',
                            ),
                            SizedBox(width: screenWidth * 0.03),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: screenHeight * 0.13,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(194, 191, 172, 0.2),
              blurRadius: 10.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: screenHeight * 0.1,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromRGBO(242, 132, 130, 1)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(194, 191, 172, 0.207),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Color.fromRGBO(242, 132, 130, 1),
                      ),
                    ),

                    SizedBox(width: screenWidth*0.05,),
                    Text(counter.toString()),
                    SizedBox(width: screenWidth*0.05,),

                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(242, 132, 130, 1),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: screenWidth * 0.03),

            Expanded(
              child: Container(
                height: screenHeight * 0.1,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(242, 132, 130, 1),
                  border: Border.all(color: Color.fromRGBO(242, 132, 130, 1)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Add to Cart', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 15),),
                  Text('\$29.15', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1),),)
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
