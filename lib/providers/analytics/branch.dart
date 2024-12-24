import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:qudrat/net/user_management/model/user.dart';
import 'package:qudrat/providers/analytics/event_tracker.dart';

class BranchTracker extends EventTracker {
  @override
  void deleteUserDetails() {
    FlutterBranchSdk.setIdentity('');
  }

  @override
  void sendEvent(String name, [Map<String, dynamic> params = const {}]) {}

  @override
  void sendPurchaseEvent(
      String transactionId, String affiliation, String currency, double value) {
    BranchCurrencyType branchCurrencyType = BranchCurrencyType.USD;

    if (currency == 'USD') {
      branchCurrencyType = BranchCurrencyType.USD;
    } else if (currency == 'CAD') {
      branchCurrencyType = BranchCurrencyType.CAD;
    } else if (currency == 'INR') {
      branchCurrencyType = BranchCurrencyType.INR;
    } else if (currency == 'GBP') {
      branchCurrencyType = BranchCurrencyType.GBP;
    }

    BranchEvent event = BranchEvent.standardEvent(BranchStandardEvent.PURCHASE);
    event.transactionID = transactionId;
    event.currency = branchCurrencyType;
    event.revenue = value;
    event.affiliation = affiliation;
    FlutterBranchSdk.trackContentWithoutBuo(branchEvent: event);
  }

  @override
  void setSubscriptionInformation(String accountType, String currency,
      String gateway, String plan, String period) {}

  @override
  void setUserDetails(User? user) {
    if(user != null){
      FlutterBranchSdk.setIdentity(user.id.toString());
    }
  }

  @override
  void stop() {
    FlutterBranchSdk.logout();
  }
}
