import 'package:flutter/material.dart';

import 'custom_sliver_grid.dart';
import 'custom_sliver_list.dart';

class MyAppBody extends StatelessWidget {
  const MyAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu_outlined,
          color: Colors.black,
          size: 32,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 8,
          left: 8,
          top: 16,
          bottom: 8,
        ),
        child: CustomScrollView(
          slivers: [
            CustomSliverGrid(),
            CustomSliverList(),
          ],
        ),
      ),
    );
  }
}
