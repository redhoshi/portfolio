/* /Volumes/lspc/lecture/audioplayers-main/packages/audioplayers/example */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port/widgets/education.dart';
import 'package:port/widgets/rainy.dart';

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
                      /*Row(children: [
                        Text("Redhoshi's site"),*/
                      /* Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new SizedBox(
                              height: screenSize.height * 0.4,
                              width: screenSize.width * 0.4,
                              child: Text(
                                "Redhoshi's Site",
                                style: TextStyle(
                                  color: Colors.blueGrey.shade300,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 3,
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "assets/S__41214085.jpg"))),
                            ),
                          ]),*/
                      SizedBox(
                        height: screenSize.height * 0.4,
                        width: screenSize.width * 1,
                        // width: screenSize.width * 0.3,
                        child: Image.asset(
                          'assets/03.png', //assets/S__41214080.jpg
                          fit: BoxFit.cover,
                        ), /*RainyPage()*/
                      ),
                      //]),
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
                            new SizedBox(
                              width: screenSize.width * 0.01,
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
                            new SizedBox(
                              width: screenSize.width * 0.01,
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
                        height: screenSize.height * 0.01,
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.4,
                        width: screenSize.width * 0.7,
                        child: EducationWidget(),
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      new SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book_sharp,
                              size: 30,
                              color: Colors.blueGrey.shade300,
                            ),
                            new SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            Text(
                              'Publication',
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
                        height: screenSize.height * 0.04,
                      ),
                      new SizedBox(
                        // height: screenSize.height * 0.3,
                        width: screenSize.width * 0.7,
                        child: Column(
                          children: [
                            Text(
                                "Consideration on the Difficulty of Timbre Identification of Musical Instrument Sounds for Hearing Training of the Hearing Impaired, Shiho Akaki, Daichi Moriyama, Kenta Wakasa, Rumi Hiraga, Keiichi Yasu, Keiji Tabuchi, and Hiroko Terasawa. 2021.  non peer review"),
                            Divider(),
                            Text(
                                "聴覚障害者の楽器音認知に関する検討-楽器分類に着目して- , 赤木志帆, 森山大地, 若狭健太, 平賀瑠美, 安啓一, 田渕経司, 寺澤洋子, 情報処理学会アクセシビリティ研究会(AAC), 査読なし, 2022"),
                            Divider(),
                            Text(
                                'Design and Evaluation of Instrument Sound Identification Difficulty for the Deaf and Hard-of Hearing, Shiho Akaki, Rumi Hiraga, Keiichi Yasu, Keiji Tabuchi and Hiroko Terasawa, APSIPA, peer review, 2022'),
                          ],
                        ),
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.06,
                      ),
                      new SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.contacts_rounded,
                              size: 30,
                              color: Colors.blueGrey.shade300,
                            ),
                            new SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            Text(
                              'Contact',
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
                        height: screenSize.height * 0.04,
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.2,
                        width: screenSize.width * 0.7,
                        child: Column(
                          children: [
                            Row(children: [
                              Text("Email : "),
                              Text("akaki.shiho@gmail.com"),
                            ]),
                            new SizedBox(
                              height: screenSize.height * 0.02,
                            ),
                            /**twitter insta icon */
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.grey
                                            .shade300, //Colors.blueGrey.shade300, //枠線の色
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: FaIcon(FontAwesomeIcons.github,
                                        color: Colors.white),
                                    backgroundColor: Colors
                                        .blueGrey.shade300, //.grey.shade300,
                                  ),
                                  FloatingActionButton(
                                    elevation: 0,
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.grey
                                            .shade300, //Colors.blueGrey.shade300, //枠線の色
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: FaIcon(FontAwesomeIcons.safari,
                                        color: Colors.white),
                                    backgroundColor: Colors
                                        .blueGrey.shade300, //.grey.shade300,
                                  ),
                                  FloatingActionButton(
                                    elevation: 0,

                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.grey
                                            .shade300, //Colors.blueGrey.shade300, //枠線の色
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: FaIcon(FontAwesomeIcons.twitter,
                                        color: Colors.white),
                                    /*Icon(
                                      Icons.add,
                                    ),*/
                                    backgroundColor: Colors
                                        .blueGrey.shade300, //.grey.shade300,
                                  ),
                                ]),
                          ],
                        ),
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
