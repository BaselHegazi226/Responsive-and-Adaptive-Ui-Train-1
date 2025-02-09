import 'package:flutter/material.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/custom_sliver_grid.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/custom_sliver_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu_outlined,
            color: Colors.black,
            size: 32,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            right: 8,
            left: 8,
            top: 16,
            bottom: 8,
          ),
          child: CustomScrollView(
            slivers: [
              CustomSliverGrid(),
              CustomSliverList(),
            ],
          ),
        ),
      ),
    );
  }
}
