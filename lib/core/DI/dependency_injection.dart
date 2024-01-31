import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../Networking/api_service.dart';
import '../Networking/dio_factory.dart';

final getIt = GetIt.instance;

/// we put all our dependency injection in this function
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}