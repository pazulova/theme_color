
import 'package:flutter/material.dart';
// @immutable
// abstract class ThemeDataq {
  
// }

// class ThemeInitial extends ThemeDataq {}


class ThemeState {
  final ThemeData theme;
  ThemeState({required this.theme});
}
class ThemedState {
  final ThemeData themed;
  ThemedState({
    required this.themed, required ThemeData theme
    });
}
