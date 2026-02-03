void main() {
  List<int> scores = [50, 75, 20, 99, 100, 30];
  
  /* 
  for (int i = 0; i < 5; i++) { // Simple for loop
    print("The scurrent values of i is $i");
  } 
  */
  
  // Loop through an array with if statement
  /* 
  for (int score in scores) {
    if (score > 50) {
      print("The score is $score");
    } else {
      print("Score not high enough");
    }
  } 
  */
  
  for (int score in scores.where((s) => s > 50)) { // Wear method, filtering arrays
    print("The score is $score");
  }
}