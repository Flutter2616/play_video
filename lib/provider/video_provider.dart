import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_video/model/video_model.dart';
import 'package:video_player/video_player.dart';

class Videoprovider extends ChangeNotifier {
  VideoPlayerController? videocontroller;
  ChewieController? cheiwecontroller;
  int videoindex = 0;

  List<Videomodel> videolist = [
    Videomodel(
        name: "Doreamon",
        path: "assets/video/doreamon.mp4",
        img:
            "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_2_5x/sources/r1/cms/prod/1481/681481-h"),
    Videomodel(
        name: "Funcho",
        path: "assets/video/funcho.mp4",
        img:
            "https://wp-socialnation-assets.s3.ap-south-1.amazonaws.com/wp-content/uploads/2021/06/11025510/Funcho-1.png"),
    Videomodel(
        name: "story",
        path: "assets/video/story.mp4",
        img:
            "https://i.vimeocdn.com/video/1299313261-9ca0248c1292920c3bd447d96f96719b17201a74cbe6778e9_640"),
    Videomodel(
        name: "thaa song",
        path: "assets/video/song.mp4",
        img:
            "https://i.ytimg.com/vi/q18sBAVMlMs/maxresdefault.jpg"),
    Videomodel(
        name: "Doreamon",
        path: "assets/video/doreamon.mp4",
        img:
        "https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_2_5x/sources/r1/cms/prod/1481/681481-h"),
    Videomodel(
        name: "Funcho",
        path: "assets/video/funcho.mp4",
        img:
        "https://wp-socialnation-assets.s3.ap-south-1.amazonaws.com/wp-content/uploads/2021/06/11025510/Funcho-1.png"),
    Videomodel(
        name: "story",
        path: "assets/video/story.mp4",
        img:
        "https://i.vimeocdn.com/video/1299313261-9ca0248c1292920c3bd447d96f96719b17201a74cbe6778e9_640"),
    Videomodel(
        name: "thaa song",
        path: "assets/video/song.mp4",
        img:
        "https://i.ytimg.com/vi/q18sBAVMlMs/maxresdefault.jpg"),
  ];

  void loadvideo() {
    videocontroller =
        VideoPlayerController.asset("${videolist[videoindex].path}");
    videocontroller!.initialize();

    cheiwecontroller = ChewieController(
        videoPlayerController: videocontroller!,
        autoPlay: true,
        systemOverlaysAfterFullScreen: [SystemUiOverlay.bottom],
        materialProgressColors: ChewieProgressColors(
            backgroundColor: Colors.grey,
            playedColor: Colors.purple,
            handleColor: Colors.white));
  }

  void passindex(int index) {
    videoindex = index;
    notifyListeners();
  }
}
