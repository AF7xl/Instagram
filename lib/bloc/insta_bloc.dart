import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:instagram/repository/ModelClass/InstaModelClass.dart';
import 'package:instagram/repository/api/api.dart';
import 'package:meta/meta.dart';

part 'insta_event.dart';

part 'insta_state.dart';

class InstaBloc extends Bloc<InstaEvent, InstaState> {
  late InstaModelClass instaModelClass;
  Instaapi instaapi = Instaapi();

  InstaBloc() : super(InstaInitial()) {
    on<FetchInsta>((event, emit) async {
      emit(InstaStateLoading());
      try {
        instaModelClass = await instaapi.getInsta(event.search);
        emit(InstaStateLoaded());
      } catch (e) {
        print(e);
        emit(InstaStateError());
      }
    });
  }
}
