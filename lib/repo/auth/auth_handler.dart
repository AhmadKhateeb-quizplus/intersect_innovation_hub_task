//
//
// enum AuthStatus { authorized, unauthorized }
//
// class AuthHandler {
//   const AuthHandler();
//
//   /// On Unauthorized user, clear session and relaunch app.
//   Future onAuthChanged(AuthStatus status) async {
//   }
//
//   Future onUnauthorizedUser() async {
//     return onAuthChanged(AuthStatus.unauthorized);
//   }
// }
