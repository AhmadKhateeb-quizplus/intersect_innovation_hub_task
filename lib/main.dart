import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intersect_innovation_hub_task/app/main_app.dart';
import 'package:intersect_innovation_hub_task/dio/dio.dart';
import 'package:intersect_innovation_hub_task/dio/http_client.dart';
import 'package:intersect_innovation_hub_task/dio/interceptor.dart';
import 'package:intersect_innovation_hub_task/firebase_options.dart';
import 'package:intersect_innovation_hub_task/managers/crashes_manager/CrashTrackerService.dart';
import 'package:intersect_innovation_hub_task/managers/internet_listener_manager.dart';
import 'package:intersect_innovation_hub_task/repo/app/app_repo.dart';
import 'package:intersect_innovation_hub_task/repo/app/app_repo_impl.dart';
import 'package:intersect_innovation_hub_task/util/print.dart';
import 'package:intl/intl.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Intl.defaultLocale = 'ar';

    _setupGetIt();

    await _preInit();
    await _setUpFirebase();
    runApp(const MainApp());
  }, (error, stack) async {
    safePrint(error);
    safePrint(stack);
    GetIt.instance<CrashTrackerService>().logException(
      error,
      stack,
      reason: 'error',
    );

  });
}


Future _preInit() async {
  GetIt.instance<AppRepo>();
}

Future _setUpFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: false);
    return true;
  };
}

void _setupGetIt() {
  final getIt = GetIt.instance;



  // Shared Interceptor.
  HeaderInterceptor defaultHeaderInterceptor = HeaderInterceptor(
  );

  DioClient createDefaultDio(String domain) => DioClient(DioFactory.createDio(
    domain,
    defaultHeaderInterceptor,
  ));


  getIt.registerLazySingleton<AppRepo>(
          () => AppRepoImpl());



  getIt.registerLazySingleton<CrashTrackerService>(() => CrashTrackerService(
    FirebaseCrashlytics.instance
  ));

  getIt.registerLazySingleton<InternetListenerManager>(
          () => InternetListenerManager());
}
