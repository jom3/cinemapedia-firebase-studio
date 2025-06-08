
import 'package:myapp/domain/entities/movie.dart';
import 'package:myapp/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity( MovieMovieDB moviedb) => Movie(
    adult: moviedb.adult, 
    backdropPath: (moviedb.backdropPath != '') ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmj8qjOlj7WQ-GGuDPXkQRh2_x0nUR6WUSQA&s' : 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}', 
    genreIds: moviedb.genreIds.map((e)=>e.toString()).toList(), 
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage, 
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: (moviedb.posterPath != '') ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHkA7Q3OlLhnLBLe_nB8ok3NHC7MwX6Y_WL5pTj2atisqp2IpIJd_xAWpNtPlsV-UsOxc&usqp=CAU' : 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}', 
    releaseDate: moviedb.releaseDate, 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount
  );
}