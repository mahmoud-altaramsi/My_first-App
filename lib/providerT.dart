import 'package:flutter/material.dart';

class ProviderT extends ChangeNotifier {
  int clickOne = 1;
  int clicTow = 2;
  // ignore: unused_field
  String name = 'mahmoud khald';
  String? _iconBar, _linkBar;
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }

  int n = 5;
  // void getIcon() {
  //   Icon(
  //     Icons.edit,
  //     size: 30,
  //     color: Colors.black,
  //   );
  // }

  void chaneName() {
    if (name == 'mahmoud khald')
      name = 'Altaramsi';
    else
      name = 'mahmoud khald';
    notifyListeners();
  }

  void setMyiconBar(value) {
    _iconBar = value;
  }

  void setMylinBar(value) {
    _linkBar = value;
  }

  String? getMyiconBar() => _iconBar;
  String? getMy_LinkBar() => _linkBar;
}
