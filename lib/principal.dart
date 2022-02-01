// imports nativos do flutter
import 'package:flutter/material.dart';

// import dos pacotes
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_contador/core/mobx/incremet_mobx.dart';

// import dos mobx
import 'package:mobx_contador/core/mobx/main/main_mobx.dart';
import 'package:provider/provider.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  final MainMobX _mainMobXBase = MainMobX();

  _dialog(){
    showDialog(
        context: context,
        builder: (_){
          return AlertDialog(
            title: const Text("Adicionar item"),
            content: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite uma descrição...",
              ),
              onChanged: _mainMobXBase.setNewItem,
            ),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancelar",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _mainMobXBase.addItem();
                  Navigator.pop(context);
                },
                child: const Text("Salvar"),
              ),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    final _incrementMobX = Provider.of<IncrementMobX>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _incrementMobX.email,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Observer(
        builder: ( context ) {

          return ListView.builder(
            itemCount: _mainMobXBase.listItems.length,
            itemBuilder: ( context , index ) {

              var data = _mainMobXBase.listItems[index];
              return Observer(
                builder: ( context ) {

                  return ListTile(
                    leading: Checkbox(
                      value: data.selected,
                      onChanged: data.changeSelected,
                    ),
                    title: Text(data.title),
                    onTap: (){

                      data.selected = !data.selected;

                    },
                  );

                },
              );
            },
          );

        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          _dialog();
        },
      ),
    );
  }
}
