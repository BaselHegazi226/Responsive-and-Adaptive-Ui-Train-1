import 'package:flutter/material.dart';

import 'custom_sliver_list_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return CustomSliverListItem();
      },
    );
  }
}
