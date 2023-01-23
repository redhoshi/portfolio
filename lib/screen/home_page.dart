/* /Volumes/lspc/lecture/audioplayers-main/packages/audioplayers/example */

import 'package:flutter/material.dart';
import 'package:port/widgets/education.dart';

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
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.3,
                        width: screenSize.width,
                        child: Image.asset(
                          'assets/images/cover.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      new SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.source_rounded,
                              size: 30,
                              color: Colors.blueGrey.shade300,
                            ),
                            Text(
                              'Creation',
                              style: TextStyle(
                                color: Colors.blueGrey.shade300,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        children: <Widget>[
                          new SizedBox(
                            width: 300,
                            height: 300,
                            child: Padding(
                                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                                child: CardPage(
                                  txt: 'hi',
                                  onPressed: () {},
                                )),
                          ),
                          new SizedBox(
                            width: 300,
                            height: 300,
                            child: Padding(
                                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                                child: CardPage(
                                  txt: 'hi',
                                  onPressed: () {},
                                )),
                          ),
                          new SizedBox(
                            width: 300,
                            height: 300,
                            child: Padding(
                                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                                child: CardPage(
                                  txt: 'hi',
                                  onPressed: () {},
                                )),
                          ),
                          new SizedBox(
                            width: 300,
                            height: 300,
                            child: Padding(
                                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                                child: CardPage(
                                  txt: 'hi',
                                  onPressed: () {},
                                )),
                          ),
                        ],
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      new SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.school,
                              size: 30,
                              color: Colors.blueGrey.shade300,
                            ),
                            Text(
                              'Education',
                              style: TextStyle(
                                color: Colors.blueGrey.shade300,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.7,
                        width: screenSize.width * 0.7,
                        child: EducationWidget(),
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      Container(
                        width: screenSize.width * 1,
                        height: screenSize.height * 0.05,
                        child: Column(children: [
                          Text("Copyright @Redhoshi's Site 2023"),
                        ]),
                      ),
                    ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

/** 2項演算子の複数条件:https://qiita.com/smicle/items/7d3b9881834dc0142fb7 */
