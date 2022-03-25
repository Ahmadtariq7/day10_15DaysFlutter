import 'package:bloc_intro/post_cubit.dart';
import 'package:bloc_intro/posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostCubit>(
        create: (context) => PostCubit()..getPosts(),
        child: PostsView(),
      ),
    );
  }
}
