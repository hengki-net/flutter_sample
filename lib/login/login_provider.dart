import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  // Get request
  Future<Response> checkLogin(String uid, String upw) =>
      get('https://m.seahbesteel.co.kr:10443/SMRT000/login?uid=$uid&upw=$upw');

  // Post request
  Future<Response> postUser(Map data) => post('http://youapi/users', data);
}
