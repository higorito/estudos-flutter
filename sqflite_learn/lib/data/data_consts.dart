//aq sera armazenada as constantes dos banco de dados... tabelas, atributos etc

const String NOME_DATABASE = 'produtos_db';
const String COLUNA_PRODUTOS = 'produtos';
const String COLUNA_PRODUTOSID = 'produtosID';
const String COLUNA_NOME = 'nome';
const String COLUNA_DESCRICAO = 'descricao';
const String COLUNA_VALOR = 'valor';

const String CRIAR_TABELA = '''CREATE TABLE $COLUNA_PRODUTOS(
  $COLUNA_PRODUTOSID INTEGER PRIMARY KEY,
  $COLUNA_NOME TEXT,
  $COLUNA_DESCRICAO TEXT,
  $COLUNA_VALOR REAL
)
''';

