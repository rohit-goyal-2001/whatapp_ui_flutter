import 'package:flutter/material.dart';
void main()
{
  runApp(new MyApp());
}
class MyApp extends StatefulWidget{
  MyAppState createState() =>MyAppState();
}
class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  TabController _tabController;
  ScrollController _scrollController;
  void initState(){
    _tabController = new TabController(length: 4, vsync:this);
    _scrollController = new ScrollController();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
            headerSliverBuilder:(BuildContext context,bool innerBoxIsScrolled){
              return<Widget>[
                SliverAppBar(
                  backgroundColor: Color(0xFF075e54),
                  title: Text("WhatsApp"),
                  bottom: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(
                        child: Icon(Icons.photo_camera),

                      ),
                      Tab(
                        text: "CHATS",
                      ),
                      Tab(
                        text: "STATUS",
                      ),
                      Tab(
                        text:"CALLS",
                      ),
                    ],
                  ),
                )
              ];
        },
          body: TabBarView(
            controller: _tabController,
            children: [
              Text("camera"),
              Text("chats"),
              Text("status"),
              Text("calls"),
            ],
          ),

        ),
      ),
    );
  }
}

