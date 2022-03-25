import 'package:bloc_intro/post.dart';
import 'package:bloc_intro/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: BlocBuilder<PostCubit, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(title: Text(posts[index].title)),
            );
          });
        },
      ),
    );
  }
}
