import 'package:netfilix/features/home/data/movie_model.dart';

class DetailState {}

class DetailInitialState extends DetailState {}

class DetailSuccessState extends DetailState {
  final MovieModel movieDetailModel;

  DetailSuccessState({required this.movieDetailModel});
}

class DetailErrorState extends DetailState {
  final String errorDetail;

  DetailErrorState({required this.errorDetail});
}

class DetailLoadingState extends DetailState {}
