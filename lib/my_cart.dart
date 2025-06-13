import 'package:flutter/material.dart';
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
  bool isCartClear = false;

  MenuItem cheezy = MenuItem(name: 'Mr. Cheezy', unitPrice: 1.29);
  MenuItem fries = MenuItem(name: 'Fries M', unitPrice: 2.15);
  MenuItem icecream = MenuItem(name: 'Vanilla Ice', unitPrice: 1.54);
  MenuItem drink = MenuItem(name: 'Americano', unitPrice: 0.21);
  MenuItem chedder = MenuItem(name: 'Chedder', unitPrice: 0.79);
  MenuItem bacon = MenuItem(name: 'Bacon', unitPrice: 0.59);
  MenuItem onion = MenuItem(name: 'Onion', unitPrice: 0.29);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.02,
                      ),
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
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isCartClear = false;
                              });
                            },
                            child: Text(
                              'Clear all',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(242, 132, 130, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    MenuItemTile(
                      item: cheezy,
                      imagePath: 'images/burger.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      onIncrement: () {
                        setState(() {
                          isCartClear = true;
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
                          isCartClear = true;
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
                    MenuItemTile(
                      item: icecream,
                      imagePath: 'images/icecream.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      onIncrement: () {
                        setState(() {
                          isCartClear = true;
                          icecream.quantity < 5
                              ? icecream.quantity++
                              : icecream.quantity = 1;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (icecream.quantity > 1) icecream.quantity--;
                        });
                      },
                    ),
                    MenuItemTile(
                      item: drink,
                      imagePath: 'images/drink.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      onIncrement: () {
                        setState(() {
                          isCartClear = true;
                          drink.quantity < 10
                              ? drink.quantity++
                              : drink.quantity = 1;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (drink.quantity > 1) drink.quantity--;
                        });
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      "Don't Forget Flavour ☺",
                      style: TextStyle(
                        color: Color.fromRGBO(61, 64, 91, 1),
                        fontSize: 20,
                      ),
                    ),
                    MenuItemTile(
                      item: chedder,
                      imagePath: 'images/cheese.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      onIncrement: () {
                        setState(() {
                          isCartClear = true;
                          chedder.quantity < 10
                              ? chedder.quantity++
                              : chedder.quantity = 1;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (chedder.quantity > 1) chedder.quantity--;
                        });
                      },
                    ),
                    MenuItemTile(
                      item: bacon,
                      imagePath: 'images/lme.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      onIncrement: () {
                        setState(() {
                          isCartClear = true;
                          bacon.quantity < 10
                              ? bacon.quantity++
                              : bacon.quantity = 1;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (bacon.quantity > 1) bacon.quantity--;
                        });
                      },
                    ),
                    MenuItemTile(
                      item: onion,
                      imagePath: 'images/onion.png',
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      onIncrement: () {
                        setState(() {
                          isCartClear = true;
                          onion.quantity < 10
                              ? onion.quantity++
                              : onion.quantity = 1;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (onion.quantity > 1) onion.quantity--;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isCartClear)
            Positioned(
              left: 8,
              right: 8,
              bottom: 25,
              child: Container(
                height: screenHeight * 0.11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 10),
                  color: Color.fromRGBO(242, 132, 130, 1),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(198, 0, 0, 0),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                    'Next Step',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: screenWidth*0.06,),
                  Text(
                    '\$85.18',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
