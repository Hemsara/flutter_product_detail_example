import 'package:flutter/cupertino.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;

  const ActionButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF6F6F6), borderRadius: BorderRadius.circular(10)),
      width: 50,
      height: 50,
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}