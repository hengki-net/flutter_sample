import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<dynamic> checkLogin(String uid, String upw) async {
    final response = await get('https://m.seahbesteel.co.kr:10443/SMRT000/login?uid=$uid&upw=$upw');

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  // Post request
  //Future<Response> postUser(Map data) => post('http://youapi/users', data);
}
