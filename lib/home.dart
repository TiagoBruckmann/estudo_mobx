import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_contador/core/mobx/incremet_mobx.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final IncrementMobX _incrementMobX = IncrementMobX();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 5),
          child: Column(
          children: [

            Observer(
              builder: (builder) {

                return Text(
                  "${_incrementMobX.increment}",
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                child: const Text("Incrementar"),
                onPressed: () {
                  _incrementMobX.incrementer!();
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                child: const Text("Decrementar"),
                onPressed: () {
                  _incrementMobX.decrement!();
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
