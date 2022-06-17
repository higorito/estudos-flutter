import 'package:http/http.dart' as http;

const link ="https://jsonplaceholder.typicode.com";

class API{
  static Future getUsers()async{
    var url = link+ "/users";
    return await http.get(Uri.parse(url));
  }

}