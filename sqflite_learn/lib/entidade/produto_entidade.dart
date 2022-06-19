import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ProdutoEntidade extends Equatable{
  late int? produtosID;
  final String nome;
  final String descricao;
  final double valor;

  ProdutoEntidade({
    this.produtosID,
    required this.nome,
    required this.descricao,
    required this.valor,
  });
  

  @override
  List<Object?> get props => [produtosID];   //basicamente ta falando que isso é a identidade do objeto
}