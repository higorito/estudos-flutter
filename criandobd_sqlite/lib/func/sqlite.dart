class ConnectionSQL {
  static final CREATE_DATABASE = '''
  CREATE TABLE "contatos" (
    `id`	INTEGER PRIMARY KEY AUTOINCREMENT,
    `nome`	TEXT,
    `contato`	TEXT
  );
  ''';

  static String selecContato() {
    return 'select * from contatos;';
  }

  static String addContato(Contato contato) {
    return '''
    insert into contatos (nome, contato)
    values ('${contato.nome}', '${contato.contato}');
    ''';
  }

  static String attContato(Contato contato) {
    return '''
    update contatos
    set nome = '${contato.nome}',
    contato = '${contato.contato}'
    where id = ${contato.id};
    ''';
  }

  static String delContato(Contato contato) {
    return 'delete from contatos where id = ${contato.id};';
  }
}