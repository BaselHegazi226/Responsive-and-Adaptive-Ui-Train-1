import 'package:flutter/material.dart';

import 'custom_sliver_grid_item.dart';

class MobileCustomGrid extends StatelessWidget {
  const MobileCustomGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return CustomItem();
      },
    );
  }
}

class TabletCustomListView extends StatelessWidget {
  const TabletCustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * .3,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CustomItem();
        },
      ),
    );
  }
}
