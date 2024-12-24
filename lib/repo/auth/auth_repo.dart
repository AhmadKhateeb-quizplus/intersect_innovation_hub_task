// import 'package:get_it/get_it.dart';
// import 'package:qudrat/net/gateway/model/otp_validity.dart';
// import 'package:qudrat/net/user_management/model/user_edit_account_details.dart';
//
// import '../../net/user_management/model/user.dart';
// import '../../net/user_management/model/user_auth_phone_details.dart';
// import '../../net/user_management/model/user_sign_up_request.dart';
//
// abstract class AuthRepo {
//   static AuthRepo get getInstance => GetIt.instance<AuthRepo>();
//   User? _currentUser;
//
//   User? get currentUser => _currentUser;
//   int get currentTopicId => _currentUser?.topicId??1;
//   Future<bool> isSignedIn();
//
//   Future<User?> getCurrentUser({bool forceRefresh = false});
//
//   Future<String> refreshAccessToken({
//     bool forceRefresh = false,
//   });
//
//   Future signUp({required UserSignUpRequest userData});
//
//   Future verifyPhone({required UserAuthPhoneDetails userAuthPhoneDetails});
//
//   Future resendOtpCode({required UserAuthPhoneDetails userAuthPhoneDetails});
//
//   Future<User?> login({required UserAuthPhoneDetails userAuthPhoneDetails});
//
//   Future signOut();
//
//   Future deleteAccount();
//   Future editAccount({required int topicId,required UserEditAccountData userEditAccountData});
//
//   Future<OtpValidity> getOtpValidity(
//       {required String countryCode,
//         required String prefix,
//         required String number});
// }
