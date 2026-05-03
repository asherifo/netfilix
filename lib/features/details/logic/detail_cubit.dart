import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilix/features/details/data/detail_model.dart';
import 'package:netfilix/features/details/logic/detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(DetailInitialState());
  Dio dio = Dio();
  Future getDetailsMovie() async {
    emit(DetailLoadingState());
    try {
      final response = await dio.get(
        "https://api.themoviedb.org/3/collection/10?api_key=87903828b97a85b50c60fb3bbd960c55",
      );
      final results = Detailmodel.fromJson(response.data);

      emit(DetailSuccessState(detailmodel: results));
    } catch (e) {
      emit(DetailErrorState(errorDetail: e.toString()));
    }
  }
}
