

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMoviedbKey = dotenv.get('THE_MOVIEDB_KEY') ?? 'No hay apikey';
}