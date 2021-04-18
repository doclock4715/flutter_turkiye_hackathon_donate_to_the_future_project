import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class NeedyPersonCard extends StatelessWidget {
  final String identity;
  final String need;
  final String imageUrl;
  final String price;
  final String alertText;
  final String alertDescription;
  final String alertImageUrl;

  const NeedyPersonCard({Key key, this.identity, this.need, this.imageUrl, this.price, this.alertText, this.alertDescription, this.alertImageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: const Text('Donate'),
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: 'Succesful',
                    desc: 'You succesfully donate, Thank you',
                    buttons: [
                      DialogButton(
                        child: Text(
                          'Okay',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
