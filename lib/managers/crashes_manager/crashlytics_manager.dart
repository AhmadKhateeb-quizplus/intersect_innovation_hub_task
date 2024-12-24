import 'dart:io';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'CrashTracker.dart';

class CrashlyticsManager extends CrashTracker{
  final FirebaseCrashlytics crashlytics;

  CrashlyticsManager(this.crashlytics);

  @override
  void logUserDetails(user) async {
    if (user == null) {
      return;
    }

    crashlytics.setUserIdentifier(user.id.toString());
    crashlytics.setCustomKey("user_id", user.id.toString());
    crashlytics.setCustomKey("first_name", user.firstName ?? '');
    crashlytics.setCustomKey("last_name", user.lastName ?? '');
    crashlytics.setCustomKey("account", user.userAuthPhoneDetails!.first.number ?? '');
    crashlytics.setCustomKey("is_fresh_user", user.isFreshUser);
    crashlytics.setCustomKey("locale", Platform.localeName);
  }

  @override
  void logException(dynamic exception, dynamic stackTrace, {String? reason}) {
    crashlytics.recordError(exception, stackTrace, reason: reason);
  }
}
