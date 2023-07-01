import 'package:get/get.dart';
import 'package:rick_and_morty_explorer/repositories/i_character_repository.dart';


class CharacterController extends GetxController with StateMixin {
  final ICharacterRepository _characterRepository;

  CharacterController(this._characterRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final response = await _characterRepository.findAllCharacters();
      change(response, status: RxStatus.success());
    } catch(e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar personagens'));
    }
  }
}