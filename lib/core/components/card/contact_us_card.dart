import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ContactUsCard extends StatelessWidget {
  final String identity;
  final String need;
  final String imageUrl;
  final String price;
  final String alertText;
  final String alertDescription;
  final String alertImageUrl;

  const ContactUsCard({Key key, this.identity, this.need, this.imageUrl, this.price, this.alertText, this.alertDescription, this.alertImageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              backgroundColor: Colors.transparent,
            ),
            title: Text(identity),
            trailing: Text(price),
            subtitle: Text(need),
            onTap: () {
              Alert(
                context: context,
                title: alertText,
                desc: alertDescription,
                image: Image.network(
                    alertImageUrl),
              ).show();
              
            },
          ),
        ],
      ),
    );
  }
}
