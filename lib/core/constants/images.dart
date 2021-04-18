import 'package:flutter/material.dart';

class Images {
  final List<Widget> imgList = [
    Image(
        image: NetworkImage(
            'https://www.oneindia.com/ph-big/2020/05/a-boy-wearing-face-mask-receives-food-from-volunteers-during-ongoing-covid-19-lockdown-in-kolkata_158839189180.jpg')),
    Image(
      image: NetworkImage(
          'https://d1vdjc70h9nzd9.cloudfront.net/media/campaign/115000/115153/image/5d35ba5f8fcd5.jpeg'),
    ),
  ];

  final List<Widget> imgList2 = [
    Image(
        image: NetworkImage(
            'https://philanthropyconnections.org/wp-content/uploads/2016/09/06-DSC02548-1.jpg')),
    Image(
      image: NetworkImage(
          'https://borgenproject.org/wp-content/uploads/19475011848_62f7b98b79_z-640x400.jpg'),
    )
  ];
}
