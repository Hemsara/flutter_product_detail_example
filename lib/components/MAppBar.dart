import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action_button.dart';

class MAppBar extends StatelessWidget {
  const MAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ActionButton(icon: Icons.arrow_back),
        Text(
          "Detail",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        ActionButton(icon: Icons.more_horiz)
      ],
    );
  }
}