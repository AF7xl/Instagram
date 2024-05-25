import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:instagram/repository/ModelClass/PostModelClass.dart';
import 'package:meta/meta.dart';

import '../repository/api/postapi.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  late PostModelClass postModelClass;
  Postapi postapi=Postapi();
  PostBloc() : super(PostInitial()) {
    on<Fetchpost>((event, emit) async { emit(PostStateLoading());
    try{

      postModelClass= await postapi.getPost(event.search);
      emit(PostStateLoaded());
    } catch(e){
      print(e);
      emit(PostStateError());}

    });
  }
}
