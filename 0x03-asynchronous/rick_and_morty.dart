import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final List<dynamic> charactersData = json.decode(response.body)['results'];
      for (final characterData in charactersData) {
        print(characterData['name']);
      }
    } else {
      throw Exception('Failed to load characters');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
