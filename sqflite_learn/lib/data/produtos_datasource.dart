import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_learn/data/data_consts.dart';
import 'package:sqflite_learn/data/data_version.dart';
import 'package:sqflite_learn/entidade/produto_entidade.dart';

class produtosSQliteDataSource{
  Future<Database> _getDatabase() async{

    return openDatabase(
      join(await getDatabasesPath(),NOME_DATABASE),           //precisa unir o nome caminho com o q dei na constante
      onCreate: (db, version) async{      //caso n tenha vai criar o banco
        await db.execute(CRIAR_TABELA);

        //alimentando com dados p teste
        await db.rawInsert(
          '''insert into $NOME_DATABASE($COLUNA_NOME, $COLUNA_DESCRICAO, $COLUNA_VALOR)
          VALUES('cafezin', '100ml', 1'''
        );

      },
      version: kDATABASEVERSION,
    );
  }
              //quando recebe como argumento os dados ja estao aq
  Future criar(ProdutoEntidade produto) async{
    try {
      final Database db =await _getDatabase();  //p encontrar ou cria....

      //abaixo ta vindo o ID 
      produto.produtosID = await db.rawInsert(      
          '''
          insert into $NOME_DATABASE($COLUNA_NOME, $COLUNA_DESCRICAO, $COLUNA_VALOR)
          VALUES('${produto.nome}', '${produto.descricao}', '${produto.valor}')     
          '''
        );


    } catch (ex) {
      return;
    }

  }
}
/* MODO DE DELETAR O BANCO DE DADOS
    await deleteDatabase(
      join(getDatabasesPath(),NOME_DATABASE),
    );
*/