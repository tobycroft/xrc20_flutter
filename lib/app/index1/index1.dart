import 'dart:convert';
import 'dart:ui';

import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/services.dart';
import 'package:images_picker/images_picker.dart';
import 'package:xrc20_flutter/app/index1/help/help.dart';
import 'package:xrc20_flutter/app/index1/robot_info/robot_info.dart';
import 'package:xrc20_flutter/app/index1/scanner/scanner.dart';
import 'package:xrc20_flutter/app/login/help/help.dart';
import 'package:xrc20_flutter/config/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:xrc20_flutter/app/login/login.dart';
import 'package:xrc20_flutter/config/config.dart';
import 'package:xrc20_flutter/tuuz/alert/ios.dart';
import 'package:xrc20_flutter/tuuz/net/net.dart';
import 'package:xrc20_flutter/tuuz/popup/popupmenu.dart';
import 'package:xrc20_flutter/tuuz/storage/storage.dart';
import 'package:xrc20_flutter/tuuz/win/close.dart';

class Index1 extends StatefulWidget {
  String _title;

  Index1(this._title);

  @override
  _Index1 createState() => _Index1(this._title);
}

class _Index1 extends State<Index1> {
  String _title;

  _Index1(this._title);

  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        height: 300,
        child: Drawer(
          child: Container(
            child: Column(
              children: [
                Text("123"),
              ],
            ),
          ),
        ),
      ),
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return new IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.align_horizontal_left));
          },
        ),
        title: Text(this._title),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () async {
                Windows().Open(context, Scanner());
              },
              icon: Icon(Icons.camera))
        ],
      ),
      body: EasyRefresh(
        scrollController: null,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                // height: 100,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(Radius.elliptical(10, 10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   width: 50,
                        //   height: 100,
                        //   decoration: BoxDecoration(
                        //     color: Colors.blue,
                        //     shape: BoxShape.circle,
                        //     // borderRadius: new BorderRadius.all(Radius.elliptical(10, 10)),
                        //   ),
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10),
                                Text(
                                  "tron",
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Alert().Simple(context, "123", "", () {});
                                  },
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(Size(14, 14)),
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                  ),
                                  child: Text(
                                    "TNyLRcPDmJs7uCRKSWvxeFiYLx5oySrzAf",
                                    style: TextStyle(fontSize: 12, color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 2),
                                TextButton(
                                  onPressed: () {
                                    Alert().Simple(context, "123", "", () {});
                                  },
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(Size(14, 14)),
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                  ),
                                  child: Icon(Icons.qr_code_2, size: 13, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            height: 50,
                            decoration: BoxDecoration(
                                // color: Colors.green,
                                ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "\$14.88",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              // decoration: BoxDecoration(
              //   color: Colors.green,
              //   shape: BoxShape.rectangle,
              //   borderRadius: new BorderRadius.all(Radius.elliptical(10, 10)),
              // ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("??????", style: TextStyle()),
                            SizedBox(
                              width: 80,
                            ),
                            Text("50", style: TextStyle()),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 150,
                          child: LinearProgressIndicator(
                            value: 50 / 100,
                            minHeight: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("??????", style: TextStyle()),
                            SizedBox(
                              width: 60,
                            ),
                            Row(
                              children: [Text("1.46", style: TextStyle()), Text("KB", style: TextStyle())],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 150,
                          child: LinearProgressIndicator(
                            value: 99 / 100,
                            minHeight: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Row(children: [
                      Text("??????", style: TextStyle(color: Colors.grey, fontSize: 18)),
                    ]),
                  ],
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
                                        child: Image.network(
                                          "https://files.readme.io/6d59b1b-small-icon_red.png",
                                          scale: 2,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text("TRX", style: TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "134.1234",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "\$ 12.34",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(height: 1, indent: 60, color: Colors.grey),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
                                          child: Icon(CryptoFontIcons.USDT)),
                                      SizedBox(width: 10),
                                      Text("USDT", style: TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "\$ 2.00",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Divider(height: 1, indent: 60, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
        firstRefresh: false,
        onRefresh: null,
      ),
    );
  }
}
