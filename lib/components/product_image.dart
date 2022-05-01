import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProductImage extends StatelessWidget {
  const ProductImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image:
          DecorationImage(image: AssetImage('bg.jpg'), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              bottom: 15,
              left: 15,
              child: Text(
                "Swoon Loung \nChair",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                    )),
                width: 120,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Color(0xffF9CB44),
                              size: 19,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "6.5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "250 review",
                          style:
                          TextStyle(color: Colors.grey[200], fontSize: 12),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff122636),
                        borderRadius: BorderRadius.circular(18)),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}