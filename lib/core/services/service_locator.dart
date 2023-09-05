import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/api/api_consumer.dart';
import 'package:chef_app/core/database/api/dio_consumer.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/data/reposatiry/auth_repository.dart';
import 'package:chef_app/features/auth/peresentation/cubits/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl=GetIt.instance;
void initServiceLocator(){
  //external
  sl.registerLazySingleton(() => CacheHelper());
  //cubits
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => AuthRepository());
  sl.registerLazySingleton(() => LoginCubit(sl()));
}