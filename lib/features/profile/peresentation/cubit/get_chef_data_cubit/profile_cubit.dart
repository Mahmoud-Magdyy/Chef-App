import 'package:chef_app/features/profile/peresentation/cubit/get_chef_data_cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/get_data_profile_model.dart';
import '../../../data/reposatiry/profile_repo.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.getProfileRepo) : super(ProfileInitial());
  final ProfileRepository getProfileRepo;

  GetDataChefModel? getChefModel;
  void getChefData() async {
    emit(GetChefDataLoadingState());
    final result = await getProfileRepo.getChefData();
    result.fold((l) => emit(GetChefDataErrorState()),
        (r) {
          getChefModel=r;
          emit(GetChefDataSuccessState());
        });
  }
}
