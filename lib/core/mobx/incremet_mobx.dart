// import dos pacotes
import 'package:mobx/mobx.dart';
part 'incremet_mobx.g.dart';

class IncrementMobX = IncrementMobXBase with _$IncrementMobX;

// Store é utilizado para geracao de codigos automaticos
abstract class IncrementMobXBase with Store {

  IncrementMobXBase() {
    autorun((context) {
      // print("email => $email");
      // print("password => $password");
    });
  }

  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  bool userLogin = false;

  @observable
  bool loading = false;

  @computed
  String get emailPassword => "$email - $password";

  bool get formValidate => email.contains("@") && email.length > 3 && password.length > 3;

  @action
  void setEmail(value) => email = value;

  @action
  void setPassword(value) => password = value;

  @action
  Future<void> login() async {

    loading = true;

    // processando
    await Future.delayed(const Duration(seconds: 3));

    loading = false;
    userLogin = true;
  }

  /*
  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }

  @action
  decrement() {
    counter--;
  }
  */

}