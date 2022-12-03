/**
 * this contains the main for an app that allows users to browse content
 * suited to their likes and interest. It operates on a very basic ui of
 * swiping left on content they dissaprove and right on content they 
 * approve of. Through the tag functions in tag.dart the liked contents
 * show up more and the disliked show up less.
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:collection';
import 'package:shared_preferences/shared_preferences.dart';
import 'listing.dart';
import 'contentCard.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

enum contentSource { reddit, stakswipe }

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> cardList; //the list of cards
  late Queue<Widget> cardq;
  late ListingList list;
  late int index; //the index of the current card/ the number of card
  JsonEncoder encoder =
      new JsonEncoder(); //json encoder used for saving the taglist and placelist
  JsonDecoder decoder =
      new JsonDecoder(); // json decoder used in restoring the taglist and placelist
  final String stakServerUrl = "68.42.250.122";
  String currentUser = "none";
  bool checked = false;
  CardStack stack = new CardStack(
    key: new Key("card_stack"),
    list: new ListingList("1609bf76-7062-11ed-9384-1c4d70a146e5"),
  );

  late String currentTitle;
  late String currentLink;
  late String currentAuthor;
  late String currentCommentLink;
  late String currentSelfText;
  late String currentTag;
  bool loggedIn = false;
  bool checkingLogin = true;

  bool checkLogin() {
    this.checkingLogin = false;
    return false;
  }

  void updateLogin(bool loggedIn) {
    setState(() {
      this.loggedIn = loggedIn;
    });
  }

  void initState() {
    this.loggedIn = checkLogin();
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (this.checkingLogin) {
      return Text("checking login");
    } else if (!this.loggedIn) {
      return new LoginPage(this.loggedIn, updateLogin);
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[],
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[],
        ),
      ),
      body: new Center(child: stack),
    );
  }
}
