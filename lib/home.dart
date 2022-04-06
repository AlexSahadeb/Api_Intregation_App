import 'package:api_intregation_app/helper/post_helper.dart';
import 'package:api_intregation_app/model/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PostModel>? posts;

  bool isloaded = false;
  getData() async {
    posts = await PostHelper().getPost();
    setState(() {
      isloaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: ListView.builder(
          itemCount: posts?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Text(posts![index].title),
            );
          }),
    );
  }
}
