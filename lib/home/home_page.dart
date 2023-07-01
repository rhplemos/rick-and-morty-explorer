import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia acesso API'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Get.toNamed('/character'),
                child: Text('Characters', style: TextStyle(fontSize: 20),)
            ),
            TextButton(
                onPressed: () {},
                child: Text('Locations', style: TextStyle(fontSize: 20),)
            ),
            TextButton(
                onPressed: () {},
                child: Text('Episodes', style: TextStyle(fontSize: 20),)
            )
          ],
        ),
      ),
    );
  }
}
