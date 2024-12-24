import 'package:get_it/get_it.dart';

abstract class CrashTracker {
  static CrashTracker getInstance() => GetIt.instance<CrashTracker>();

  void logUserDetails(user);

  void logException(dynamic exception, dynamic stackTrace, {String? reason});

}