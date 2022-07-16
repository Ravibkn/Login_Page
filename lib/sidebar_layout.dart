// ignore_for_file: prefer_const_constructors

import 'package:first_work/home_page.dart';
import 'package:first_work/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarLayOut extends StatelessWidget {
  const SidebarLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        HomePage(),
        SideBar(),
      ],
    );
  }
}
