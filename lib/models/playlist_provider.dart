import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/models/songs.dart';
class PlaylistProvider extends ChangeNotifier {
  int? _currentIndex;

  final List<Song> _playlist = [
    Song(
      artistName: " Divya Kumar, Madhubanti Bagchi ",
      songName: "Aaj Ki Raat",
      albumImagePath: "assets/img/aj_ki_raat.png",
      audioPath: "audio/song2 (1).mp3",
    ),
    Song(
      artistName: "Bruno Mars",
      songName: "Apt",
      albumImagePath: "assets/img/apt.jpg",
      audioPath: "audio/song2 (2).mp3",
    ),
    Song(
      artistName: "Madhubanti Bagchi",
      songName: "Uyi Amma",
      albumImagePath: "assets/img/ui_amma.png",
      audioPath: "audio/song2 (3).mp3",
    ),
        Song(
      artistName: "Jay Sean",
      songName: "Ride it",
      albumImagePath: "assets/img/ride_it.webp",
      audioPath: "audio/song2 (4).mp3",
    ),
     Song(
      artistName: "Faheem Abdullah, Rauhan Malik",
      songName: "Ishq",
      albumImagePath: "assets/img/ishq.png",
      audioPath: "audio/song3 (1).mp3",
    ),
    Song(
      artistName: "Amarabha Banerjee, Anurag Saikia,",
      songName: "Ishq Hai",
      albumImagePath: "assets/img/ishq_hai.webp",
      audioPath: "audio/song3 (3).mp3",
    ),
         Song(
      artistName: "Rahman, Murtuza Khan,",
      songName: "Tere Bin",
      albumImagePath: "assets/img/b1.webp",
      audioPath: "audio/song3 (1).mp3",
    ),
    Song(
      artistName: " Boy Band,",
      songName: "“The Liar and His Lover",
      albumImagePath: "assets/img/k2.jpg",
      audioPath: "audio/song3 (3).mp3",
    ),     Song(
      artistName: "Park Eun Bin",
      songName: "Do You Like Brahms",
      albumImagePath: "assets/img/t2.webp",
      audioPath: "audio/song3 (1).mp3",
    ),
    Song(
      artistName: "Yo Yo Honey Singh,",
      songName: "Dheere Dheere",
      albumImagePath: "assets/img/b3.webp",
      audioPath: "audio/song3 (3).mp3",
    ),
   
  ];
  final List<Song> treSong = [
    Song(
      artistName: " Divya Kumar, Madhubanti Bagchi ",
      songName: "Aaj Ki Raat",
      albumImagePath: "assets/img/aj_ki_raat.png",
      audioPath: "audio/song2 (1).mp3",
    ),
    Song(
      artistName: "Bruno Mars",
      songName: "Apt",
      albumImagePath: "assets/img/apt.jpg",
      audioPath: "audio/song2 (2).mp3",
    ),
        Song(
      artistName: " Boy Band,",
      songName: "“The Liar and His Lover",
      albumImagePath: "assets/img/k2.jpg",
      audioPath: "audio/song3 (3).mp3",
    ),     Song(
      artistName: "Park Eun Bin",
      songName: "Do You Like Brahms",
      albumImagePath: "assets/img/t2.webp",
      audioPath: "audio/song3 (1).mp3",
    ),
    Song(
      artistName: "Madhubanti Bagchi",
      songName: "Uyi Amma",
      albumImagePath: "assets/img/ui_amma.png",
      audioPath: "audio/song2 (3).mp3",
    ),
    
        Song(
      artistName: "Raffey Anwar",
      songName: "Chal Deye Tum kaha​",
      albumImagePath: "assets/img/t1.webp",
      audioPath: "audio/t1.mp3",
    ),    Song(
      artistName: "Tate Sequoya Farris",
      songName: "Oh baby",
      albumImagePath: "assets/img/baby.png",
      audioPath: "audio/song3 (4).mp3",
    ),
    ];

  final List<Song> hollywood = [
    Song(
      artistName: "Jon Bon Jovi",
      songName: "Bohemian Rhapsody – Queen",
      albumImagePath: "assets/img/h1.jpg",
      audioPath: "audio/hollywood (2).mp3",
    ),
    Song(
      artistName: "Madonna",
      songName: "My Heart Will Go On",
      albumImagePath: "assets/img/h2.jpg",
      audioPath: "audio/hollywood (3).mp3",
    ),
        Song(
      artistName: "Jennifer Lopez",
      songName: "Lose Yourself",
      albumImagePath: "assets/img/h3.jpg",
      audioPath: "audio/hollywood (4).mp3",
    ),    Song(
      artistName: "Chris Brown",
      songName: "Don’t Stop Believin",
      albumImagePath: "assets/img/h4.jpg",
      audioPath: "audio/hollywood (5).mp3",
    ),    Song(
      artistName: "Nicki Minaj",
      songName: "Let It Go",
      albumImagePath: "assets/img/h5.jpg",
      audioPath: "audio/hollywood (6).mp3",
    ),    Song(
      artistName: "Rihanna",
      songName: "Eye of the Tiger",
      albumImagePath: "assets/img/h6.jpg",
      audioPath: "audio/hollywood (7).mp3",
    ),
        Song(
      artistName: "Lady Gaga",
      songName: " Imagine",
      albumImagePath: "assets/img/h7.jpg",
      audioPath: "audio/hollywood (8).mp3",
    ),    Song(
      artistName: "Madhubanti Bagchi",
      songName: " I Will Always Love You",
      albumImagePath: "assets/img/h9.webp",
      audioPath: "audio/hollywood (9).mp3",
    ),
  ];
    final List<Song> bollywood = [
   Song(
      artistName: " Divya Kumar, Madhubanti Bagchi ",
      songName: "Aaj Ki Raat",
      albumImagePath: "assets/img/aj_ki_raat.png",
      audioPath: "audio/song2 (1).mp3",
    ),
    Song(
      artistName: "Madhubanti Bagchi",
      songName: "Uyi Amma",
      albumImagePath: "assets/img/ui_amma.png",
      audioPath: "audio/song2 (3).mp3",
    ),
        Song(
      artistName: "Jay Sean",
      songName: "Ride it",
      albumImagePath: "assets/img/ride_it.webp",
      audioPath: "audio/song2 (4).mp3",
    ),
     Song(
      artistName: "Faheem Abdullah, Rauhan Malik",
      songName: "Ishq",
      albumImagePath: "assets/img/ishq.png",
      audioPath: "audio/song3 (1).mp3",
    ),
    Song(
      artistName: "Amarabha Banerjee, Anurag Saikia,",
      songName: "Ishq Hai",
      albumImagePath: "assets/img/ishq_hai.webp",
      audioPath: "audio/song3 (3).mp3",
    ),
    Song(
      artistName: "Rangilo Maro Dholna",
      songName: "Arbaaz Khan",
      albumImagePath: "assets/img/b2.webp",
      audioPath: "audio/b (3).mp3",
    ),
        Song(
      artistName: "Bhool Bulaya",
      songName: "Uyi Amma",
      albumImagePath: "assets/img/b5.webp",
      audioPath: "audio/b1.mp3",
    ),    Song(
      artistName: "Bikhra",
      songName: "Abdul Hannan",
      albumImagePath: "assets/img/t4.webp",
      audioPath: "audio/b2.mp3",
    ),    Song(
      artistName: "Tere bin",
      songName: "Asees Kaur",
      albumImagePath: "assets/img/b4.webp",
      audioPath: "audio/b3.mp3",
    ),    Song(
      artistName: "Tauba Tauba",
      songName: "Karan Aujla",
      albumImagePath: "assets/img/tauba.png",
      audioPath: "audio/b4.mp3",
    ),
        Song(
      artistName: "jo tum mere ho",
      songName: "Anuv Jain",
      albumImagePath: "assets/img/t3.webp",
      audioPath: "audio/b5.mp3",
    ),    Song(
      artistName: "Dheere Dheere",
      songName: "Yo Yo Honey",
      albumImagePath: "assets/img/b3.webp",
      audioPath: "audio/b6.mp3",
    ),
  ];
//Audioplay

final AudioPlayer _audioPlayer = AudioPlayer();

//durations
Duration _currentDuration = Duration.zero;
Duration _totalDuration = Duration.zero;

//constructor
PlaylistProvider(){
 listenToDuration();
}
//intially not playing
bool _isplaying=false;

//playsong
void play() async {
  if (_currentIndex == null || _currentPlaylist.isEmpty) return;
  
  final String path = _currentPlaylist[_currentIndex!].audioPath;
  await _audioPlayer.stop();
  await _audioPlayer.play(AssetSource(path));
  _isplaying = true;
  notifyListeners();
}
//pause song
void pause()async{
 await _audioPlayer.pause();
 _isplaying=false;
 notifyListeners();
}
//resume Song
void resume()async{
  await _audioPlayer.resume();
  _isplaying=true;
  notifyListeners();
}
//pause or resume
 void pauseOrResume()async{
  if(_isplaying){
    pause();
  }
  else{
    resume();
  }
  notifyListeners();
 }

 // seek to a specific position in the current song
 void seek(Duration position)async{
  await _audioPlayer.seek(position);
 }
//play next
void playNext(){
  if(currentSongIndex != null){
    if(currentSongIndex! < _playlist.length -1){
      currentSongIndex=currentSongIndex! +1;
    }
    else{
      currentSongIndex=0;
    }
  }
}

//play previous song
void playPreviousSong()async{
 if(_currentDuration.inSeconds>2){
  seek(Duration.zero);
 }
 else{
  if(currentSongIndex! > 0){
   currentSongIndex=currentSongIndex! -1;
  }
  else{
    currentSongIndex=_playlist.length-1;
  }
 }
}

void listenToDuration(){
//listen for total duration
_audioPlayer.onDurationChanged.listen((newDuration){
  _totalDuration=newDuration;
  notifyListeners();
  //listen for current
  
});
_audioPlayer.onPositionChanged.listen((newPosition){
  _currentDuration = newPosition;
  notifyListeners();
});

_audioPlayer.onPlayerComplete.listen((event){
  playNext();
});
}
List<Song> get currentSongs => _currentPlaylist;
List<Song> get allSongs => _playlist;
List<Song> get trendingSongs => treSong;
List<Song> get bollywoodSongs => bollywood;
List<Song> get hollywoodSongs => hollywood;
 int? get currentSongIndex => _currentIndex;
bool get isPlaying => _isplaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  set currentSongIndex(int? newIndex) {
    if (_currentIndex != newIndex) {
      _currentIndex = newIndex;
      notifyListeners();
    }
    if(newIndex !=null){
      play();
    }
    notifyListeners();
  }
  List<Song> _currentPlaylist = [];

void setPlaylist(List<Song> playlist) {
  _currentPlaylist = playlist; // Update the playlist dynamically
  _currentIndex = 0; // Reset to the first song
  notifyListeners();
}

  void setCurrentSongIndex(int index) {
    if (_currentIndex != index) {
      currentSongIndex = index;

      notifyListeners(); // Only notify when the state changes
    }
  }
}

