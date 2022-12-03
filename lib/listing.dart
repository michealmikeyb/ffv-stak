/**
 * this contains the classes that support the listing list class. they keep a constante
 * queue of content in listqueues which are a queue of listings containing data on the title
 * author etc. of a listing from either reddit or stakswipe
 */

import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'dart:convert';
import 'dart:collection';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:grpc/grpc.dart';
import 'package:stak_swipe/tags.pbgrpc.dart';
import 'tags.pb.dart';
import 'package:stak_swipe/users.pbgrpc.dart';

class SourceName {
  String source;
  String name;

  SourceName(this.name, this.source);
}

/**
 * stores the data for a single listing
 */
class Listing {
  String _imgLink; //different attributes of a listing
  String _author;
  String _text;
  List<String> _tags;
  String _commentLink;
  String _title;
  String _source;
  String _id;

  Listing(this._imgLink, this._author, this._text, this._tags,
      this._commentLink, this._title, this._source, this._id);
  //getters for the different attributes
  get imgLink => _imgLink;
  get author => _author;
  get text => _text;
  get tag => _tags;
  get commentLink => _commentLink;
  get title => _title;
  get source => _source;
  get id => _id;
}

/**
 * stores the data for a single stakswipe server listing
 */
class StakListing extends Listing {
  String _imgLink; //different attributes of listing
  String _author;
  String _text;
  List<String> _tags;
  String _commentLink;
  String _title;
  String _source;
  String _sharedBy;
  String _id;

  StakListing(this._imgLink, this._author, this._text, this._tags,
      this._commentLink, this._title, this._source, this._sharedBy, this._id)
      : super(_imgLink, _author, _text, _tags, _commentLink, _title, _source,
            _id);
  //getter methods for the different attributes
  get imgLink => _imgLink;
  get author => _author;
  get text => _text;
  get tag => _tags;
  get commentLink => _commentLink;
  get title => _title;
  get source => _source;
  get sharedBy => _sharedBy;
  get id => _id;
}

Future<TagBaseResponse> likePost(RatePostRequest req) async {
  final channel = ClientChannel(
    'gpmaga.com',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = TagServiceClient(channel);

  var response = stub.likePost(req);
  await channel.shutdown();
  return response;
}

Future<TagBaseResponse> dislikePost(RatePostRequest req) async {
  final channel = ClientChannel(
    'gpmaga.com',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = TagServiceClient(channel);

  var response = await stub.disikePost(req);
  await channel.shutdown();
  return response;
}

Future<GetPostResponse> getPost(GetPostRequest req) async {
  final channel = ClientChannel(
    'stakswipe.com',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = UserServiceClient(channel);

  var response = await stub.getPost(req);
  await channel.shutdown();
  return response;
}

/**
 * contains and updates listingqueues for all the tags in the taglist that
 * have a positive percentage. allows to pull a listing to create into a 
 * content card
 */
class ListingList {
  JsonDecoder decoder;
  JsonEncoder encoder;
  int introCardIndex; //used to determine if intro cards are needed
  String userId;

  ListingList(this.userId)
      : decoder = new JsonDecoder(),
        encoder = new JsonEncoder(),
        introCardIndex = 0 {}

  /**
   * gets a listing from the list determined by a random tag gotten
   * from the taglist and then pops the first listing off of the corresponding
   * listing queue of the given tag
   */
  Future<Listing> getListing() async {
    bool isEmpty;
    if (introCardIndex < 3) {
      //used to add introcards if needed
      List<Listing> intro = introCards();
      introCardIndex++;
      return intro[introCardIndex - 1];
    } else {
      var getPostRequest = GetPostRequest(userId: this.userId);
      var post = await getPost(getPostRequest);
      return Listing("", post.post.author, post.post.content, post.post.tags,
          "", "", post.post.source, "");
    }
  }

  /**
   * likes the given tag and increases the score of the corresponding
   * id of the tag
   * [tag] the tag to be liked
   * [id] the id of the listing that was liked
   */
  Future<bool> like({required SourceName tag, required String id}) async {
    // tagList.like(tag.name, tag.source); //like the listing in the taglist
    // if (tag.source == "stakuser" || tag.source == "stakswipe") {
    //   //if it is from stakswipe update its score and adjusted score
    //   /**await Firestore.instance.runTransaction((transaction) async{
    //     var freshSnap = await transaction.get(Firestore.instance.collection('listings').document(id));
    //     await transaction.update(freshSnap.reference, {
    //      'score': freshSnap.data['score']++,
    //      'adjusted_score': adjuster(freshSnap.data['score'], freshSnap.data['date_posted'])
    //     });
    //   }).whenComplete((){});**/
    //   var data =
    //       await Firestore.instance.collection("listings").document(id).get();
    //   int score = data["score"];
    //   DateTime posted = data["date_posted"];
    //   int newscore = score + 1;
    //   double newAdjusted = adjuster(newscore, posted);
    //   await Firestore.instance
    //       .collection("listings")
    //       .document(id)
    //       .updateData({'score': newscore, 'adjusted_score': newAdjusted});
    // }
    // save();
    return true;
  }

  /**
   * dislikes the current tag and decreases the score of
   * stakswipe listings
   *  [tag] the tag to be disliked
   * [id] the id of the listing that was disliked
   */
  Future<bool> dislike({required SourceName tag, required String id}) async {
    // tagList.dislike(tag.name, tag.source); //dislike the listing in the taglist
    // if (tag.source == "stakuser" || tag.source == "stakswipe") {
    //   //if its from stakswipe update the scores and adjusted scores
    //   /**await Firestore.instance.runTransaction((transaction) async{
    //     var freshSnap = await transaction.get(Firestore.instance.collection('listings').document(id));
    //     await transaction.update(freshSnap.reference, {
    //      'score': freshSnap.data['score']--,
    //      'adjusted_score': adjuster(freshSnap.data['score'], freshSnap.data['date_posted'])
    //     });
    //   }).whenComplete((){});**/
    //   var data =
    //       await Firestore.instance.collection("listings").document(id).get();
    //   int score = data["score"];
    //   DateTime posted = data["date_posted"];
    //   int newscore = score--;
    //   int newAdjusted = adjuster(newscore, posted);
    //   await Firestore.instance
    //       .collection("listings")
    //       .document(id)
    //       .updateData({'score': newscore, 'adjusted_score': newAdjusted});
    // }
    // save();
    return true;
  }

  /**
   * used to fill the queue with cards that explain the app the
   * first time someone runs it
   */
  List<Listing> introCards() {
    List<Listing> introList = <Listing>[];
    introList.add(new Listing(
        "",
        "Michael",
        "StakSwipe is a media aggregation app to view all of you favorite content. Using the app is simple just right swipe stuff that you like or that you want to see more of and left swipe stuff that you want to see less, try it out swipe away this card",
        ["Intro"],
        "",
        "Welcome to Stakswipe",
        "reddit",
        ""));
    introList.add(new Listing(
        "",
        "Michael",
        "Currently stakswipe takes from two sources reddit and its own server. If you want to Post to the stakswipe server press the button in the top right. You can also add or remove tags from your interests with the other two buttons to the left of the post button. In order to post You'll need a name swipe to see how to set that up",
        ["Intro"],
        "",
        "Other Features",
        "reddit",
        ""));
    introList.add(new Listing(
        "",
        "Michael",
        "In the upper left is a button to open up the sidebar. In there you can navigate to your posts, your list which contains all your interests as well as their percentages and you can create a name. Names are completely optionial in stakswipe, you only need one if you want to post content. Creating a name in stakswipe is easy, just pick a name and hit enter if its available you can hit submit. No password is required and the name is tied to your device so no one else can impersonate you. Now your ready to start swipe on this to start going through content.",
        ["Intro"],
        "",
        "The sidebar",
        "reddit",
        ""));
    return introList;
  }
}
