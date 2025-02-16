import 'package:flutter/material.dart';
import 'package:music_app/components/bollywoodWidget.dart';
import 'package:music_app/components/hollywoodWidget.dart';
import 'package:music_app/components/my_drawer.dart';
import 'package:music_app/components/tabBar.dart';
import 'package:music_app/components/trendingWidget.dart';
import 'package:music_app/screes/songpage.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:music_app/models/songs.dart';
import 'package:music_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PlaylistProvider playlistProvider;

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

void goToSong(int songIndex, List<Song> playlist) {
  playlistProvider.setPlaylist(playlist); // Update playlist
  playlistProvider.setCurrentSongIndex(songIndex);

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SongPage(),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Center(
            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 40, // Font size
                                  fontWeight: FontWeight.bold, // Make it bold
                                  fontFamily: "Poppins"
                                ),
                                children: [
                                  TextSpan(
                                    text: 'P',
                                    style: TextStyle(color: Colors.red, fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 'l',
                                    style: TextStyle(color: Colors.orange, fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 'a',
                                    style: TextStyle(color: Colors.yellow, fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 'y',
                                    style: TextStyle(color: Colors.green, fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 'l',
                                    style: TextStyle(color: Colors.blue, fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 'i',
                                    style: TextStyle(color: const Color.fromARGB(255, 85, 3, 70), fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 's',
                                    style: TextStyle(color: Colors.purple, fontFamily: "Poppins"),
                                  ),
                                  TextSpan(
                                    text: 't',
                                    style: TextStyle(color: Colors.cyan, fontFamily: "Poppins"),
                                  ),
                                  
                                ],
                              ),
                            ),
          ),),
        drawer: MyDrawer(),
        body: Consumer<PlaylistProvider>(builder: (context, value, child) {      
          return Column(
            children: [
              TabBar(
                labelStyle: TextStyle(color: Colors.brown,fontFamily: "Poppins",fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.cyan,
      labelPadding: EdgeInsets.zero,
                tabs: [
                 Tab(text:"All"),
                 Tab(text:"trending"),
                 Tab(text:"Bollywood"),
                 Tab(text:"Hollywood"),
              
                ],
                
              ),
              SizedBox(
              height:600,

                child: TabBarView(
  children: [
    AllSongWidget(
      songs: playlistProvider.allSongs,
      goToSong: (index) => goToSong(index, playlistProvider.allSongs),
    ),
    Trendingwidget(
      songs: playlistProvider.trendingSongs,
      goToSong: (index) => goToSong(index, playlistProvider.trendingSongs),
    ),
    Bollywoodwidget(
      songs: playlistProvider.bollywoodSongs,
      goToSong: (index) => goToSong(index, playlistProvider.bollywoodSongs),
    ),
    Hollywoodwidget(
      songs: playlistProvider.hollywoodSongs,
      goToSong: (index) => goToSong(index, playlistProvider.hollywoodSongs),
    ),
  ],
),

              )
            ],
          );
        }),
      ),
    );
  }
}

