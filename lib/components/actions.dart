import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomActions extends StatefulWidget {
  const BottomActions({Key? key}) : super(key: key);

  @override
  State<BottomActions> createState() => _BottomActions();
}

class _BottomActions extends State<BottomActions> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              setState(() {
                liked = !liked;
              });
              print("User ${liked ? "liked" : "unliked"} this product");
            },
            child: Icon(
              liked ? CupertinoIcons.heart_solid : CupertinoIcons.heart,
              color: Colors.redAccent,
              size: 38,
            )),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xff122636),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 21.0, horizontal: 50),
              child: Text(
                "Add to cart",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        )
      ],
    );
  }
}
