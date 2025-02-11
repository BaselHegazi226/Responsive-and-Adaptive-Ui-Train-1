import 'package:flutter/material.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/custom_sliver_grid.dart';

import 'custom_sliver_list.dart';

//2 tablet layout ( list view , sliver list, appbar (open drawer through it))
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TabletCustomListView(),
        ),
        CustomSliverList(),
      ],
    );
  }
}
