import 'package:flutter/material.dart';
import 'package:pokeguidedeli/orderpage.dart';

class PartyFood extends StatefulWidget {
  @override
  _PartyFoodState createState() => _PartyFoodState();
}

class _PartyFoodState extends State<PartyFood> {

  String imageurl = "https://orderhk.pokeguide.com/img/p/2/9/3/293.jpg" ;
  int order_by_day = 4;
  String name = "Poke n Roll";
  String district = "Wan Chai";
  String type = "Western";
  int pricelevel = 1;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Select a Restaurant",
          style: TextStyle(color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold)),
        ),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
                MaterialPageRoute(builder: (context) => OrderPage())
            );
          },
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 225,
                  width: 400,
                  child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 2.0,
                                        spreadRadius: 1.0)
                                  ]),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              child: Image.network(
                                imageurl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.transparent, Colors.black])),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Order by ${order_by_day} days",
                                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(name,
                                style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)
                            ),
                          ),
                          Row(
                            children: <Widget>[Icon(Icons.location_on, color: Colors.orange),
                            Text(district,
                            style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.grey))],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                              children: <Widget>[
                                Text(type+" · ",
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 20)
                                ),
                                Icon(Icons.attach_money, color: Colors.orange),
                                Icon(Icons.attach_money, color: Colors.grey),
                                Icon(Icons.attach_money, color: Colors.grey)
                              ]
                          ),
                          Text("~ 700 m",
                              style: TextStyle(color: Colors.grey,
                                  fontSize: 20)
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


}
