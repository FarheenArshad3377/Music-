import 'package:flutter/material.dart';
import 'package:music_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox({super.key,required this.child});

  @override
  Widget build(BuildContext context) {

    bool isDark=Provider.of<ThemeProvider>(context).isDark;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color:isDark? Colors.black: Colors.grey.shade500,
            blurRadius: 15,
            offset: Offset(4, 4)
          ),
           BoxShadow(
            color: isDark? Colors.grey.shade800 : Colors.white,
            blurRadius: 15,
            offset: Offset(-4, -4)
          )
        ]
      ),
      padding: EdgeInsets.all(12),
       child: child
    );
  }
}

