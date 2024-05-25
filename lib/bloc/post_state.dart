part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}
class PostStateLoading extends PostState{}
class PostStateLoaded extends PostState{}
class PostStateError extends PostState{}