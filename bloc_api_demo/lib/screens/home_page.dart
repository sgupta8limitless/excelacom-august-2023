import 'package:bloc_api_demo/blocs/post/bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PostBloc postBloc = PostBloc();

  @override
  void initState() {

    // MediaQuery.of(context).size.width;
    // postBloc.add(PostInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
            onPressed: (){
              postBloc.add(PostInitialFetchEvent());
            },
              child: Text("Get Data")
            ),
            BlocConsumer<PostBloc,PostState>(
              bloc: postBloc,
              builder: (context, state) {
      
                switch(state.runtimeType)
                {
                  case BeforePostState:
                  {
                    return Center(child: CircularProgressIndicator(),);
                  }
      
                  case PostInitialFetchState:
                  {
      
                   final statePosts = state as PostInitialFetchState;
      
                    return
                        
                        Expanded(
                         
                          child: ListView.builder(
                            itemCount: statePosts.posts.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.amber,
                                child: Column(
                                  children: [
                                    Text(statePosts.posts[index].title),
                                    Text(statePosts.posts[index].title),
                                  ],
                                ),
                              );
                            },
                          )
                      
                    );
                  }
                  default : 
                  {
                    return Text("No Data Fouund");
                  }
      
                }
                
              }, 
              
              listener: (context, state) {
                
              },
              ),
          ],
        ),
      ),
    );
  }
}