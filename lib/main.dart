// imports nativos do flutter
import 'package:flutter/material.dart';

// import das telas
import 'package:mobx_contador/home.dart';

Future<void> main() async {

  runApp(
    const MaterialApp(
      title: "Contador",
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}