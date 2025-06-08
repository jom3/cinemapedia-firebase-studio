import 'package:dio/dio.dart';
import 'package:myapp/config/constants/environment.dart';
import 'package:myapp/domain/datasources/movies_datasource.dart';
import 'package:myapp/domain/entities/movie.dart';
import 'package:myapp/infrastructure/mappers/movie_mapper.dart';
import 'package:myapp/infrastructure/models/moviedb/moviedb_reponse.dart';

class MoviedbDatasource extends MoviesDatasource {

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMoviedbKey,
      'language': 'es-MX'
    }
  ));


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    
    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDBResponse.results
    .where((moviedb) => moviedb.posterPath != 'no-poster' )
    .map(
      (moviedb) => MovieMapper.movieDBToEntity(moviedb)
    ).toList();

    return movies;
  }



}