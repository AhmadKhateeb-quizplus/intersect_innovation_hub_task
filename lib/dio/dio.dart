import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioFactory {
  /// Use this factory to create dio client.
  static Dio createDio(
    String baseUrl,
      QueuedInterceptorsWrapper headerInterceptor
  ) {
    Dio dio = Dio(BaseOptions(
        contentType: "application/json",
        baseUrl: baseUrl,
        receiveTimeout: const Duration(seconds: 20)));

    dio.interceptors.add(headerInterceptor);

    // if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        compact: false,
        responseHeader: true,
        requestBody: true,
        responseBody: true,
        error: true,
        requestHeader: true,
      ));
    // }
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.maxConnectionsPerHost = 20; // Set the max number of concurrent connections per host
      return client;
    };
    return dio;
  }
}
