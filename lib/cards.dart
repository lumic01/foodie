import 'package:flutter/material.dart';

Widget promoCard({
  required String title,
  required String subtitle,
  required String imagePath,
  required Color backgroundColor,
  Color blurColor = Colors.white,
  required BuildContext context,
}) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  return SizedBox(
    width: screenWidth * 0.86,
    height: 140,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: screenWidth * 0.95,
          height: 128,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: blurColor,
                blurRadius: 8,
                spreadRadius: 0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(right: 6, top: -25, child: Image.asset(imagePath, scale: 2)),
      ],
    ),
  );
}

Widget categoryCard({
  required String catName,
  required Color catbkgroundColor,
  required String catImage,
  required double catScale,
}) {
  return ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(28),
    child: Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          height: 128,
          width: 104,
          decoration: BoxDecoration(
            color: catbkgroundColor,
            // color: Color.fromRGBO(255, 239, 146, 1),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Text(
            catName,
            style: TextStyle(
              color: Color.fromRGBO(61, 64, 91, 1),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Positioned(
          bottom: -15,
          right: -9,
          child: Image.asset(catImage, scale: catScale),
        ),
      ],
    ),
  );
}

Widget ingredentCard({
  required String ingImg,
  required String ingTitle,
  required String ingPrice,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),

    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 242, 1),
      borderRadius: BorderRadius.circular(28),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(214, 211, 192, 0.200),
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ],
    ),
    child: Column(
      children: [
        Image.asset(ingImg, height: 100, width: 92),
        SizedBox(height: 2),
        Text(ingTitle, style: TextStyle(fontSize: 11)),
        Text(ingPrice, style: TextStyle(fontSize: 11)),
      ],
    ),
  );
}
