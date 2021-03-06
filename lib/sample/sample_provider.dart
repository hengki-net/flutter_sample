import 'package:get/get.dart';

class SampleProvider extends GetConnect {
  // Get request
  Future<dynamic> getSample() async {
    //final response = await get('https://m.seahbesteel.co.kr:10443/SMRT000/login?uid=gotohome&upw=qwer');
    final response = await get(
        'https://json-generator.com/api/json/get/cfrJFXLTAO?indent=2');

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  // Post request
  //Future<Response> postUser(Map data) => post('http://', data);
}
