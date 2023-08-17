part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}


class BeforePostState extends PostState{}

class PostInitialFetchState extends PostState{

  final List<PostModel> posts;

  PostInitialFetchState({required this.posts});

}
