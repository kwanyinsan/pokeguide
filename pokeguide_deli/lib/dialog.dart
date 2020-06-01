/*
import 'package:flutter/material.dart';


showAlertDialog(BuildContext context, textTitle, textInfo, button) {



  // set up the buttons
  Widget remindButton = FlatButton(
    child: Text(button),
    onPressed:  () {
      Future.delayed(Duration.zero, () {
      Navigator.of(context).pop();
    });

    });

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(textTitle),
    content: Text(textInfo),
    actions: [
      remindButton,
    ],
  );

  // show the dialog
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        child: alert,
        onWillPop: () async => false,
      );
    },
  );
}*/
