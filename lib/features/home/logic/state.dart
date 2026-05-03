import 'package:netfilix/features/home/data/movie_model.dart';

class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {
  final String errorMesage;

  HomeErrorState({required this.errorMesage});
}

class HomeSuccessState extends HomeState {
  MovieModel movies;
  HomeSuccessState({required this.movies});
}
