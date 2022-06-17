
import 'package:flutter/material.dart';
import 'package:git_buscar/membros.dart';

//imoportando o http
import 'package:http/http.dart' as http;
//mapear o json
import 'dart:convert';

class GitAppState extends State<GitAppWidget>{   

  var _membros = <Membros>[];       // _ deixa privado inves de escrever private
  final _font = const TextStyle(fontSize: 25.0);

  @override
  void initState() {  //metodo p executar função privada
    super.initState();
    
    _carregarDados();  
  }

  _carregarDados() async {      //torna a função assincrona pq talvez vc ta rolando e faz a requisição dai o app trava
                                  //basicamente sera disparada por outro processo, e nao por o de redenrização

   /*  OLD
     String url = "https://github.com/orgs/git/people";           
    http.Response response= await http.get(Uri.parse(url));    //await espera a redenrização sequencialmente... parse para converter STRING P URI
    //sincronizar com a UI trend (principal)
*/

    Uri uri = Uri.https('github.com', '/orgs/git/people');        
    final future = http.get(uri);

    future.then((response){
      if(response.statusCode == 200){
      print('carregou');

    setState(() {
      //final membrosJson = jsonDecode(response.body);
      var membrosJson= json.decode(response.body) as List; 

      membrosJson.forEach((element) {print(element['login']);});
      
    });
      }else{print('erro');}
  });
  }

  Widget _buildLinha(int posAtual){
    return ListTile(
      title: Text("${_membros[posAtual].login}", style: _font,),
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        backgroundImage: NetworkImage(_membros[posAtual].avatarUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {   
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _membros.length,
      itemBuilder: (BuildContext context, int posAtual){
        return _buildLinha(posAtual);
      },
    );

  }  

}

class GitAppWidget extends StatefulWidget{
  @override
  /*State<StatefulWidget> createState() {     
  }   ou inline abaixo:*/
  
  createState() => GitAppState();

} 





















/*  codigo antigo... q usei p aprender

class GitAppState extends State<GitAppWidget>{   //aq ira definir o estado da debaixo
  @override
  Widget build(BuildContext context) {   //metodo build para redenrizar o layout
    return Center(
      child: Text("Componente externo"),

    );

  }  

}

class GitAppWidget extends StatefulWidget{
  @override
  /*State<StatefulWidget> createState() {      //obrigatorio tmb... classe de estado
    
  }   ou inline abaixo:*/
  
  createState() => GitAppState();

} */