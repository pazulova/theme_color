// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:theme_color/logic_vatiant_2/theme_cubit.dart';
import 'package:theme_color/logic_vatiant_2/theme_ui.dart';
import 'package:theme_color/constants/theme.dart';
import 'package:theme_color/widgrts/vidget_2.dart';
import 'package:theme_color/widgrts/widget_1.dart';
import 'constants/color.dart';
import 'constants/text.dart';
import 'logic_vatiant_2/theme_state.dart';
// ignore: unused_element


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => ThemeCubit()),
            ],
          child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
           
          return MaterialApp(
             
              theme:  
              // state.theme,
             CustomTheme.lightTheme,
              darkTheme: CustomTheme.darkTheme,
              themeMode: currentTheme.currentTheme,
               home: MyHomePage()
              // ThemeWithCubit (),
            );
          }
          )
          );
        
      
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  

  // bool firstClick = true;
  // bool twoClick = true;
  // bool threeClick = true;
  // bool fourClick = true;
  // int count = 0;
  
   bool firstClickIcon = true;
  IconData iconLight = Icons.radio_button_off;
  IconData iconDark= Icons.radio_button_checked;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeAppBar= Theme.of(context).textTheme.headline2;
    final themeText= Theme.of(context).textTheme.headline1;
    return Scaffold(
      
        appBar: AppBar(
          title: Text('Search',
             style:themeAppBar
          ),
          actions: const [Icon(Icons.search)],
        ),
        body: Container(
          color: theme.backgroundColor,
          child: Column(
            children: [
                 Expanded(
              child: Card(
                  child: InkWell(
                    onTap: onTapMetod,
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu,
                          color: theme.accentColor ,
                          size: 43,
                        ),
                             PaddingWidget(themeText: themeText),
                        IconWidget(firstClickIcon: firstClickIcon,
                         iconLight: iconLight,
                          iconDark: iconDark, 
                          theme: theme),
                      ],
                    ),
                  ),
                ),
              ),
               Expanded(
              child: Card(
                  child: InkWell(
                      onTap: onTapMetod,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: theme.accentColor ,
                          size: 43,
                        ),
                           PaddingWidget(themeText: themeText),
                        IconWidget(firstClickIcon: firstClickIcon,
                         iconLight: iconLight,
                          iconDark: iconDark,
                           theme: theme
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               Expanded(
              child: Card(
                  child: InkWell(
                    onTap: onTapMetod,
                    child: Row(
                      children: [
                        Icon(
                          Icons.visibility,
                          color: theme.accentColor ,
                          size: 43,
                        ),
                     PaddingWidget(themeText: themeText),
                      IconWidget(
                        firstClickIcon: firstClickIcon,
                         iconLight: iconLight,
                          iconDark: iconDark, 
                          theme: theme),
                       
                      ],
                    ),
                  ),
                ),
              ),
               Expanded(
              child: Card(
                  child: InkWell(
                    onTap: onTapMetod,
                    child: Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: theme.accentColor ,
                          size: 43,
                        ),
                           PaddingWidget(themeText: themeText),
                        IconWidget(firstClickIcon: firstClickIcon,
                         iconLight: iconLight,
                          iconDark: iconDark, 
                          theme: theme),
                      ],
                    ),
                  ),
                ),
              ),
          ]),
        ));
  }

  void onTapMetod() {
    setState(() {
      currentTheme.clicTheme();
      firstClickIcon = !firstClickIcon;
       });
       }

  
}

