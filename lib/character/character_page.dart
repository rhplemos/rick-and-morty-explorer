import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_explorer/character/character_controller.dart';
import 'package:rick_and_morty_explorer/models/character_model.dart';

class CharacterPage extends GetView<CharacterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final CharacterModel item = state[index];
            return ListTile(
              title: Text(item.name),
            );
          },
        );
      }, onError: (error) {
        return Center(child: Text(error ?? ''));
      }),
    );
  }
}
