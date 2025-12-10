import 'package:fpdart/fpdart.dart';

import '../../data/requests/login_params.dart';
import '../../data/requests/register_params.dart';
import '../../data/requests/reset_password_params.dart';
import '../../data/requests/update_password_params.dart';
import '../../data/requests/verify_code_params.dart';
import '../../data/response/empty_api_response.dart';
import '../errors/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, EmptyApiResponse>> registerUser(RegisterParams params);
  Future<Either<Failure, EmptyApiResponse>> checkUser(LoginParams params);
  Future<Either<Failure, EmptyApiResponse>> login(LoginParams params);
  Future<Either<Failure, EmptyApiResponse>> updatePassword(
    UpdatePasswordParams params,
  );
  Future<Either<Failure, EmptyApiResponse>> verIfyEmailOtp(
    VerifyCodeParams params,
  );
  Future<Either<Failure, EmptyApiResponse>> resetPassword(
    ResetPasswordParams params,
  );
  Future<Either<Failure, EmptyApiResponse>> forgetPassword(String email);
  Future<Either<Failure, EmptyApiResponse>> socialLoginUser({
    Map<String, dynamic>? body,
  });
  Future<Either<Failure, EmptyApiResponse>> guestUser({required String uuId});
}
