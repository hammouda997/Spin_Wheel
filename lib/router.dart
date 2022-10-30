import 'package:auto_route/auto_route.dart';


import 'pages/pages.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  transitionsBuilder: TransitionsBuilders.fadeIn,
  routes: <AutoRoute>[
    
    AutoRoute(path:'/LoginDemo', page: LoginDemo),
  ],
)
class $AppRouter {}
