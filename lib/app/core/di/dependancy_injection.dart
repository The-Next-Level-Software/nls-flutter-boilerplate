import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/api/auth_interceptor.dart';
import '../../data/api/base_client.dart';
import '../../data/repository/auth_repository_impl.dart';
import '../../domain/providers/shared_prefrence.dart';
import '../../domain/providers/storage_provider.dart';
import '../../domain/providers/storage_service.dart';
import '../../domain/providers/user_provider.dart';
import '../../domain/providers/user_provider_impl.dart';
import '../../domain/repository/auth_repository.dart';

final sl = GetIt.instance;

Future<void> initDependencyInjection() async {
  await _initServices();
  _initApiClient();
  _initRepositories();
}

Future<void> _initServices() async {
  sl.registerSingletonAsync<SharedPreferences>(() async {
    return SharedPreferences.getInstance();
  });

  await sl.isReady<SharedPreferences>();

  sl.registerLazySingleton<StorageService>(() => SharedPrefsStorage(sl()));
  StorageProvider.init(sl<StorageService>());

  sl.registerLazySingleton<UserProvider>(
    () => UserProviderImpl(storageService: sl()),
  );

  sl.registerLazySingleton<AuthInterceptor>(() => AuthInterceptor(sl()));
}

void _initApiClient() {
  sl.registerLazySingleton(() => ApiClient(dio: Dio(), authInterceptor: sl()));
}

void _initRepositories() {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(apiClient: sl(), userProvider: sl()),
  );
}
