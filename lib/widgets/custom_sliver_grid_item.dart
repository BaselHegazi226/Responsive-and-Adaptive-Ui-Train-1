import 'package:flutter/material.dart';

class CustomSliverGridItem extends StatelessWidget {
  const CustomSliverGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      height: size.height * .18,
      width: size.width * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade400,
      ),
    );
  }
}
