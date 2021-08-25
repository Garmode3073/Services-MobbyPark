import 'package:flutter/material.dart';
import 'package:servicesmob/components/background.dart';
import 'package:servicesmob/components/listcont.dart';
import 'package:servicesmob/global.dart' as g;
import 'package:servicesmob/screens/landing.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    g.height = MediaQuery.of(context).size.height;
    g.width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: g.background,
      drawer: Drawer(
        child: Container(
          color: g.shadow,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1551464885-21348ccc8b67?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80'),
                  backgroundColor: g.background,
                ),
                accountName: Text('Hospital name'),
                accountEmail: Text('Hospital Email Address'),
              ),
              ListTile(
                tileColor: g.background,
                title: Text('Booking Details'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              Expanded(child: Container()),
              ListTile(
                tileColor: g.background,
                title: Text('Sign out'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            width: g.width * 2,
            height: g.width * 2,
            top: -g.width,
            left: -g.width,
            child: BGreglog(),
          ),
          Positioned(
            width: g.width * 2,
            height: g.width * 2,
            bottom: -g.width,
            right: -g.width,
            child: BGreglog(),
          ),
          Center(
            child: Container(
              height: g.height,
              width: g.width,
              child: ListView(
                children: [
                  Container(
                    width: g.width * 0.8,
                    height: g.height * 0.075,
                    margin: EdgeInsets.symmetric(
                      horizontal: g.width * 0.05,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      color: g.contbg2,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff5e489b),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Hospital Name',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: g.primary,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: g.height * 0.07),
                  Text(
                    'Isolation Bed Available',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: g.contbg2,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: g.height * 0.03),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: g.width * 0.05,
                    ),
                    width: g.width * 0.8,
                    height: g.height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      color: g.contbg,
                      boxShadow: [
                        BoxShadow(
                          color: g.shadow,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: g.width * 0.05,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'NORMAL',
                              style: TextStyle(
                                fontFamily: 'Tahoma',
                                fontSize: 20,
                                color: g.shadow,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: g.width * 0.06,
                                  height: g.height * 0.027,
                                  decoration: BoxDecoration(
                                      color: g.shadow,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: RawMaterialButton(
                                    onPressed: null,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        fontFamily: 'Tahoma',
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: g.width * 0.02,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                    fontFamily: 'Tahoma',
                                    fontSize: 28,
                                    color: g.shadow,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  width: g.width * 0.02,
                                ),
                                Container(
                                  width: g.width * 0.06,
                                  height: g.height * 0.027,
                                  decoration: BoxDecoration(
                                      color: g.shadow,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: RawMaterialButton(
                                    onPressed: null,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontFamily: 'Tahoma',
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'WITH OXYGEN',
                              style: TextStyle(
                                fontFamily: 'Tahoma',
                                fontSize: 20,
                                color: g.shadow,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: g.width * 0.06,
                                  height: g.height * 0.027,
                                  decoration: BoxDecoration(
                                      color: g.shadow,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: RawMaterialButton(
                                    onPressed: null,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        fontFamily: 'Tahoma',
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: g.width * 0.02,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                    fontFamily: 'Tahoma',
                                    fontSize: 28,
                                    color: g.shadow,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  width: g.width * 0.02,
                                ),
                                Container(
                                  width: g.width * 0.06,
                                  height: g.height * 0.027,
                                  decoration: BoxDecoration(
                                      color: g.shadow,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: RawMaterialButton(
                                    onPressed: null,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontFamily: 'Tahoma',
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: g.width * 0.05,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: g.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: g.width * 0.553,
                        height: g.height * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: g.shadow,
                          boxShadow: [
                            BoxShadow(
                              color: g.primary,
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Booking Data',
                            style: TextStyle(
                              fontFamily: 'Malgun Gothic',
                              fontSize: 24,
                              color: g.primary,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.05,
                  ),
                  Container(
                    width: g.width,
                    height: g.height * 0.445,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ListContainer(
                                  width: g.width * 0.35,
                                  height: g.height * 0.05,
                                  font: 16,
                                  text: 'Start Time',
                                  head: true,
                                ),
                                ListContainer(
                                  width: g.width * 0.35,
                                  height: g.height * 0.05,
                                  font: 16,
                                  head: true,
                                  text: 'To',
                                ),
                                ListContainer(
                                  width: g.width * 0.225,
                                  height: g.height * 0.05,
                                  font: 16,
                                  head: true,
                                  text: 'Plot',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
