import 'package:api_intregation_app/model/post.dart';
import 'package:http/http.dart' as http;

class PostHelper {
  final apiLink = "https://jsonplaceholder.typicode.com/posts";
  Future<List<PostModel>?> getPost() async {
    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json = response.body;
      return postModelFromJson(json);
    }
  }
}
