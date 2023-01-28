


import 'package:flutter/cupertino.dart';

class BasicoController extends ChangeNotifier{
  String _nome = 'João';
  String get nome => _nome;

  void mudarNome(String novoNome){
    _nome = novoNome;
    notifyListeners();
  }
}