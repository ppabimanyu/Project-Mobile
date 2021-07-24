import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_in/constants.dart';
import 'package:http/http.dart' as http;
import 'package:live_in/screens/details/details_screen.dart';
import 'package:loading_animations/loading_animations.dart';

class PageResult extends StatelessWidget {
  final result;

  const PageResult({Key? key, required this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          result,
          style: TextStyle(color: Colors.orange),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(result: result),
    );
  }
}

class Body extends StatelessWidget {
  final result;
  const Body({Key? key, required this.result}) : super(key: key);

  // final String url = "https://wsjti.id/LiveIn/public/api/events/"+result;

  Future<List<dynamic>> getEvents() async {
    var response = await http
        .get(Uri.parse("https://wsjti.id/LiveIn/public/api/events/" + result));
    return json.decode(response.body)['data'];
  }

  String _title(dynamic event) {
    return event['title'];
  }

  String _image(dynamic event) {
    return event['img'];
  }

  String _category(dynamic event) {
    return event['category'];
  }

  String _time(dynamic event) {
    return event['time'];
  }

  String _date(dynamic event) {
    return event['date'];
  }

  String _platform(dynamic event) {
    return event['platform'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: FutureBuilder<List<dynamic>>(
        future: getEvents(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return CustomScrollView(
              slivers: <Widget>[
                // SliverFixedExtentList(
                //   itemExtent: 100.0,
                //   delegate: SliverChildBuilderDelegate(
                //       (BuildContext context, int index) {
                //     return Categories();
                //   }, childCount: 1),
                // ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.70,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailsScreen(
                              product: snapshot.data[index],
                            );
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Hero(
                                    tag: "${_image(snapshot.data[index])}",
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://wsjti.id/LiveIn/public/storage/images/' +
                                            _image(snapshot.data[index]),
                                        fit: BoxFit.cover,
                                        height: 120,
                                        width: 180,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(
                                    _title(snapshot.data[index]),
                                    // overflow: TextOverflow.fade,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.bookmarks_rounded,
                                            size: 20.0,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            // products is out demo list
                                            _category(snapshot.data[index]),
                                            style: TextStyle(
                                                color: kTextLightColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            size: 20.0,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            // products is out demo list
                                            _date(snapshot.data[index]),
                                            style: TextStyle(
                                                color: kTextLightColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            size: 20.0,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            // products is out demo list
                                            _time(snapshot.data[index]),
                                            style: TextStyle(
                                                color: kTextLightColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            size: 20.0,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            // products is out demo list
                                            _platform(snapshot.data[index]),
                                            style: TextStyle(
                                                color: kTextLightColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: snapshot.data.length,
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: LoadingBouncingGrid.square(
                size: 60.0,
                backgroundColor: Colors.orange,
                duration: Duration(milliseconds: 500),
              ),
            );
          }
        },
      ),
    );
  }
}
