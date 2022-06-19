class LoginControlar {

  setUser(String value) => _user = value;
  setSenha(String value)=> _senha = value;  
  String? _user;
  String? _senha;

  Future<bool> auten()async{
    print('usuario: '+_user.toString()+', senha: $_senha');  //deu ruim aq
    
    return false;
  }
}