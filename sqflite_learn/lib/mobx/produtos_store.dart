import 'package:mobx/mobx.dart';

//flutter packages pub run build_runner build       no terminal    p gerar os set e get

//flutter packages pub run build_runner watch     atualiza automatico

part 'produtos_store.g.dart';  //gerar um arquivo pelo mobx
class ProdutoStore = _ProdutoStore with _$ProdutoStore;

abstract class _ProdutoStore with Store{
    //propriedades observaveis, p buildar quando alterar estado...
    @observable  //decoravel...
    String? _nome;
    
    @observable
    String? _descricao;
    
    @observable
    String? _valor;

    @computed              //?? '' se for nula retorna string vazia
    String get nome=>_nome ?? '';   //p ficar ouvindo o nome.. quando implementar

    @computed             
    String get descricao=>_descricao ?? '';

    @computed              
    String get valor=>_valor ?? '';

    @action
    attNome({required String nome}){
      _nome = this.nome;
    }
    @action
    attDescricao({required String descricao}){
      _descricao = this.descricao;
    }
    @action
    attValor({required String valor}){
      _valor = this.valor;   //talvez tera q converter
    }
}