import 'package:flutter/material.dart';
import 'package:pokeguidedeli/partyfoodlist.dart';
import 'package:pokeguidedeli/lunchboxpickup.dart';

class Deli extends StatefulWidget {
  @override
  _DeliState createState() => _DeliState();
}

class _DeliState extends State<Deli> {

  Widget bodyWidget = PartyFood();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: new TextSpan(
                style: new TextStyle(
                    fontSize: 35.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
                children: <TextSpan>[
                  new TextSpan(text: 'Pokeguide '),
                  new TextSpan(text: 'Deli',
                      style: new TextStyle(fontSize: 35.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 40.0, right: 20.0),
                    child: FlatButton(
                      color: Colors.white,
                      textColor: Colors.black,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      onPressed: () {
                        setState(() {
                          bodyWidget = LunchBoxPickup();
                        });
                      },
                      child: Text(
                          "Lunch Box Pickup",
                          style: TextStyle(fontSize: 15)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 20.0, right: 40.0),
                    child: FlatButton(
                      color: Colors.white,
                      textColor: Colors.black,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      onPressed: () {
                        setState(() {
                          bodyWidget = PartyFood();
                        });
                      },
                      child: Text(
                          "Party Food",
                          style: TextStyle(fontSize: 15)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bodyWidget
          ],
        ),
        ),
      );
  }
}