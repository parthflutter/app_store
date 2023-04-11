import 'package:app_store/screen/app_store1/view/home_screen.dart';
import 'package:app_store/screen/app_store3/view/home_screen3.dart';
import 'package:flutter/cupertino.dart';

import '../../app_store2/view/home_screen2.dart';

class Store_provider extends ChangeNotifier{

  List screenList = [
  Store_screen1(),
  Store_sceen2(),
  Store_screen3(),
  ];
}
