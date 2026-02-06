void main() async {
  // 'async' keyword means: this function is allowed to use 'await'
  // It tells Dart: "I might need to pause and wait for something"

  // fetchPost() starts an asynchronous operation (it returns a Future immediately)
  // But the actual Post object is not ready yet — it will be ready after 2 seconds

  // 'await' keyword means: "pause here until the Future completes"
  // Dart will wait for fetchPost() to finish before moving to the next line
  final post = await fetchPost();
  print(post.title);
  print(post.userId);

  /* 
  fetchPost().then((p) {
    print(p.title);
    print(p.userId);
  });
  */
}

// This function returns a Future<Post>
// That means: "I will give you a Post object... but maybe not right now"
Future<Post> fetchPost() {
  // We simulate a delay (like waiting for a network request or database call)
  const delay = Duration(seconds: 2);

  // Future.delayed() creates a Future that completes after the specified time
  // After 2 seconds, the function inside () { ... } will run
  return Future.delayed(delay, () {
    // This code runs AFTER the 2-second delay
    print("   (inside fetchPost: creating the Post object now...)");

    // We create and return a real Post object
    return Post('Sample Title', '123');
  });
}

class Post {
  String title; 
  String userId;  

  // Constructor
  Post(this.title, this.userId);
}