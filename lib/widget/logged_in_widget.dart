import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoggedInWidget extends StatelessWidget {
  const LoggedInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        centerTitle: true,
        actions: [TextButton(onPressed: () {}, child: const Text('Logout'))],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Profile',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
