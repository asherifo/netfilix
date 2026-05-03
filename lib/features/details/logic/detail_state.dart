import 'package:netfilix/features/details/data/detail_model.dart';

class DetailState {}

class DetailInitialState extends DetailState {}

class DetailSuccessState extends DetailState {
  final Detailmodel detailmodel;

  DetailSuccessState({required this.detailmodel});
}

class DetailErrorState extends DetailState {
  final String errorDetail;

  DetailErrorState({required this.errorDetail});
}

class DetailLoadingState extends DetailState {}
