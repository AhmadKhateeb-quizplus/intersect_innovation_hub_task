import 'package:get_it/get_it.dart';

abstract class AppRepo {
  static AppRepo get getInstance => GetIt.instance<AppRepo>();

  const AppRepo();

}
