import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:qudrat/net/user_management/model/user.dart';
import 'package:qudrat/providers/analytics/event_tracker.dart';


class FirebaseAnalyticsTracker extends EventTracker {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  void sendEvent(String name, [Map<String, Object> params = const {}]) {
    analytics.logEvent(name: name, parameters: params);
  }

  @override
  void setUserDetails(User? user) async {
    if (user != null) {
      String  id;
      id = user.id.toString();
      await analytics.setUserId(id: id);
    }
  }

  @override
  void deleteUserDetails() async {
    await analytics.setUserId(id: "");
  }

  @override
  void sendPurchaseEvent(
      String transactionId, String affiliation, String currency, double value) {
    analytics.logPurchase(
      transactionId: transactionId,
      affiliation: affiliation,
      currency: currency,
      value: value,
    );
  }

  @override
  void stop() {
    // analytics.setAnalyticsCollectionEnabled(false);
  }

  @override
  Future<void> setSubscriptionInformation(String accountType, String currency,
      String gateway, String plan, String period) async {
    await analytics.setUserProperty(name: "accountType", value: accountType);
    await analytics.setUserProperty(name: "currency", value: currency);
    await analytics.setUserProperty(name: "gateway", value: gateway);
    await analytics.setUserProperty(name: "plan", value: plan);
    await analytics.setUserProperty(name: "period", value: period);
  }
}
