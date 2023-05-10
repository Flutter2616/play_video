import'package:flutter/material.dart';
import 'package:play_video/provider/video_provider.dart';
import 'package:play_video/view/home_screen.dart';
import 'package:play_video/view/play_video_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
       return MultiProvider(
         providers: [
           ChangeNotifierProvider(create: (context) => Videoprovider()),
         ],
         child: MaterialApp(
           debugShowCheckedModeBanner: false,
           routes: {
             'play':(context) => Videoscreen(),
             '/':(context) => Homescreen()
           },
         ),
       );
      },
    ),
  );
}