import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_exception.dart';

class ApiErrorsParser {
  static Exception? parse(errors) {
    if (errors == null) {
      return null;
    }

    if (isNoInternetConnection(errors)) {
      return NoInternetConnectionException();
    }
    return _buildApiException(errors);
  }

  static bool isNoInternetConnection(errors) {
    if (errors == null || errors is! DioException) {
      return false;
    }

    final dioError = errors;
    if (dioError.error != null && dioError.error is SocketException) {
      SocketException socketException = dioError.error as SocketException;
      return (socketException.osError?.errorCode == 7);
    }
    return false;
  }

  static ApiException? _buildApiException(errors) {
    if (errors == null) {
      return null;
    }

    try {
      if (errors is DioException) {
        final dioError = errors;

        if (dioError.response != null) {
          final response = dioError.response!;
          if (response.statusCode == 500 && response.data!=null) {
            return ApiException.fromResponseError(response.statusCode, response.data);
          }
          if (response.statusCode == 401 &&
              response.data is String &&
              response.data.isEmpty) {
            return ApiException.unauthorized();
          }

          if (response.statusCode == 401 && response.data['errors'] == null) {
            return ApiException.unauthorized();
          }

          if (response.statusCode == 404 && response.data['error'] != null) {
            return ApiException.notFound();
          }

          final error = response.data['errors'][0];

          return ApiException.fromResponseError(response.statusCode, error);
        } else {
          var error = dioError.error;

          if (error is HandshakeException) {
            return ApiException.handshake();
          }
        }
      } else {
        return ApiException.unknown();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return ApiException.unknown();
    }
    return null;
  }
}
