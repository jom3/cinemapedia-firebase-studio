

import 'package:myapp/domain/datasources/movies_datasource.dart';
import 'package:myapp/domain/entities/movie.dart';
import 'package:myapp/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {

  final MoviesDatasource datasource;
  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }

}