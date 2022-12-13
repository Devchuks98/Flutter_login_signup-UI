import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  padding: const EdgeInsets.fromLTRB(60, 25, 60, 25),
  maximumSize: const Size(327, 50),
  backgroundColor: Colors.blue,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);
