import 'package:flutter/material.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({super.key, this.child,  this.title});
  final Widget? child;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return
    SliverAppBar(
      expandedHeight: 200,
      collapsedHeight: 200,
      title: title,
      flexibleSpace: Container(
        child: child,
      ),
    );
  }
}
