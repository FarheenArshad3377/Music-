import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Center(child: Text("S E T T I N G ",style: TextStyle(fontFamily: "Poppins"),)),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12)
        ),
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dark mode",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "popiins"
            ),),
            CupertinoSwitch(
              value: 
              Provider.of<ThemeProvider>(context,listen: false).isDark, 
            onChanged: (value)=> Provider.of<ThemeProvider>(context,listen: false).toggleTheme())
          ],
        ),
      ),
    );
  }
}

