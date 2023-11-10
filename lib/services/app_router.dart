import 'package:go_router/go_router.dart';
import 'package:rover_explorer/screens/manifest_list.dart';
import 'package:rover_explorer/screens/rover_list.dart';

final class AppRouter {
  static GoRouter config = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: RoverList.path,
        builder: (context, state) {
          return const RoverList(title: 'Mars Rover Explorer');
        },
        routes: <GoRoute>[
          GoRoute(
            name: 'manifest',
            path: 'manifest/:rover_name',
            builder: (context, state) {
              return ManifestList(
                title: 'Mars Rover Explorer',
                roverName: state.pathParameters['rover_name'] ?? 'not found',
              );
            },
          ),
        ],
      ),
    ],
  );
}
