abstract class ApiEndpoints {
  // auth
  static const String login = '/user/login';
  static const String loginSessions = '/user/active-session';
  static const String checkEmail = '/user/check-user';
  static const String socialLoginUser = '/user/check';
  static const String checkPhone = '/user/check';
  static const String registerUser = '/user/register';
  static const String forgotPassword = '/user/forgot-password';
  static const String changePassword = '/user/update-password';
  static const String verifyOtp = '/user/verify-code';
  static const String resetPassword = '/user/reset-password';
  static const String tokenRefresh = '/users/refresh-token';
  static const String suspendAccount = '/user/suspend-user';
  static const String createTicket = '/support/create';
  static const String updatePassword = '/user/update-password';

  // Profile Section
  static const String getProfile = '/user/get-profile';
  static const String updateProfile = '/user/update';
  static const String getFaqs = '/faq/get-all';
  static const String updateProfilePhoto = '/user/update-picture';

  // products and order Section
  static const String _confirmPayment = '/order/update';
  static String confirmPayment(String id) => '$_confirmPayment/$id';
}
