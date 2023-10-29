import 'package:blog_app/models/blog.dart';
import 'package:http/http.dart' as http;

class IndexService {
  static Future<List<Blog>>  getBlogs()async {
    try {
      final api = 'https://jsonplaceholder.typicode.com/posts';
      final res = await http.get(Uri.parse(api));
      final blogs = blogFromJson(res.body);
      return blogs;
    } catch (e) {
      rethrow;
    }
  }
}