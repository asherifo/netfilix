import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilix/features/details/presentation/detailmovie.dart';
import 'package:netfilix/features/home/logic/cubit.dart';
import 'package:netfilix/features/home/logic/state.dart';

class NowWatchingWidget extends StatelessWidget {
  const NowWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 10),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Now Watching',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadingState) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                );
              } else if (state is HomeSuccessState) {
                return SizedBox(
                  height: 158,

                  child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detailmovie(indexMovie: index),
                              ),
                            );
                          },
                          child: Image.network(
                            "https://image.tmdb.org/t/p/w500${state.movies.results![index].posterPath!}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else if (state is HomeErrorState) {
                return Text(
                  state.errorMesage,
                  style: TextStyle(color: Colors.white),
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
