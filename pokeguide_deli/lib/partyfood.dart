import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartyFood extends StatefulWidget {
  @override
  _PartyFoodState createState() => _PartyFoodState();
}

class _PartyFoodState extends State<PartyFood> {

  Future<List<Widget>> createList() async {
    List<Widget> items = new List<Widget>();
    String dataString =
    await DefaultAssetBundle.of(context).loadString("assets/restaurant_list.json");
    List<dynamic> dataJSON = jsonDecode(dataString);


    dataJSON.forEach((object) {
      items.add(Padding(padding: EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2.0,
                    blurRadius: 5.0
                ),
              ]
          ),
          margin: EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                child: Image.asset(object["merchant_images"]["img_url"],width: 80,height: 80,fit: BoxFit.cover,),
              ),
            ],
          ),
        ),));
    });

    return items;
  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :Container(
          child: FutureBuilder(
              initialData: <Widget>[Text("")],
              future: createList(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListView(
                      primary: false,
                      shrinkWrap: true,
                      children: snapshot.data,
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
        )
    );
 }
}
