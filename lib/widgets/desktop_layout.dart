import 'package:flutter/material.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/custom_drawer.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/tablet_layout.dart';

import 'custom_desktop_item.dart';

//3 desktop layout ( drawer as part of it , tablet layout , additional part (tablet list item , sliver list item) )
class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 2,
          child: TabletLayout(),
        ),
        Expanded(
          child: CustomDesktopItem(),
        ),
      ],
    );
  }
}
