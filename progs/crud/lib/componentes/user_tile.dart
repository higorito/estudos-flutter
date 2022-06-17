import 'package:crud/modelos/user.dart';
import 'package:crud/provider/usuarios.dart';
import 'package:crud/rotas/rotas_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {

  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
      final avatar = user.avatarUrl == null ||  user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person),)
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
      return ListTile(
        leading: avatar,
        title: Text(user.nome),
        subtitle: Text(user.email),

        trailing: Container(
          width: 100,
          child: Row(
          children: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  AppRotas.USER_FORM,
                  arguments: user, 
                
                );

              }, 
              icon: Icon(Icons.edit)
              ),
            IconButton(
              onPressed: (){
                showDialog(context: context,
                builder: (ctx)=> AlertDialog(
                    title: Text('Exclusão'),
                    content: Text('Deseja excluir?'),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: (){
                          Navigator.of(context).pop(); 
                        },
                       child: Text('Não')
                       ),
                       FlatButton(
                        onPressed: (){

                          Provider.of<UsersProv>(context, listen: false).remove(user);
                          Navigator.of(context).pop(); 
                        },
                       child: Text('Sim')
                       ),
                    ],
                ));
                

              }, 
              icon: Icon(Icons.delete)
              )

          ],

        ),
      ),
      );
  }
}