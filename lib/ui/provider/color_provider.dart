import 'package:flutter/cupertino.dart';
import 'package:flutter_app/model/custum_color.dart';

class ColorProvider extends ChangeNotifier{
  List<CustumColor> _colorList = [];

  List<CustumColor> get getcolorList => _colorList;

  void increase(CustumColor color) {
    _colorList.add(color);
    notifyListeners();
  }

  void decrease(CustumColor color) {
    _colorList.remove(color);
    notifyListeners();
  }
}