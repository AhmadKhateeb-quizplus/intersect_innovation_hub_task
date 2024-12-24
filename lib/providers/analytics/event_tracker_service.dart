import 'package:qudrat/net/user_management/model/user.dart';
import 'package:qudrat/providers/analytics/branch.dart';
import 'package:qudrat/providers/analytics/event_tracker.dart';
import 'package:qudrat/providers/analytics/firebase_analytics_tracker.dart';
import 'package:qudrat/utils/safe_print.dart';


class EventTrackerService extends EventTracker {
  final List<EventTracker> allTrackers = [
    FirebaseAnalyticsTracker(),
    BranchTracker(),
  ];

  EventTrackerService();

  @override
  void sendEvent(String name, [Map<String, Object> params = const {}]) {
    try {
      for (var tracker in allTrackers) {
        tracker.sendEvent(name, params);
      }
    } catch (e){
      safePrint(e);
    }
  }

  @override
  void setUserDetails(User? user) {
    for (var tracker in allTrackers) {
      tracker.setUserDetails(user);
    }
  }

  @override
  void stop() {
    for (var tracker in allTrackers) {
      tracker.stop();
    }
  }

  @override
  void deleteUserDetails() {
    for (var tracker in allTrackers) {
      tracker.deleteUserDetails();
    }
  }

  @override
  void sendPurchaseEvent(
      String transactionId, String affiliation, String currency, double value) {
    for (var tracker in allTrackers) {
      tracker.sendPurchaseEvent(transactionId, affiliation, currency, value);
    }
  }

  @override
  void setSubscriptionInformation(String accountType, String currency,
      String gateway, String plan, String period) {
    for (var tracker in allTrackers) {
      tracker.setSubscriptionInformation(
          accountType, currency, gateway, plan, period);
    }
  }
}
