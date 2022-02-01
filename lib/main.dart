// imports nativos do flutter
import 'package:flutter/material.dart';

// import das telas
import 'package:mobx_contador/home.dart';

// import dos pacotes
import 'package:provider/provider.dart';

// import dos gerenciadores de estado
import 'package:mobx_contador/core/mobx/incremet_mobx.dart';

Future<void> main() async {

  runApp(
    MultiProvider(
      // create: () => IncrementMobX(),
      providers: [
        Provider(
          create: (context) => IncrementMobX(),
        ),
      ],
      child: const MaterialApp(
        title: "Contador",
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    )
  );
}