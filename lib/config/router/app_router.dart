import 'package:forms_app/presentation/screen/screens.dart';
import 'package:go_router/go_router.dart';

import '../constants/constants.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: PathsConstants.homeScreenRoute,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: PathsConstants.cubitCounterScreenRoute,
      builder: (context, state) => const CubitCounterScreen(),
    ),
    GoRoute(
      path: PathsConstants.blocCounterScreenRoute,
      builder: (context, state) => const BlocCounterScreen(),
    ),
    GoRoute(
      path: PathsConstants.registerScreenRoute,
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
