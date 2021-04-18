import 'package:flutter/material.dart';
import 'package:flutter_turkiye_hackathon/core/constants/application_strings.dart';
import 'package:flutter_turkiye_hackathon/core/constants/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  Images images = Images();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(ApplicationStrings.instance.activites), centerTitle: true),
      body: ListView(
        children: [
          buildTimeLineCard(
              date: '22/03/2021',
              items: images.imgList,
              description: 'We were at Osas Family',
              title: 'Photos from last month\'s food donation'),
          buildTimeLineCard(
              date: '18/03/2021',
              items: images.imgList2,
              description: 'We were at needy village',
              title: 'Photos from last month\'s village clothes donation'),
        ],
      ),
    );
  }

  Card buildTimeLineCard(
      {@required List<Widget> items,
      @required String date,
      @required String title,
      @required String description}) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          buildCardHeaderListTile(
              date: date, title: title, description: description),
          buildCarouselSlider(items: items),
        ],
      ),
    );
  }

  CarouselSlider buildCarouselSlider({@required List<Widget> items}) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2,
      ),
    );
  }

  ListTile buildCardHeaderListTile(
      {String date, String title, String description}) {
        final _flutterLogoUrl = 'https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png';
    return ListTile(
      trailing: Text(date),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
           _flutterLogoUrl),
      ),
      subtitle: Text(description),
      title: Text(title),
    );
  }
}
