import 'package:flutter/material.dart';
import 'package:play_video/provider/video_provider.dart';
import 'package:play_video/view/play_video_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    pt = Provider.of<Videoprovider>(context, listen: true);
    pf = Provider.of<Videoprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Videoplayer"),backgroundColor: Colors.purple),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'play');
                  pf!.passindex(index);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50.w,height: 30.w,alignment: Alignment.center,child: Icon(Icons.play_circle,color: Colors.purple,size: 30.sp),
                      decoration: BoxDecoration(color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage("${pf!.videolist[index].img}"),
                              fit: BoxFit.cover,opacity: 20)),
                    ),
                    SizedBox(height: 5),
                    Text("${pf!.videolist[index].name}",style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            );
          },
          itemCount: pf!.videolist.length),
    );
  }
}
