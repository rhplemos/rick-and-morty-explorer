import 'dart:convert';

import 'package:rick_and_morty_explorer/models/character_model.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty_explorer/repositories/i_character_repository.dart';

class CharacterRepository implements ICharacterRepository {
  @override
  Future<List<CharacterModel>> findAllCharacters() async {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      print(response.body);
      final Map<String, dynamic> responseMap = jsonDecode(response.body);
      final List<dynamic> responseList = responseMap['results'] as List<dynamic>;
      return responseList.map<CharacterModel>((resp) => CharacterModel.fromMap(resp)).toList();
    } else {
      throw Exception('Falha ao obter os personagens');
    }
  }
}
