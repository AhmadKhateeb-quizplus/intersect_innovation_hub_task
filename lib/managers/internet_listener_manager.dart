import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class InternetListenerManager {
  static InternetListenerManager get getInstance =>
      GetIt.instance<InternetListenerManager>();
  StreamSubscription<InternetStatus>? internetStatusSubscription;
  Stream<InternetStatus> internetStatusStream;
  bool isInternetDisconnected = false;

  InternetListenerManager()
      : internetStatusStream = InternetConnection().onStatusChange {
    init();
  }

  final ValueNotifier<bool> didApiFailed = ValueNotifier(false);

  bool get didApiFailedBool => didApiFailed.value;

  init() {
    _startInternetListener();
  }

  Future<void> _startInternetListener() async {
    isInternetDisconnected = !(await InternetConnection().hasInternetAccess);
    internetStatusSubscription =
        internetStatusStream.listen((InternetStatus status) {
      if (status == InternetStatus.disconnected) {
        isInternetDisconnected = true;
      } else {
        isInternetDisconnected = false;
        didApiFailed.value = false;
      }
    });
  }
}
