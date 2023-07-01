import '../models/character_model.dart';

abstract class ICharacterRepository {

  Future<List<CharacterModel>> findAllCharacters();

}