
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/infrastructure/datasources/moviedb_datasource.dart';
import 'package:myapp/infrastructure/repositories/movie_repository_impl.dart';

final movieRepositoryProvider = Provider((ref){
  return MovieRepositoryImpl(MoviedbDatasource());
});