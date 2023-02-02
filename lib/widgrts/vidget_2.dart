import 'package:flutter/cupertino.dart';
import 'package:theme_color/constants/text.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({
    Key? key,
    required this.themeText,
  }) : super(key: key);

  final TextStyle? themeText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
       horizontal: 20, vertical: 40
       ),
     child: Text(
     AppText.apptext,
     style:  themeText,
        ),
     );
  }
}

