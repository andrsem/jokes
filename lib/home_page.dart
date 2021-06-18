import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Jokes lives here',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('get random joke'),
            )
          ],
        ),
      ),
    );
  }
}
