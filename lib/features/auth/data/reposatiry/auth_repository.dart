import 'package:chef_app/core/database/api/api_consumer.dart';
import 'package:chef_app/core/database/api/end_points.dart';
import 'package:chef_app/core/error/exception.dart';
import 'package:chef_app/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/services/service_locator.dart';

class AuthRepository {
  Future<Either<String,LoginModel>> login({
    required String email,
    required String password,
  }) async{
    try{final response=await sl<ApiConsumer>().post(EndPoint.chefSignIn, data: {
      
        Apikeys.email: email,
        Apikeys.password: password,
      
    });
    return Right(LoginModel.fromJson(response));
    }
    on ServerException catch(error){
    return  Left(error.errorModel.errorMessage);
    }
   
   
  }
}
