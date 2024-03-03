class Post {
  String body;
  String author;
  int likeCount = 0;
  bool userLiked = false;

  Post(this.body, this.author);

  void likePost() {
    userLiked = !userLiked;

    if (userLiked) {
      likeCount += 1;
    } else {
      likeCount -= 1;
    }
  }
}
