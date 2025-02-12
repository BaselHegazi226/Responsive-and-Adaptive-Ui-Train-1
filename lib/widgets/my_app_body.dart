import 'package:flutter/material.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/tablet_layout.dart';

import 'custom_layout_builder.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class MyAppBody extends StatelessWidget {
  const MyAppBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          right: 8,
          left: 8,
          top: 16,
          bottom: 8,
        ),
        child: CustomLayoutBuilder(
          mobileLayout: MobileLayout(),
          tabletLayout: TabletLayout(),
          desktopLayout: DesktopLayout(),
        ));
  }
}
