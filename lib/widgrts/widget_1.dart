import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.firstClickIcon,
    required this.iconLight,
    required this.iconDark,
    required this.theme,
  }) : super(key: key);

  final bool firstClickIcon;
  final IconData iconLight;
  final IconData iconDark;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Icon(
     firstClickIcon
        ? iconLight
       : iconDark,
      color: theme.toggleableActiveColor,
    
      size: 30,
    );
  }
}