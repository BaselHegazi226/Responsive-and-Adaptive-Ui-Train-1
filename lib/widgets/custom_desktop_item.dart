import 'package:flutter/material.dart';

import 'custom_sliver_grid_item.dart';
import 'custom_sliver_list_item.dart';

class CustomDesktopItem extends StatelessWidget {
  const CustomDesktopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Expanded(
          flex: 2,
          child: CustomItem(),
        ),
        Expanded(
          flex: 1,
          child: CustomSliverListItem(),
        ),
      ],
    );
  }
}
