import 'package:flutter/material.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/custom_drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
  });
  final CustomDrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: drawerItemModel.icon,
    );
  }
}
