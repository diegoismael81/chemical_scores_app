import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

class ElementProvider extends GetConnect {
  Future<List<dynamic>> getElements() async {
    var response = await get(dotenv.env["API_URL"].toString(), headers: {
      "X-RapidAPI-Host": dotenv.env["X-RapidAPI-Host"].toString(),
      "X-RapidAPI-Key": dotenv.env["X-RapidAPI-Key"].toString()
    });

    if (response.status.hasError) {
      return Future.error(response.statusText as Object);
    } else {
      return response.body;
    }
  }
}
