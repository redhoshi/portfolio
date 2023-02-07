/* /Volumes/lspc/lecture/audioplayers-main/packages/audioplayers/example */

import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port/widgets/education.dart';
import 'package:port/widgets/rainy.dart';

import '../components/card.dart';
import '../res/color.dart';
import '../res/const.dart';
import '../widgets/explore_drawer.dart';
import '../widgets/responsive.dart';
import '../widgets/top_bar.dart';

class SubPage extends StatefulWidget {
  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
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
                      new SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenSize.width * 0.05),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: BreadCrumb.builder(
                            itemCount: ExampleConst.creation_teach.length,
                            builder: (index) => BreadCrumbItem(
                              content: Text(
                                ExampleConst.creation_teach[index],
                                style: TextStyle(
                                  fontWeight: index < 2
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(4),
                              padding: EdgeInsets.all(4),
                              splashColor: ExampleColors.accent,
                              onTap: index < 1 ? () {} : null,
                              textColor: ExampleColors.primary,
                              disabledTextColor: Colors.grey,
                            ),
                            divider: Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                            ),
                            overflow: ScrollableOverflow(),
                          ),
                        ),
                      ),
                      Divider(),
                      new SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      new SizedBox(
                        height: screenSize.height * 0.4,
                        child: Image.asset(
                          'assets/sheet.png', //assets/S__41214080.jpg
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                            '上記表は私が旧法の免許を取得する際に履修した科目です。情報メディア創成学類(以降創成と呼びます)は中高数学と高校情報の教員免許を取得することができます。ただ教職を取るということは創成卒業に必要な単位に加え、教職取得に必要な単位を取る必要があります。創成を卒業するのに必要な単位数は124.5(H30入学)なので少なくとも124.5+34(教職に関する科目と哲学と日本国憲法)+nという感じです。\n上記単位(教育実習と教育実践演習を除く)を教育実習に行く前つまり3年次までに取得する必要があります。ちなみに私の場合は奇数年開講の授業があり教育実習前までにその科目が取得できなかったので一筆書かされました。なので教育実習前までに取得できなくてもある程度の単位数までは許容される可能性があります。\n教職の単位履修のコツは「集中の科目を選択する・早期履修する」です。教科の指導法や障害児指導法、介護等体験の意義以外は複数開講されるイメージなので、できるだけ集中で取得すると創成の履修が圧迫されなくて良いと思います。また、教職シラバスには科目ごとに標準履修年次が定められていますが、これはほとんど無視して良いと思います。理由としては、そもそも創成は教職を取るカリキュラムになっていないので標準履修年次に創成の専門科目と日程が被ることがよくあります。この問題についてはこちらにまとめたのでご参照ください。 ただし、たまに教科のシラバスを見た時に「標準履修年次を守る・〇〇の科目を履修済みであること・〇年生以上」と記載がある場合がありますので、もし不安だったら担当の先生にメールすることをオススメします。意外と履修可能だったりします。'),
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
