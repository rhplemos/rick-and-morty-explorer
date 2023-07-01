import 'package:get/get.dart';
import 'package:rick_and_morty_explorer/character/character_controller.dart';
import 'package:rick_and_morty_explorer/character/repository/character_repository.dart';
import 'package:rick_and_morty_explorer/repositories/i_character_repository.dart';

class CharacterBindings implements Bindings {

  @override
  void dependencies() {
    Get.put<ICharacterRepository>(CharacterRepository());
    Get.put(CharacterController(Get.find()));
  }
}