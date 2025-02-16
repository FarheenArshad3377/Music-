import 'package:flutter/material.dart';
import 'package:music_app/components/neu_box.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  //Current duration into 
  String formatTime(Duration duration){
    String twoDigitSeconds=duration.inSeconds.remainder(60).toString().padLeft(2,'0');
    String formattedTime="${duration.inMinutes}:${twoDigitSeconds}";
    return formattedTime;
  }

 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).colorScheme.background,
    body: SafeArea(
      child: Consumer<PlaylistProvider>(
        builder: (context, provider, child) {
          final currentIndex = provider.currentSongIndex;
  final playlist = provider.currentSongs; // Use the getter

  if (playlist.isEmpty || currentIndex == null || currentIndex >= playlist.length) {
    return Center(child: Text("No songs available"));
  }

  final currentSong = playlist[currentIndex];

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      Text(
                        "P L A Y L I S T",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    ],
                  ),
                ),
                // Main content of the page
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          // Song Details Box
                          NeuBox(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    currentSong.albumImagePath,
                                    fit: BoxFit.fitHeight,
                                    height: 280,
                                    width: double.infinity,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            currentSong.artistName,
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          Text(currentSong.songName),
                                        ],
                                      ),
                                      Icon(Icons.favorite, color: Colors.redAccent),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          // Music Player Controls
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(formatTime(provider.currentDuration)),
                                    Icon(Icons.shuffle),
                                    Icon(Icons.repeat),
                                    Text(formatTime(provider.totalDuration)),
                                  ],
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                                  ),
                                  child: Slider(
                                    min: 0,
                                    max: provider.totalDuration.inSeconds.toDouble(),
                                    value: provider.currentDuration.inSeconds.toDouble(),
                                    activeColor: Colors.green,
                                    onChanged: (double double) {},
                                    onChangeEnd: (double double){
                                      provider.seek(Duration(seconds:double.toInt()));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          // Music Player Buttons
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: provider.playPreviousSong,
                                  child: NeuBox(
                                    child: Icon(Icons.skip_previous, size: 30),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25),
                              Expanded(
                                flex: 2,
                                child: GestureDetector(
                                  onTap: provider.pauseOrResume,
                                  child: NeuBox(
                                    child: Icon(provider.isPlaying ?Icons.pause: Icons.play_arrow, size: 35),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25),
                              Expanded(
                                child: GestureDetector(
                                  onTap: provider.playNext,
                                  child: NeuBox(
                                    child: Icon(Icons.skip_next, size: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

