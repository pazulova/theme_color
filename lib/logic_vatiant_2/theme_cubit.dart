import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'theme_state.dart';
// part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(theme: ThemeData.light()));

  void toggleTheme() {
    if(state.theme == ThemeData.light(
      
  
      
    )){
      final updateState = ThemeState(theme: ThemeData.dark());
    emit(updateState);
      
    
    }else{
      final updateState = ThemeState(theme: ThemeData.light( ) );
      emit(updateState);
      
      // emit(updateState);
    }
    
  }

  
}
