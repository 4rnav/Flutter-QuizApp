// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:quizapp/shared/bottom_nav.dart';
class TopicsScreen extends StatelessWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      
      body: Center(
        child: ElevatedButton(
          child: Text('about'),
          onPressed: () => Navigator.pushNamed(context, '/about'),
        ),
      ),
    );
  }
}