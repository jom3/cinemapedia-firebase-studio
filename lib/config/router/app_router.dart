
import 'package:go_router/go_router.dart';
import 'package:myapp/presentation/screens/movies/Home_Screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state)=> const HomeScreen()
    )
  ]
);