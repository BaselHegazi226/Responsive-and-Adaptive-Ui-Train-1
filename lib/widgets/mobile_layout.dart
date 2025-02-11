import 'package:flutter/material.dart';

import 'custom_sliver_grid.dart';
import 'custom_sliver_list.dart';

//1 mobile layout ( sliver grid , sliver list , appbar (open drawer through it))
class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MobileCustomGrid(),
        CustomSliverList(),
      ],
    );
  }
}
