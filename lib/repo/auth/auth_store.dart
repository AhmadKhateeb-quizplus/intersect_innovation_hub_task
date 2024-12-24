// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../net/user_management/model/user.dart';
//
// class AuthStore {
//   AuthStore() {
//     sp();
//   }
//
//   static const String refreshToken = "REFRESH_TOKEN";
//   static const String accessToken = "ACCESS_TOKEN";
//   static const String userKey = "USER";
//   String? _refreshToken;
//   DateTime? _lastSavedAccessToken;
//   SharedPreferences? _sp;
//
//   Future<SharedPreferences> sp() async {
//     _sp ??= await SharedPreferences.getInstance();
//     return _sp!;
//   }
//
//   Future<String?> getAccessToken({
//     bool nullIfExpired = false,
//   }) async {
//     if (nullIfExpired &&
//         (_lastSavedAccessToken == null ||
//             _lastSavedAccessToken!.difference(DateTime.now()).inSeconds.abs() >
//                 10)) {
//       return null;
//     }
//     return (await sp()).getString(accessToken);
//   }
//
//   Future saveAccessToken({
//     required String token,
//     bool updateLastSaved = true,
//   }) async {
//     if (updateLastSaved) {
//       _lastSavedAccessToken = DateTime.now();
//     }
//     await (await sp()).setString(accessToken, token);
//   }
//
//   Future<String?> getRefreshToken() async {
//     _refreshToken ??= (await sp()).getString(refreshToken);
//     return _refreshToken;
//   }
//
//   Future saveRefreshToken({required String token}) async {
//     _refreshToken = token;
//     await (await sp()).setString(refreshToken, token);
//   }
//
//   Future saveUser(User user) async {
//     await (await sp()).setString(userKey, jsonEncode(user.toJson()));
//   }
//
//   Future<User?> getUser() async {
//     String? userString = (await sp()).getString(userKey);
//
//     if (userString != null && userString.isNotEmpty) {
//       return User.fromJson(jsonDecode(userString));
//     }
//     return null;
//   }
//
//   Future clear() async {
//     await (await sp()).remove(accessToken);
//     await (await sp()).remove(refreshToken);
//   }
// }
