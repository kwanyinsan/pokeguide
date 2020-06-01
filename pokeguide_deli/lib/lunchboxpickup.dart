import 'package:flutter/material.dart';

class LunchBoxPickup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Container(
        child: Center(
                child: Text(
"""
All lunch boxes are sold out.
We will resume the service soon.
"""
                  , textAlign: TextAlign.center)
            )
          ),
    );
  }
}