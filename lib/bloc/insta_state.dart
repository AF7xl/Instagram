part of 'insta_bloc.dart';

@immutable
abstract class InstaState {}

class InstaInitial extends InstaState {}
class InstaStateLoading extends InstaState{}
class InstaStateLoaded extends InstaState{}
class InstaStateError extends InstaState{}