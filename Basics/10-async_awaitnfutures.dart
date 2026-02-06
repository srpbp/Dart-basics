void main() async {
  // They represent a result of an asynchronous task that may take some time to complete
  // Futures => can have uncompleted or completed states

  // fetchPost().then((p) {
  //   print(p.title);
  //   print(p.userId);
  // });

  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() {
  const delay = Duration(seconds: 2);
  return Future.delayed(delay, () {
    return Post('Sample Title', '123');
  });
}

class Post {
  String title;
  String userId;

  Post(this.title, this.userId);
}
