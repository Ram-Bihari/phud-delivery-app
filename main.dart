import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yaar_ban_jaa_pls/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'PhudDelivery App',
    theme: ThemeData(scaffoldBackgroundColor: HexColor('#eeeeee')),
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Color hehe = HexColor('#eeeeee');
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final tabs = [
      WholeBody(size: size),
      Profile(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/home-2494088-2087461.png',
                height: 44,
                width: 44,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/profile-328-682849.png',
                height: 44,
                width: 44,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/cart-1956912-1650878.png',
                height: 44,
                width: 44,
              ),
              label: ''),
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}

class WholeBody extends StatelessWidget {
  const WholeBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/menu-3243632-2705325.png',
                height: 40,
                width: 36,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.network(
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/notification-2955835-2454040.png',
                height: 42,
                width: 38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 27),
              child: Text(
                'Welcome back Thandi Chopra,',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 27),
              child: Text(
                'What do u wanna eat huh?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 135.0, left: 27, right: 27),
              child: SafeArea(
                child: Container(
                  // margin: EdgeInsets.only(top: 120, left: 20, right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          3.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for food',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(FontAwesomeIcons.search),
                        suffixIcon: Icon(FontAwesomeIcons.filter),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225.0, left: 30),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            CategoryCARD(
              picSrc:
                  'https://cdn.iconscout.com/icon/premium/png-256-thumb/burger-2604088-2168283.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 145.0),
              child: CategoryCARD(
                picSrc:
                    'https://cdn.iconscout.com/icon/premium/png-256-thumb/noodles-122-723439.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 290.0),
              child: CategoryCARD(
                picSrc:
                    'https://cdn.iconscout.com/icon/premium/png-256-thumb/pizza-2631492-2179556.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 235.0, left: 295),
              child: Text(
                'View all (9)',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 385.0, left: 30),
              child: Text(
                'Nearest',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 385.0, left: 295),
              child: Text(
                'View all (9)',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            Container(
              height: 208,
              width: 164,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Padding(
                padding: const EdgeInsets.only(top: 430.0, left: 27),
                child: Container(
                  height: 208,
                  width: 164,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://cdni.iconscout.com/illustration/premium/thumb/burger-meal-4119387-3425148.png',
                            width: 140,
                            height: 140,
                          ),
                          Text(
                            'Sasta Burger',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            '\$8.69',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Padding(
                padding: const EdgeInsets.only(top: 430.0, left: 220),
                child: Container(
                  height: 208,
                  width: 164,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://cdni.iconscout.com/illustration/premium/thumb/burger-meal-4119387-3425148.png',
                            width: 140,
                            height: 140,
                          ),
                          Text(
                            'Sasta Burger',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            '\$8.69',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    ]);
  }
}

class CategoryCARD extends StatelessWidget {
  final String picSrc;
  const CategoryCARD({
    this.picSrc = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 275.0, left: 27),
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Image.network(
            picSrc,
            width: 48,
            height: 48,
          ),
        ),
        height: 87,
        width: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          color: const Color(0x29f68989),
        ),
      ),
    );
  }
}
