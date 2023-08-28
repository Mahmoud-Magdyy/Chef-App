

import 'package:flutter_bloc/flutter_bloc.dart';

import 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());
  bool isArabic=false;
  String langCode='en';
  void changeLang(){
    langCode = isArabic?'en':'ar';
  }
}
