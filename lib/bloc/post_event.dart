part of 'post_bloc.dart';

@immutable
abstract class PostEvent {}
class Fetchpost extends PostEvent{
  final String search;
  Fetchpost({required this.search});
}