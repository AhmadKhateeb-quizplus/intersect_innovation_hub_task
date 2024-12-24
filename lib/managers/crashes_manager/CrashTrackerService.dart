import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import '../../repo/auth/auth_repo.dart';
import 'CrashTracker.dart';
import 'crashlytics_manager.dart';

class CrashTrackerService extends CrashTracker {
  final FirebaseCrashlytics crashlytics;

  CrashTrackerService(
      this.crashlytics,
  ) {
    allTrackers.add(CrashlyticsManager(crashlytics));
  }

  final List<CrashTracker> allTrackers = [];

  @override
  void logUserDetails(user) {
    for (var tracker in allTrackers) {
      tracker.logUserDetails(user);
    }
  }

  @override
  void logException(exception, stackTrace, {String? reason}) {
    for (var tracker in allTrackers) {
      tracker.logException(exception, stackTrace, reason: reason);
    }
  }
}
