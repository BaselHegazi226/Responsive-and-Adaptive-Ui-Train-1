import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        // margin: EdgeInsets.symmetric(
        //   horizontal: 8,
        //   vertical: 8,
        // ),
        // height: size.height * .18,
        // width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}
