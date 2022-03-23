import 'package:get/get.dart';

class MenuProvider extends GetConnect {
  // Get request
  Future<dynamic> getMenu(String uid) async {
    final response = await get('https://m.seahbesteel.co.kr:10443/SMRT000/menu?uid=$uid');

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  // Post request
  Future<Response> postUser(Map data) => post('http://youapi/users', data);
}
