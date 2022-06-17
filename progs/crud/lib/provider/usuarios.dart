import 'dart:math';

import 'package:crud/dados/datas.dart';
import 'package:crud/modelos/user.dart';
import 'package:flutter/foundation.dart';

class UsersProv with ChangeNotifier{  //esse change é um observer p sempre que mudar notificar o usuario e atualiar 

  final Map<String, User> _items = {...DADOS};

  List<User> get all{
    return [..._items.values];  //faz a copia e retorna p proteger... so essa classe poder fazer isso
  }
  
  int get count{
    return _items.length;
  }

  User byIndex(int i){
    return _items.values.elementAt(i);   //p retornar um user atraves do index
  }

  void put(User user){
    if(user == null){
      return;
    }
    //alterar ou add, respectivamente

    if(user.id != null && _items.containsKey(user.id)){  //se tiver user id vai alterar
      _items.update(user.id.toString(), (_) => User(
        id: user.id,
        nome: user.nome,
        email: user.email, 
        avatarUrl: user.avatarUrl
      ));
    }else{
      final id = Random().nextDouble().toString(); 
      _items.putIfAbsent(id, () => User(
        id: id,
        nome: user.nome,
        email: user.email, 
        avatarUrl: user.avatarUrl
        ),
        );
    }   

    notifyListeners(); //notificar a mudança

  }

  void remove(User user){
    if(user != null && user.id !=null){
      _items.remove(user.id);
      notifyListeners();
    }
  }
}