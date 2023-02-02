

  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_color/logic_vatiant_2/theme_cubit.dart';
import 'package:theme_color/widgrts/widget_1.dart';

import '../constants/text.dart';
import '../constants/theme.dart';
import '../widgrts/vidget_2.dart';
import 'theme_state.dart';
class ThemeWithCubit extends StatefulWidget {
  const ThemeWithCubit({super.key});

  @override
  State<ThemeWithCubit> createState() => _ThemeWithCubitState();
}

class _ThemeWithCubitState extends State<ThemeWithCubit> {

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
          title: const Text('Search',
            
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
    final cubit =  context.read<ThemeCubit>();
    cubit.toggleTheme();
     firstClickIcon = !firstClickIcon;
       });
       }

  
}
//         body: 
//            Container(
//             color: theme.backgroundColor,
//             child: Column(
//               children: [
//                  Expanded(
//                 child: Card(
//                     child: InkWell(
//                       onTap: () {
//                       final cubit =  context.read<ThemeCubit>();
//                       cubit.toggleTheme();
//                        firstClickIcon = !firstClickIcon;
//                       },
                     
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.person,
//                             color: theme.accentColor ,
//                           //   ? AppColors.grey
//                           //  : AppColors.green,
//                             size: 43,
//                           ),
//                        const   Padding(
//                             padding:  EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 40),
//                             child: Text(
//                               AppText.apptext,
//                               // style: ,
//                               ),
//                             ),
                          
//                           Icon(
//                           firstClickIcon
//         ? iconLight
//        : iconDark,
//       color: theme.primaryColor,
    
//       size: 30,)
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
              
//                  Expanded(
//                 child: Card(
//                     child: InkWell(
//                       onTap: () {
//                         setState(() {
//                       final cubit =  context.read<ThemeCubit>();
//                       cubit.toggleTheme();
//                         firstClickIcon = !firstClickIcon;
                         
//                         });
//                       },
                     
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.menu,
//                             color: theme.accentColor ,
//                           //   ? AppColors.grey
//                           //  : AppColors.green,
//                             size: 43,
//                           ),
//                          const Padding(
//                             padding:  EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 40),
//                             child: Text(
//                               AppText.apptext,
                            
//                             ),
//                           ),
//                           Icon(
//                            firstClickIcon
//                               ? iconLight
//                              : iconDark,
//                             color: theme.toggleableActiveColor,
                          
//                             size: 30,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                  Expanded(
//                 child: Card(
//                     child: InkWell(
//                       onTap: () {
//                            final cubit =  context.read<ThemeCubit>();
//                       cubit.toggleTheme();
//                         firstClickIcon = !firstClickIcon;
//                       },
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.visibility,
//                             color: theme.accentColor ,
//                           //   ? AppColors.grey
//                           //  : AppColors.green,
//                             size: 43,
//                           ),
//                          const  Padding(
//                             padding:  EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 40),
//                             child: Text(
//                               AppText.apptext,
                           
//                             ),
//                           ),
//                           Icon(
//                            firstClickIcon
//                               ? iconLight
//                              : iconDark,
//                             color: theme.toggleableActiveColor,
                          
//                             size: 30,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                  Expanded(
//                 child: Card(
//                     child: InkWell(
//                       onTap: () {
//                          final cubit =  context.read<ThemeCubit>();
//                       cubit.toggleTheme();
//                         firstClickIcon = !firstClickIcon;
//                       },
                    
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.alarm,
//                             color: theme.accentColor ,
//                           //   ? AppColors.grey
//                           //  : AppColors.green,
//                             size: 43,
//                           ),
//                         const   Padding(
//                             padding:  EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 40),
//                             child: Text(
//                               AppText.apptext,
//                               // style:  themeText,
                                      
//                             ),
//                           ),
//                           Icon(
//                            firstClickIcon
//                               ? iconLight
//                              : iconDark,
//                             color: theme.toggleableActiveColor,
                          
//                             size: 30,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//             ]),
         
        
         
        
//         ));
//   }

// }