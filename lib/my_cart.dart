import 'package:flutter/material.dart';
import 'mr_cheezy.dart';
import 'cards.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<String> cartProgress = ['My Order', 'Details', 'Payment'];
  // for(var i=0;i<cartProgress.length;i++);
  final int _currentProgress = 0;
  bool isProgress1 = false;
  bool isProgress2 = false;
  double myCheezy = 1.5;
  double mainPrice = 0.0;

  MenuItem cheezy = MenuItem(name: 'Mr. Cheezy', unitPrice: 2.2);
  MenuItem fries = MenuItem(name: 'Fries M', unitPrice: 2.54);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: screenHeight * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Cart',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(61, 64, 91, 1),
                      ),
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
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.05,
                    left: screenWidth * 0.03,
                    right: screenWidth * 0.03,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartProgress[0],
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(61, 64, 91, 1),
                        ),
                      ),
                      Text(
                        cartProgress[1],
                        style: TextStyle(
                          fontSize: 10,
                          color:
                              isProgress1
                                  ? Color.fromRGBO(61, 64, 91, 1)
                                  : Color.fromRGBO(61, 64, 91, 0.317),
                        ),
                      ),
                      Text(
                        cartProgress[2],
                        style: TextStyle(
                          fontSize: 10,
                          color:
                              isProgress2
                                  ? Color.fromRGBO(61, 64, 91, 1)
                                  : Color.fromRGBO(61, 64, 91, 0.317),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: screenHeight * 0.05,
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                  ),

                  child: Row(
                    children: [
                      // for(var i=0; i<cartProgress.length ; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isProgress1 = false;
                            isProgress2 = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            color: Color.fromRGBO(242, 132, 130, 1),
                          ),
                          child: Text(
                            '${_currentProgress + 1}',
                            style: TextStyle(
                              color: Color.fromRGBO(247, 237, 226, 1),
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          width: 15,
                          color:
                              isProgress1
                                  ? Color.fromRGBO(242, 132, 130, 1)
                                  : Color.fromRGBO(242, 132, 130, 0.307),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isProgress1 = true;
                            isProgress2 = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            color:
                                isProgress1
                                    ? Color.fromRGBO(242, 132, 130, 1)
                                    : Color.fromRGBO(242, 132, 130, 0.307),
                          ),
                          child: Text(
                            '${_currentProgress + 2}',
                            style: TextStyle(
                              color: Color.fromRGBO(247, 237, 226, 1),
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          width: 15,
                          color:
                              isProgress2
                                  ? Color.fromRGBO(242, 132, 130, 1)
                                  : Color.fromRGBO(242, 132, 130, 0.307),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isProgress1 == false) {
                              isProgress2 = false;
                            } else {
                              isProgress2 = true;
                            }
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            color:
                                isProgress2
                                    ? Color.fromRGBO(242, 132, 130, 1)
                                    : Color.fromRGBO(242, 132, 130, 0.307),
                          ),
                          child: Text(
                            '${_currentProgress + 3}',
                            style: TextStyle(
                              color: Color.fromRGBO(247, 237, 226, 1),
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(61, 64, 91, 1),
                        ),
                      ),
                      Text(
                        'Clear all',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(242, 132, 130, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                MenuItemTile(
                  item: cheezy,
                  imagePath: 'images/burger.png',
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  onIncrement: () {
                    setState(() {
                      cheezy.quantity < 5
                          ? cheezy.quantity++
                          : cheezy.quantity = 1;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      if (cheezy.quantity > 1) cheezy.quantity--;
                    });
                  },
                ),
                MenuItemTile(
                  item: fries,
                  imagePath: 'images/chips.png',
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  onIncrement: () {
                    setState(() {
                      fries.quantity < 5
                          ? fries.quantity++
                          : fries.quantity = 1;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      if (fries.quantity > 1) fries.quantity--;
                    });
                  },
                ),
                // Container(
                //   alignment: Alignment.center,
                //   margin: EdgeInsets.only(top: screenHeight * 0.04),
                //   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                //   height: screenHeight * 0.12,
                //   width: screenWidth * 0.9,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(24),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Color.fromRGBO(247, 237, 226, 1),
                //         spreadRadius: 10,
                //         blurRadius: 5,
                //       ),
                //     ],
                //   ),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Image.asset(
                //         'images/burger.png',
                //         // width: screenWidth * 0.15,
                //         // height: screenHeight * 0.2,
                //         scale: 3,
                //       ),
                //       Padding(
                //         padding: EdgeInsets.only(
                //           left: screenWidth * 0.04,
                //           right: screenWidth * 0.09,
                //         ),

                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               cheezy.name,
                //               style: TextStyle(
                //                 fontSize: 12,
                //                 color: Color.fromRGBO(61, 64, 91, 1),
                //               ),
                //             ),
                //             Text(
                //               '\$${cheezy.totalPrice.toStringAsFixed(2)}',
                //               style: TextStyle(
                //                 color: Color.fromRGBO(242, 132, 130, 1),
                //                 fontSize: 10,
                //                 fontWeight: FontWeight.w300,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           GestureDetector(
                //             onTap: () {
                //               setState(() {
                //                 if (cheezy.quantity > 1) cheezy.quantity--;
                //                 totPrice = cheezy.unitPrice * cheezy.quantity;
                //               });
                //             },

                //             child: Container(
                //               padding: EdgeInsets.all(2),
                //               decoration: BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 color: Color.fromRGBO(194, 191, 172, 0.207),
                //               ),
                //               child: Icon(
                //                 Icons.remove,
                //                 size: screenWidth * 0.05,
                //                 color: Color.fromRGBO(242, 132, 130, 1),
                //               ),
                //             ),
                //           ),

                //           SizedBox(width: screenWidth * 0.05),
                //           Text(
                //             cheezy.quantity.toString(),
                //             style: TextStyle(
                //               fontSize: 13,
                //               fontWeight: FontWeight.w300,
                //             ),
                //           ),
                //           SizedBox(width: screenWidth * 0.05),

                //           GestureDetector(
                //             onTap: () {
                //               setState(() {
                //                 if (cheezy.quantity < 5) {
                //                   cheezy.quantity++;
                //                 } else {
                //                   cheezy.quantity = 1;
                //                 }
                //                 // cheezy.tot = cheezy.unitPrice * cheezy.quantity;
                //               });
                //             },
                //             child: Container(
                //               padding: EdgeInsets.all(2),
                //               decoration: BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 color: Color.fromRGBO(242, 132, 130, 1),
                //               ),
                //               child: Icon(
                //                 Icons.add,
                //                 size: screenWidth * 0.05,
                //                 color: Color.fromRGBO(255, 255, 255, 1),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
