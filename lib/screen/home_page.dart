/* /Volumes/lspc/lecture/audioplayers-main/packages/audioplayers/example */

import 'package:flutter/material.dart';

import '../components/card.dart';
import '../widgets/explore_drawer.dart';
import '../widgets/responsive.dart';
import '../widgets/streams.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.grey.shade300.withOpacity(_opacity),
              elevation: 0,
              title: Text(
                'Redhoshi Portfolio',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: ExploreDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(children: [
              Container(
                child: SizedBox(
                  height: screenSize.height * 0.3,
                  width: screenSize.width,
                  child: Image.asset(
                    'assets/images/cover.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: CardPage(
                      txt: 'hi',
                      onPressed: () {},
                    ),
                  ),
                  Column()
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
