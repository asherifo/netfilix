class Detailmodel {
  final int id;
  final String name;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final List<MoviePart> parts;

  Detailmodel({
    required this.id,
    required this.name,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    required this.parts,
  });

  factory Detailmodel.fromJson(Map<String, dynamic> json) {
    return Detailmodel(
      id: json['id'],
      name: json['name'],
      originalLanguage: json['original_language'],
      originalName: json['original_name'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      parts: (json['parts'] as List)
          .map((part) => MoviePart.fromJson(part))
          .toList(),
    );
  }
}

class MoviePart {
  final int id;
  final String title;
  final String originalTitle;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final String mediaType;
  final String originalLanguage;
  final List<int> genreIds;
  final double popularity;
  final String releaseDate;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MoviePart({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    required this.mediaType,
    required this.originalLanguage,
    required this.genreIds,
    required this.popularity,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MoviePart.fromJson(Map<String, dynamic> json) {
    return MoviePart(
      id: json['id'],
      title: json['title'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      mediaType: json['media_type'],
      originalLanguage: json['original_language'],
      genreIds: List<int>.from(json['genre_ids']),
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: json['release_date'],
      video: json['video'] ?? false,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'],
    );
  }
}
