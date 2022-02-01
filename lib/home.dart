// imports nativos do flutter
import 'package:flutter/material.dart';

// import dos pacotes
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:mobx/mobx.dart';

// import dos controladores mobx
import 'package:mobx_contador/core/mobx/incremet_mobx.dart';
import 'package:mobx_contador/principal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late IncrementMobX _incrementMobX; // = IncrementMobX();
  ReactionDisposer? _reactionDisposer;
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /*
    autorun((context) {
      print(_incrementMobX.formValidate);
    });
    */
    
    _incrementMobX = Provider.of<IncrementMobX>(context);

    reaction(
      (context) => _incrementMobX.formValidate,
      (userLogued) {
        if ( userLogued == true ) {

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (builder) => const Principal(),
            ),
          );
        }
      }
    );
  }

  @override
  void dispose() {
    super.dispose();
    _reactionDisposer!();
  }
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

            Padding (
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: const InputDecoration(labelText: "Email"),
                onChanged: _incrementMobX.setEmail,
              ),
            ),

            Padding (
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: const InputDecoration(labelText: "senha"),
                onChanged: _incrementMobX.setPassword,
              ),
            ),

            Observer(
              builder: (context) {

                return Text(
                  ( _incrementMobX.formValidate == true )
                  ? "Campos válidos"
                  : "Campos inválidos",
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (context) {

                  return ElevatedButton(
                    child: ( _incrementMobX.loading == true )
                    ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white70),
                    )
                    : const Text("Conectar"),
                    onPressed: ( _incrementMobX.formValidate == true )
                    ? () {
                      _incrementMobX.login();
                    }
                    : null,
                  );

                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
