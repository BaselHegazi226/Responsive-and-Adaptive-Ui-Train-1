import 'package:flutter/material.dart';

import 'custom_drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: CustomDrawerBody(),
    );
  }
}
