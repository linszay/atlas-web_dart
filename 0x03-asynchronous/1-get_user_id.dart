import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
    final userData = await fetchUserData();
    final userMap = json.decode(userData) as Map<String, dynamic>;
    return userMap['id'] as String;
}
