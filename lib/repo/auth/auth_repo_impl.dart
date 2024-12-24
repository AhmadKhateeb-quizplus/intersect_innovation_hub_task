// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'auth_repo.dart';
// import 'auth_store.dart';
//
// class AuthRepoImpl implements AuthRepo {
//   final UserManagementApiExecutor userManagementApiExecutor;
//   final AuthStore authStore;
//
//
//   /// Current Authenticated User.
//   User? _currentUser;
//
//   @override
//   User? get currentUser => _currentUser;
//
//   @override
//   int get currentTopicId => _currentUser?.topicId ?? 1;
//
//   AuthRepoImpl(
//       this.userManagementApiExecutor, this.authStore, this.qCookieJar) {
//     _refreshCurrentUser();
//   }
//
//   Future _refreshCurrentUser() async {
//     _currentUser = null;
//     try {
//       _currentUser = await getCurrentUser();
//     } catch (e) {
//       safePrint(e);
//       _currentUser = null;
//     }
//   }
//
//   @override
//   Future<bool> isSignedIn() async {
//     return await authStore.getAccessToken() != null;
//   }
//
//   @override
//   Future<User?> getCurrentUser({
//     bool forceRefresh = false,
//     String? quizplusToken,
//   }) async {
//     if (!forceRefresh && _currentUser != null) {
//       return _currentUser;
//     }
//
//     try {
//       _currentUser = await authStore.getUser();
//     } catch (e, s) {
//       if (kDebugMode) {
//         print(s);
//         print(e);
//       }
//     }
//
//     if (forceRefresh || _currentUser == null) {
//       if (await authStore.getAccessToken() != null || quizplusToken != null) {
//         var response = await userManagementApiExecutor.getCurrentUser();
//         await _extractSessionTokens(response);
//         _currentUser = User.fromJson(response.data);
//         await authStore.saveUser(_currentUser!);
//       }
//     }
//
//     return _currentUser;
//   }
//
//   @override
//   Future<String> refreshAccessToken({bool forceRefresh = false}) async {
//     if (!forceRefresh) {
//       final notExpiredAccessToken = await authStore.getAccessToken(
//         nullIfExpired: true,
//       );
//
//       if (notExpiredAccessToken != null) {
//         safePrint("refreshAccessToken: returning local access token");
//         return notExpiredAccessToken;
//       }
//     }
//     try {
//       var response = await userManagementApiExecutor.refreshUserToken().timeout(
//         const Duration(seconds: 10),
//         onTimeout: () {
//           eventBus.fire(RefreshTokenFailedEvent());
//           return '';
//         },
//       );
//       String token = await _extractSessionTokens(response);
//       return token;
//     } catch (e) {
//       eventBus.fire(RefreshTokenFailedEvent());
//       return "";
//     }
//   }
//
//   Future _extractSessionTokens(Response<dynamic> response) async {
//     if (response.headers['set-cookie'] != null) {
//       List<Cookie> cookies = List.from(response.headers['set-cookie']!)
//           .map((e) => Cookie.fromSetCookieValue(e))
//           .toList();
//
//       String token = cookies
//           .firstWhere(
//             (element) => element.name == 'token' && element.domain != null,
//             orElse: () => Cookie("", ""),
//           )
//           .value;
//
//       String refreshToken = cookies
//           .firstWhere(
//             (element) =>
//                 element.name == 'refresh_token' && element.domain != null,
//             orElse: () => Cookie("", ""),
//           )
//           .value;
//
//       if (refreshToken.isNotEmpty) {
//         await authStore.saveRefreshToken(token: refreshToken);
//       }
//
//       if (token.isNotEmpty) {
//         await authStore.saveAccessToken(token: token);
//       }
//       return token;
//     }
//   }
//
//   @override
//   Future signUp({required UserSignUpRequest userData}) async {
//     _currentUser = null;
//     var response = await userManagementApiExecutor.signup(userData: userData);
//     _currentUser = User.fromJson(response.data);
//   }
//
//   @override
//   Future verifyPhone(
//       {required UserAuthPhoneDetails userAuthPhoneDetails}) async {
//     var response = await userManagementApiExecutor.verifyPhone(
//         userAuthPhoneDetails: userAuthPhoneDetails);
//     return handleLoginResponse(response);
//   }
//
//   @override
//   Future resendOtpCode(
//       {required UserAuthPhoneDetails userAuthPhoneDetails}) async {
//     return userManagementApiExecutor.resendOtpCode(
//         userAuthPhoneDetails: userAuthPhoneDetails);
//   }
//
//   @override
//   Future<User?> login(
//       {required UserAuthPhoneDetails userAuthPhoneDetails}) async {
//     var response = await userManagementApiExecutor.login(
//         userAuthPhoneDetails: userAuthPhoneDetails);
//     _currentUser = User.fromJson(response.data);
//     return _currentUser;
//   }
//
//   @override
//   Future signOut() async {
//     try {
//       AppRepo.getInstance.clearCache();
//       AppRepo.getInstance.setIsTheFirstTimeMilestone(true);
//       AppRepo.getInstance.setIsTheFirstTime(true);
//       AppRepo.getInstance.setIsTheFirstTimeFlashcards(true);
//       await userManagementApiExecutor
//           .logout()
//           .timeout(const Duration(seconds: 1));
//     } catch (e) {
//       safePrint(e);
//     }
//
//     await authStore.clear();
//     await qCookieJar.deleteAll();
//     _currentUser = null;
//   }
//
//   @override
//   Future deleteAccount() async {
//     try {
//       AppRepo.getInstance.clearCache();
//       await userManagementApiExecutor
//           .deleteAccount()
//           .timeout(const Duration(seconds: 1));
//     } catch (e) {
//       safePrint(e);
//     }
//
//     await authStore.clear();
//     await qCookieJar.deleteAll();
//     _currentUser = null;
//   }
//
//   @override
//   Future editAccount(
//       {required int topicId,
//       required UserEditAccountData userEditAccountData}) async {
//     var response = await userManagementApiExecutor.editAccount(
//         topicId: topicId, userEditAccountData: userEditAccountData);
//     var editedUser = User.fromJson(response.data);
//     _currentUser = _currentUser!.copyWith(
//       firstName: editedUser.firstName,
//       lastName: editedUser.lastName,
//       userExamInfo: editedUser.userExamInfo
//     );
//     return handleLoginResponse(response);
//   }
//
//   Future<User?> handleLoginResponse(Response<dynamic> response) async {
//     await _extractSessionTokens(response);
//     if (_currentUser != null) {
//       await authStore.saveUser(_currentUser!);
//     }
//
//     return _currentUser;
//   }
//
//   @override
//   Future<OtpValidity> getOtpValidity(
//       {required String countryCode,
//       required String prefix,
//       required String number}) async {
//     var res = await userManagementApiExecutor.getOtpValidity(
//         countryCode: countryCode, prefix: prefix, number: number);
//     return OtpValidity.fromJson(res);
//   }
// }
