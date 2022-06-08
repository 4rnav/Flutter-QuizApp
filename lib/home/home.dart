// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapp/login/login.dart';
import 'package:quizapp/services/auth.dart';
import 'package:quizapp/topics/topics.dart';

import '../shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('laoding');
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error'),
          );
        }

        else if (snapshot.hasData){
          return const TopicsScreen();
        }
        else {
          return const LoginScreen();
        }
      },
    );
  }
}
