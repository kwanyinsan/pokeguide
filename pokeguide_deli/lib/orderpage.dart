import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  String name = "Poke n Roll";
  String currrntPostion = "G/F, 40 Sung Kit Street, Hung Hom";
  String menuimageurl = "https://orderhk.pokeguide.com/img/p/8/2/82.jpg";
  int order_by_day = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.location_on, color: Colors.black),
                    ),
                    Text(currrntPostion)
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: (){
                 /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => )
                  );*/
                },
                child: Container(
                  height: 125,
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
                        menuimageurl,
                        fit: BoxFit.cover,
                      ),
                    ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Contact Details",
                  style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 1.0)
                  ]),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.location_on, color: Colors.orange),
                  ),
                  Text("Pick up at: ${currrntPostion}",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                          spreadRadius: 1.0)
                    ]),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.person, color: Colors.orange),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("First Name",style: TextStyle(color: Colors.grey)
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100.0),
                                child: Text("Last Name",style: TextStyle(color: Colors.grey)
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.email, color: Colors.orange),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Email",style: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.phone, color: Colors.orange),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Mobile",style: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
/*            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                          spreadRadius: 1.0)
                    ]),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color:  Colors.black,
                            ),
                            child: Text("Order by ${order_by_day} days",
                              style: TextStyle(
                            color: Colors.white,
                                  fontSize: 10.0
                            ),),
                          )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("No. of people",style: TextStyle(color: Colors.black,
                                fontSize: 10.0)
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 180.0),
                            child: Text("1",style: TextStyle(color: Colors.black,
                                fontSize: 10.0)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(10.0),
                          child: Text("Budge",style: TextStyle(color: Colors.black,fontSize: 10.0)
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(180.0),
                            child: Text("Budget",style: TextStyle(color: Colors.grey,fontSize: 10.0)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(10.0),
                          child: Text("Delivery Date and Time",style: TextStyle(color: Colors.black,fontSize: 10.0)
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(180.0),
                            child: Text("Not Selected >",style: TextStyle(color: Colors.grey,fontSize: 10.0)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),*//*FlatButton(onPressed: showAlertDialog(context, "Confirm", "Upon submission, the restaurant will contact you for more details.", "OK"),
                child: Text("Continue"))*/
          ],
        ),
      ),
    );
  }
}

