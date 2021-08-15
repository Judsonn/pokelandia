import 'package:dio/dio.dart';

class CheckinApi {
  static final CheckinApi _checkinApi = CheckinApi._internal();
  CheckinApi._internal();

  factory CheckinApi() {
    return _checkinApi;
  }

  final Dio _dio = Dio(
    BaseOptions(
        baseUrl: 'https://pokeapi.co/api/v2/',
        connectTimeout: 100000,
        receiveTimeout: 100000),
  );

  Future<Response> getPokemon(String email) async {
    try {
      Response response = await _checkinApi._dio.get('/pokemon');
      print('response: ${response.data}');
      return response;
    } catch (e) {
      return null;
    }
  }
}
