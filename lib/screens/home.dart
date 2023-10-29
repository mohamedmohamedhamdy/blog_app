import 'package:blog_app/models/blog.dart';
import 'package:blog_app/service/index.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<Blog>>(
          future: IndexService.getBlogs(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>  Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                    snapshot.data![index].body,
                    textAlign: TextAlign.center,
                  ),
              ),
            );
          },
        ),
      ),
    );
  }
}
