import 'package:flutter/material.dart';
import 'package:flutter_turkiye_hackathon/core/components/card/needy_card_person.dart';
import 'package:flutter_turkiye_hackathon/core/constants/application_strings.dart';
import 'package:flutter_turkiye_hackathon/core/network/json_decoder.dart';
import 'package:flutter_turkiye_hackathon/core/network/needy_person_class.dart';
import 'package:flutter_turkiye_hackathon/view/left_drawer/left_drawer.dart';

class HomeDonate extends StatefulWidget {
  @override
  _HomeDonateState createState() => _HomeDonateState();
}

class _HomeDonateState extends State<HomeDonate> {
  Future<List<Needy>> futureNeedy;
  @override
  void initState() {
    super.initState();
    futureNeedy = JsonDecoder().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(ApplicationStrings.instance.title), centerTitle: true),
      drawer: LeftDrawer(),
      body: buildDonateFutureBuilder(),
    );
  }

  FutureBuilder<List<Needy>> buildDonateFutureBuilder() {
    return FutureBuilder<List<Needy>>(
      future: futureNeedy,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var needy = snapshot.data;
          return ListView.builder(
            itemCount: needy.length,
            itemBuilder: (context, i) {
              return buildNeedyPersonCard(needy, i);
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  NeedyPersonCard buildNeedyPersonCard(List<Needy> needy, int i) {
    return NeedyPersonCard(
      identity: needy[i].identity,
      need: needy[i].need,
      imageUrl: needy[i].image,
      price: needy[i].price,
      alertText: needy[i].identity,
      alertImageUrl: needy[i].image,
      alertDescription: needy[i].need,
    );
  }
}
