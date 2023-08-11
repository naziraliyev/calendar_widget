import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class DioNetwork {
  late Dio dio;

  DioNetwork() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://jsonkeeper.com',
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      contentType: 'application/json; charset=utf-8',
    ));

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
    HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
    ));

  }
}