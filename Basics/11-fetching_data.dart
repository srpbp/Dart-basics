// 1. We need two helpers (libraries) to do internet and JSON work
import 'package:http/http.dart' as http;          // helps us talk to websites
import 'dart:convert' as convert;               // helps us understand the answer from website

// This is the main function — Dart programs always start here
void main() async {
  
  // We use "async" because we want to wait for internet data
  // without freezing / blocking the whole program
  
  // "await" means: "please wait here until fetchPost() finishes"
  // This makes the code easier to read (looks like normal step-by-step code)
  final post = await fetchPost();

  // Once we have the post object → we can safely use its fields
  print(post.title);
  print(post.userId);
}

// This function's job is: go get data from the internet and return a Post object
// We write "Future<Post>" because:
// → the function does NOT finish immediately (it needs time to talk to server)
// → when it finally finishes → it will give us one Post object
Future<Post> fetchPost() async {

  // This is the web address we want to visit (like typing it in browser)
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  // http.get() contacts the website and asks for data
  // We use "await" because getting data from internet takes time (1–5 seconds usually)
  final res = await http.get(url);

  // The server sends back text → we convert that text into a Dart Map (key-value pairs)
  // jsonDecode is needed because websites usually send JSON format
  Map<String, dynamic> data = convert.jsonDecode(res.body);

  // We create a Post object using the two pieces we care about
  // (we could keep more fields, but for learning we keep it simple)
  return Post(data["title"], data["userId"]);
}

// This is our own custom type (like a small box to hold related information together)
// We created it so we can write post.title instead of data["title"]
// → much cleaner and safer (Dart knows title must be String)
class Post {
  String title;     // the name of the post
  String userId;    // who created it (number turned into String)

  // This is a short way to write a constructor
  // When someone writes: Post("hello", "5") → it automatically sets title and userId
  Post(this.title, this.userId);
}