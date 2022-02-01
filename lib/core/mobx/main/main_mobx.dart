// import dos pacotes
import 'package:mobx/mobx.dart';
import 'package:mobx_contador/core/mobx/main/items_mobx.dart';
part 'main_mobx.g.dart';

class MainMobX = MainMobXBase with _$MainMobX;

// Store é utilizado para geracao de codigos automaticos
abstract class MainMobXBase with Store {

  @observable
  String newItem = "";

  @action
  void setNewItem(String value) => newItem = value;

  ObservableList<ItemsMobX> listItems = ObservableList();

  @action
  void addItem() {
    listItems.add( ItemsMobX(newItem) );
  }

}