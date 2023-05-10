import 'package:flutter/material.dart';
import 'package:play_video/provider/video_provider.dart';
import 'package:provider/provider.dart';
import 'package:chewie/chewie.dart';
Videoprovider? pt;
Videoprovider? pf;
class Videoscreen extends StatefulWidget {
  const Videoscreen({Key? key}) : super(key: key);

  @override
  State<Videoscreen> createState() => _VideoscreenState();
}

class _VideoscreenState extends State<Videoscreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<Videoprovider>(context,listen: false).loadvideo();
  }
  @override
  Widget build(BuildContext context) {
    pt=Provider.of<Videoprovider>(context,listen: true);
    pf=Provider.of<Videoprovider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: Chewie(controller: pf!.cheiwecontroller!)),
      ),
    );
  }
}
