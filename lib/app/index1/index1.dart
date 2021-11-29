import 'dart:convert';
import 'dart:ui';

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
    get_data();
    super.initState();
  }

  @override
  Future<void> get_data() async {
    Map<String, String> post = {};
    post["uid"] = await Storage().Get("__uid__");
    post["token"] = await Storage().Get("__token__");
    var ret = await Net().Post(Config().Url, "/v1/bot/list/owned", Map(), post, Map());

    var json = jsonDecode(ret);
    if (Auth().Return_login_check(context, json)) {
      if (json["code"] == 0) {
        setState(() {
          bot_datas = [];
          List data = json["data"];
          data.forEach((value) {
            bot_datas.add(value);
          });
        });
      } else {
        setState(() {
          bot_datas = [];
        });
      }
    } else {
      setState(() {
        bot_datas = [];
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                height: 200,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    ),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                    ),
                    child: ListView(
                      children: [
                        Text("Tron"),
                      ],
                    ),
                  ),
                )),
          ],
        ),
        firstRefresh: false,
        onRefresh: null,
      ),
      //   Center(
      //     //     child: ListView.builder(
      //     //       itemBuilder: (BuildContext context, int index) => BotItem(bot_datas[index]),
      //     //       itemCount: bot_datas.length,
      //     //     ),
      //     //   ),
    );
  }
}

List bot_datas = [];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
