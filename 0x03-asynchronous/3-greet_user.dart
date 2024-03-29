import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
    try {
        final userData = await fetchUserData();
        Map<String, dynamic> userMap = json.decode(userData);
        final username = userMap['username'].toString();
        return 'Hello $username';
        } catch (error) {
            return 'error caught: $error';
        }
}

Future<String> loginUser() async {
    try {
        final isUser = await checkCredentials();
        print('There is a user: $isUser');
        if (isUser) {
        return await greetUser();
        } else {
        return 'Wrong credentials';
        }
    } catch (error) {
        return 'error caught: $error';
    }
}

void main() async {
    print(await loginUser());
}
