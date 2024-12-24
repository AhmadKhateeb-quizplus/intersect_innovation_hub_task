import 'package:dio/dio.dart';
import 'package:intersect_innovation_hub_task/util/print.dart';

class HeaderInterceptor extends QueuedInterceptorsWrapper {
  static String appPackageName = "com.innovation_hub.taskapp/";

  HeaderInterceptor(
  );

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    try {
      safePrint(err);
    } catch (e) {
      safePrint(e);
    }
    return handler.next(err);
  }
}
