import 'package:flutter/material.dart';
import 'package:flutter_turkiye_hackathon/core/components/card/contact_us_card.dart';
import 'package:flutter_turkiye_hackathon/core/constants/application_strings.dart';

//To do: İlerde facebook safası mesaj yerine ve gmail adresi kurulduğunda oralrar yönlendirme yapmak lazım.
class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(ApplicationStrings.instance.contactUs),
          centerTitle: true),
      body: Center(
        child: Column(
          children: [
            buildContactUsCardFaceBook(),
            buildContactUsCardInstagram(),
            buildContactUsCardGmail(),
            buildContactUsCardWhatsapp(),
            buildContactUsCardLocalCityHalls(),
          ],
        ),
      ),
    );
  }

  ContactUsCard buildContactUsCardLocalCityHalls() {
    return ContactUsCard(
      identity: 'Local City Halls',
      imageUrl:
          'https://i.pinimg.com/originals/84/dc/fc/84dcfc1cdb1d40152fe8696a91ec2a15.jpg',
      price: '',
      need:
          'If you can not contact us via by internet, you can go to city hall. We cooperate with mayors.',
      alertText: 'Local City Halls',
      alertImageUrl:
          'https://i.pinimg.com/originals/84/dc/fc/84dcfc1cdb1d40152fe8696a91ec2a15.jpg',
      alertDescription:
          'If you can not contact us via by internet, you can go to city hall. We cooperate with mayors.',
    );
  }

  ContactUsCard buildContactUsCardWhatsapp() {
    return ContactUsCard(
      identity: 'Whatsapp',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1200px-WhatsApp.svg.png',
      price: '',
      need: '+90 532 532 32 32',
      alertText: 'Whatsapp',
      alertImageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1200px-WhatsApp.svg.png',
      alertDescription: 'You can contact us via Whatsapp',
    );
  }

  ContactUsCard buildContactUsCardGmail() {
    return ContactUsCard(
      identity: 'Gmail',
      imageUrl:
          'https://dijilopedi.com/wp-content/uploads/2019/03/Gmailde-Planl%C4%B1-Mail-G%C3%B6nderme-D%C3%B6nemi.jpg',
      price: '',
      need: 'donatetothefuture@gmail.com',
      alertText: 'Gmail',
      alertImageUrl:
          'https://dijilopedi.com/wp-content/uploads/2019/03/Gmailde-Planl%C4%B1-Mail-G%C3%B6nderme-D%C3%B6nemi.jpg',
      alertDescription: 'You can contact us via Gmail',
    );
  }

  ContactUsCard buildContactUsCardInstagram() {
    return ContactUsCard(
      identity: 'Instagram',
      imageUrl:
          'https://www.logovector.org/wp-content/uploads/2018/11/instagram.png',
      price: '',
      need: 'Donate To The Future',
      alertText: 'Instagram',
      alertImageUrl:
          'https://www.logovector.org/wp-content/uploads/2018/11/instagram.png',
      alertDescription: 'You can contact us via İnstagram',
    );
  }

  ContactUsCard buildContactUsCardFaceBook() {
    return ContactUsCard(
      identity: 'Facebook',
      imageUrl:
          'https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-2019-circle-512.png',
      price: '',
      need: 'Donate To The Future',
      alertText: 'Facebook',
      alertImageUrl:
          'https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-2019-circle-512.png',
      alertDescription: 'You can contact us via Facebook',
    );
  }
}
