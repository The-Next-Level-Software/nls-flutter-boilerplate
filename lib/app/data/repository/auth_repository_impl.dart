// ignore_for_file: unused_field

import 'package:fpdart/fpdart.dart';

import '../../domain/errors/failure.dart';
import '../../domain/providers/user_provider.dart';
import '../../domain/repository/auth_repository.dart';
import '../api/base_client.dart';
import '../requests/login_params.dart';
import '../requests/register_params.dart';
import '../requests/reset_password_params.dart';
import '../requests/update_password_params.dart';
import '../requests/verify_code_params.dart';
import '../response/empty_api_response.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient _apiClient;
  final UserProvider _userProvider;

  AuthRepositoryImpl({
    required ApiClient apiClient,
    required UserProvider userProvider,
  }) : _apiClient = apiClient,
       _userProvider = userProvider;

  @override
  Future<Either<Failure, EmptyApiResponse>> checkUser(LoginParams params) {
    // TODO: implement checkUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> forgetPassword(String email) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> guestUser({required String uuId}) {
    // TODO: implement guestUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> login(LoginParams params) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> registerUser(
    RegisterParams params,
  ) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> resetPassword(
    ResetPasswordParams params,
  ) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> socialLoginUser({
    Map<String, dynamic>? body,
  }) {
    // TODO: implement socialLoginUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> updatePassword(
    UpdatePasswordParams params,
  ) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmptyApiResponse>> verIfyEmailOtp(
    VerifyCodeParams params,
  ) {
    // TODO: implement verIfyEmailOtp
    throw UnimplementedError();
  }
}
