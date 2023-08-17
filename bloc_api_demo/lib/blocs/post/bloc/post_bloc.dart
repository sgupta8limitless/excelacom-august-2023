import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_api_demo/models/post_model.dart';
import 'package:meta/meta.dart';
import "package:http/http.dart" as http;


part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {

    

    on<PostInitialFetchEvent>((event, emit) async {

        emit(BeforePostState());

        List<PostModel> posts=[];
        try 
        {

       
          var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
          var response = await http.get(url);

          var result = jsonDecode(response.body);

          for(var postMap in result)
          {
            posts.add(PostModel.fromJson(postMap));
          }

        }
        catch(e)
        {
          log(e.toString());
        }

        emit(PostInitialFetchState(posts: posts));

    });

    on<PostCreateEvent>((event, emit) {

        

    });


    // on<PostInitialFetchEvent>(postInitialFetchEvent)


  }

  // FutureOr<void> postInitialFetchEvent(PostInitialFetchEvent event, Emitter<PostState> emit) {



  // }
}
