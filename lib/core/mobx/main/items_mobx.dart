// import dos pacotes
import 'package:mobx/mobx.dart';
part 'items_mobx.g.dart';

class ItemsMobX = ItemsMobXBase with _$ItemsMobX;

// Store é utilizado para geracao de codigos automaticos
abstract class ItemsMobXBase with Store {

  ItemsMobXBase( this.title );

  final String title;

  @observable
  bool selected = false;

  void changeSelected( bool? value ) => selected = value!;

}