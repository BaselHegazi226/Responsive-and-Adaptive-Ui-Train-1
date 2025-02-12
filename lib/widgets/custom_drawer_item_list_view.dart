import 'package:flutter/material.dart';

import 'custom_drawer_item.dart';
import 'custom_drawer_item_model.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({super.key});
  static const List<CustomDrawerItemModel> drawerItemList = [
    CustomDrawerItemModel(
      title: 'D A S H B O R D',
      icon: Icon(Icons.dashboard),
    ),
    CustomDrawerItemModel(
      title: 'S E T T I N G',
      icon: Icon(Icons.settings),
    ),
    CustomDrawerItemModel(
      title: 'A B O U T',
      icon: Icon(Icons.info),
    ),
    CustomDrawerItemModel(
      title: 'L O G O U T',
      icon: Icon(Icons.logout),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerItemModel: drawerItemList[index],
        );
      },
    );
  }
}
