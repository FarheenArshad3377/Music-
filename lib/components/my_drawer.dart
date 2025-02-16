import 'package:flutter/material.dart';
import 'package:music_app/screes/settings.dart';

class MyDrawer extends StatefulWidget{
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/img/profile1 (1).jpeg"))
          )),
          Padding(padding: EdgeInsets.only(left: 25,top: 25),
          child: ListTile(
            title: Text("H O M E",style: TextStyle(fontFamily: "Poppins"),),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ),
           Padding(padding: EdgeInsets.only(left: 25,top: 0),
          child: ListTile(
            title: Text("S E T T I N G",style: TextStyle(fontFamily: "Poppins"),),
            leading: Icon(Icons.settings),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Settings()));

            },
          ),
          )  

        ],
      ),
    );
  }
}

