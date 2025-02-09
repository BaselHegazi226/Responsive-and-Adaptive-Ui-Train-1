import 'package:flutter/material.dart';

import 'custom_drawer_item_list_view.dart';

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          child: Icon(
            Icons.menu_outlined,
            size: 48,
          ),
        ),
        CustomDrawerItemListView(),
      ],
    );
  }
}
