class Funcionario{
  String id;
  String nome;
  String idade;
  String email;

  Funcionario(this.id, this.nome, this.idade, this.email);
  Funcionario.fromMap(Map map){
    id = map[id];
    nome = map[nome];
    idade = map[idade];
    email = map[email];

  }


}