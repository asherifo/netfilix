import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilix/features/home/data/movie_model.dart';
import 'package:netfilix/features/home/logic/state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  Dio dio = Dio();

  Future getNowPlaying() async {
    emit(HomeLoadingState());

    try {
      final response = await dio.get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=87903828b97a85b50c60fb3bbd960c55",
      );
      final resalt = MovieModel.fromJson(response.data);
      emit(HomeSuccessState(movies: resalt));
    } catch (e) {
      emit(HomeErrorState(errorMesage: e.toString()));
    }
  }
}
