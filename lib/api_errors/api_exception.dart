
class ApiException implements Exception {

  ApiException({
    this.message,
    this.pointer,
    this.error,
    this.status,
    this.code,
    this.statusCode,
  });

  factory ApiException.unknown() => ApiException();

  factory ApiException.handshake() => ApiException(
      error: "HANDSHAKE",
      message:
          "CERTIFICATE_VERIFY_FAILED: unable to get local issuer certificate");

  factory ApiException.unauthorized() =>
      ApiException(
        statusCode: 401,
      );

  factory ApiException.notFound() =>
      ApiException(
        error: "NOT_FOUND",
        statusCode: 404,
      );

  bool get isNotFoundError => error == "NOT_FOUND" && statusCode == 404;


  factory ApiException.fromResponseError(int? statusCode, dynamic error) {
    final message = error['details'];

    final pointer = error['pointer'];

    final status = error['status'];

    final type = error['error'];

    final code = error['code'];

    return ApiException(
      statusCode: statusCode,
      message: message,
      pointer: pointer,
      status: status,
      error: type,
      code: code,
    );
  }

  final String? message;
  final String? pointer;
  final String? error;
  final String? code;
  final int? status;
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException: $message';
  }
}

class NoInternetConnectionException implements Exception {}
