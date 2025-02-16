import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:music_app/models/songs.dart';
import 'package:provider/provider.dart';

class AllSongWidget extends StatelessWidget {
   final List<Song> songs;
  final Function(int) goToSong;

  const AllSongWidget({required this.songs, required this.goToSong, super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) {
        final List<Song> playlist = value.allSongs;

        return Expanded(
          child: ListView.builder(
            itemCount: playlist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final Song song = playlist[index];
              return ListTile(
                title: Text(song.songName,style: TextStyle(fontFamily: "Poppins"),),
                subtitle: Text(song.artistName,style: TextStyle(fontFamily: "Poppins"),),
                leading: Image.asset(song.albumImagePath),
                onTap: () => goToSong(index),  // navigate to song page
              );
            },
          ),
        );
      });
  }
}

