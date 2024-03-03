import 'package:basic_flutter_app/Post.dart';
import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(this.listItems);

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {

  void updateLikeCount(Function callBack) {
    setState(() {
      callBack;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.listItems.length,
      itemBuilder: (context, index) {
      var post = widget.listItems[index];
        
      return Card(
        child: Row(
          children: <Widget>[
              Container(child: Text(
                post.likeCount.toString(),
                style: TextStyle(
                fontSize: 20
              )),
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),),
              Expanded(child: ListTile(title: Text(post.body), subtitle: Text(post.author))),
              Row(children: <Widget>[
                IconButton(
                  onPressed: () => updateLikeCount(post.likePost),
                  icon: Icon(Icons.thumb_up_sharp),
                  color: post.userLiked ? Colors.green : Colors.black,
                ),])
            ],
          ),
        );
      },
    );
  }
}
