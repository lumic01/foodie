import 'package:flutter/material.dart';
import 'package:foodie/cards.dart';

import 'my_cart.dart';

  String? selectedItemName; // To know which one was tapped
  double selectedItemPrice = 0.0; // To store its price
  int counter = 1; // Starts at 1
  bool showBottomBar = false; // Hide until something is tapped
  double totPrice = 0.0;
  int caloryCount = 0;

class MrCheezy extends StatefulWidget {
  const MrCheezy({super.key});

  @override
  State<MrCheezy> createState() => _MrCheezyState();
}

class _MrCheezyState extends State<MrCheezy> {
  // String? selectedItemName; // To know which one was tapped
  // double selectedItemPrice = 0.0; // To store its price
  // int counter = 1; // Starts at 1
  // bool showBottomBar = false; // Hide until something is tapped
  // double totPrice = 0.0;
  // int caloryCount = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

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
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedItemName = 'Cheese';
                                  selectedItemPrice = 0.79;
                                  caloryCount = 650;
                                  counter = 1;
                                  showBottomBar = true;
                                  totPrice = selectedItemPrice * counter;
                                });
                              },
                              onDoubleTap: () {
                                setState(() {
                                  showBottomBar = false;
                                });
                              },
                              child: ingredentCard(
                                ingImg: 'images/cheese.png',
                                ingTitle: 'Chedder',
                                ingPrice: '+ \$0.79',
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.03),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedItemName = 'Bacon';
                                  selectedItemPrice = 0.59;
                                  caloryCount = 500;
                                  counter = 1;
                                  showBottomBar = true;
                                  totPrice = selectedItemPrice * counter;
                                });
                              },
                              onDoubleTap: () {
                                setState(() {
                                  showBottomBar = false;
                                });
                              },
                              child: ingredentCard(
                                ingImg: 'images/lme.png',
                                ingTitle: 'Bacon',
                                ingPrice: '+ \$0.59',
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.03),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedItemName = 'Onion';
                                  selectedItemPrice = 0.29;
                                  caloryCount = 250;
                                  counter = 1;
                                  showBottomBar = true;
                                  totPrice = selectedItemPrice * counter;
                                });
                              },
                              onDoubleTap: () {
                                setState(() {
                                  showBottomBar = false;
                                });
                              },
                              child: ingredentCard(
                                ingImg: 'images/onion.png',
                                ingTitle: 'Onion',
                                ingPrice: '+ \$0.29',
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.03),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      SizedBox(
                        child:
                            showBottomBar
                                ? Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Nutrition facts',
                                          style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '$caloryCount Cal',
                                          style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              '35 g',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Total Fat (45% DV)',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '43 g',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Total Carbs (16% DV)',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '36 g',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Protein',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                                : Text(
                                  'Please select a Flavour',
                                  style: TextStyle(
                                    color: Color.fromRGBO(242, 132, 130, 1),
                                  ),
                                ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          showBottomBar
              ? Container(
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
                          border: Border.all(
                            color: Color.fromRGBO(242, 132, 130, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter > 1) counter--;
                                  totPrice = selectedItemPrice * counter;
                                });
                              },

                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(194, 191, 172, 0.207),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Color.fromRGBO(242, 132, 130, 1),
                                ),
                              ),
                            ),

                            SizedBox(width: screenWidth * 0.05),
                            Text(counter.toString()),
                            SizedBox(width: screenWidth * 0.05),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter < 5) {
                                    counter++;
                                  } else {
                                    counter = 1;
                                  }
                                  totPrice = selectedItemPrice * counter;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(242, 132, 130, 1),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyCart(),
                          ),
                        );

                        },
                        child: Container(
                          height: screenHeight * 0.1,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(242, 132, 130, 1),
                            border: Border.all(
                              color: Color.fromRGBO(242, 132, 130, 1),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add to Cart',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '\$${totPrice.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              : null,
    );
  }
}
