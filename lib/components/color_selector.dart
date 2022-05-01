import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({Key? key}) : super(key: key);

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  List<Color> colors = [
    const Color(0xff30353E),
    const Color(0xff173149),
    const Color(0xffFFB900),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Color",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: List.generate(colors.length,
              (index) => ColorCircle(context, colors[index], index)),
        )
      ],
    );
  }

  Widget ColorCircle(BuildContext context, color, index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeIndex = index;
        });
        print("selected color is ${colors[activeIndex]}");
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          child: activeIndex == index
              ? const CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.white,
                )
              : null,
          backgroundColor: color,
          radius: 17,
        ),
      ),
    );
  }
}
