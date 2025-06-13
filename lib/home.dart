import 'package:flutter/material.dart';
import 'package:foodie/mr_cheezy.dart';

import 'cards.dart';

class Home extends StatefulWidget {
  final String userName;
  const Home({super.key, required this.userName});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.only(
                        top: 12,
                        bottom: 12,
                        left: 20,
                        right: 12,
                      ),
                      alignment: Alignment.center,
                      // width: ,
                      height: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(0xFFFFFFF2),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(214, 211, 192, 0.4),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'images/mask.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome, ${widget.userName}!',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(61, 64, 91, 1),
                                ),
                              ),
                              Text(
                                'How Hungry are you?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(61, 64, 91, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(245, 245, 245, 1),
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Color.fromARGB(100, 61, 64, 91),
                              hintText: "Search...",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(100, 61, 64, 91),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 132, 130, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(Icons.tune_sharp, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Today's Menu",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(61, 64, 91, 1),
                      ),
                    ),
                    // SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        height: 190,
                        child: Row(
                          children: [
                            promoCard(
                              context: context,
                              title: 'Free Donut!',
                              subtitle: 'For orders over \$20',
                              imagePath: 'images/donut.png',
                              backgroundColor: const Color.fromRGBO(
                                132,
                                165,
                                157,
                                1,
                              ),
                              blurColor: Color.fromRGBO(129, 178, 154, 0.4),
                            ),
                            SizedBox(width: 5), // spacing between cards
                            promoCard(
                              context: context,
                              title: 'Buy 1 Get 1',
                              subtitle: 'On drinks today',
                              imagePath: 'images/drink.png',
                              backgroundColor: const Color.fromRGBO(
                                246,
                                189,
                                96,
                                1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MrCheezy(),
                                ),
                              );
                            },
                            child: categoryCard(
                              catName: 'Burger',
                              catScale: 2.5,
                              catbkgroundColor: Color.fromRGBO(
                                255,
                                239,
                                146,
                                1,
                              ),
                              catImage: 'images/burger.png',
                            ),
                          ),
                          SizedBox(width: 10),
                          categoryCard(
                            catName: 'Ice Cream',
                            catScale: 2.5,
                            catbkgroundColor: Color.fromRGBO(169, 215, 218, 1),
                            catImage: 'images/icecream.png',
                          ),
                          SizedBox(width: 10),
                          categoryCard(
                            catName: 'Fries',
                            catScale: 3.0,
                            catbkgroundColor: Color.fromRGBO(245, 202, 195, 1),
                            catImage: 'images/chips.png',
                          ),
                          SizedBox(width: 10),
                          categoryCard(
                            catName: 'Drinks',
                            catScale: 3.5,
                            catbkgroundColor: Color.fromRGBO(182, 215, 207, 1),
                            catImage: 'images/soda.png',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Best Offers 💕",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(61, 64, 91, 1),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 116,
                      width: screenWidth * 0.9,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(242, 204, 143, 0.09),
                            blurRadius: 5,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/hotdog.png',
                            height: 55,
                            width: 55,
                          ),
                          SizedBox(width: 25),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Frenchdog',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Tasty&Spicy🌶🌶🌶',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 116,
                      width: screenWidth * 0.9,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(242, 204, 143, 0.09),
                            blurRadius: 5,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/lme.png', height: 55, width: 55),
                          SizedBox(width: 25),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NaijaFrog',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Yummy&Crispy🌶🌶🌶',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
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
          Positioned(
            left: 8,
            right: 8,
            bottom: 25,
            child: Container(
              height: screenHeight * 0.11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 1),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(123, 40, 39, 39),
                    blurRadius: 10,
                    offset: Offset(-3, 5),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/Poi.png'),
                      Text(
                        'Location',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/Home.png'),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Color.fromRGBO(242, 132, 130, 1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('images/Bag.png'), Text('My Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),),],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('images/User.png'), Text('Me',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),),],
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
