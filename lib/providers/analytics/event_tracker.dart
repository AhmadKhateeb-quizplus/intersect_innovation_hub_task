import 'package:get_it/get_it.dart';
import 'package:qudrat/net/user_management/model/user.dart';


abstract class EventTracker {
  static EventTracker get getInstance => GetIt.instance<EventTracker>();

  void sendEvent(String name, [Map<String, Object> params = const {}]);

  void setUserDetails(User? user);

  void stop();

  void deleteUserDetails();

  void sendPurchaseEvent(
      String transactionId, String affiliation, String currency, double value);

  void setSubscriptionInformation(String accountType,String currency, String gateway, String plan, String period);
}
