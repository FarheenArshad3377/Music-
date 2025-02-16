import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:music_app/models/songs.dart';
import 'package:provider/provider.dart';

class Hollywoodwidget extends StatelessWidget {
  final List<Song> songs;
  final Function(int) goToSong;

  const Hollywoodwidget({required this.songs, required this.goToSong, super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) {
        final List<Song> _hollywood = value.hollywood;

        return Expanded(
          child: ListView.builder(
            itemCount: _hollywood.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final Song song = _hollywood[index];
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

