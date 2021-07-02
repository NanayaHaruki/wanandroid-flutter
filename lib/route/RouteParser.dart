import 'package:flutter/material.dart';
import 'package:wanandroid/route/MyRoutePath.dart';

class MyRouterParser extends RouteInformationParser<MyRoutePath> {
  @override
  Future<MyRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    print("parseRouteInformation");
    final uri = Uri.parse(routeInformation.location);
    // Handle '/'
    if (uri.pathSegments.length == 0) {
      return MyRoutePath.home();
    }

    // Handle '/book/:id'
    if (uri.pathSegments.length == 2) {
      var moduleName = uri.pathSegments[0];
      var info = uri.pathSegments[1];
      if (moduleName == MODEL_NAME_WEB && info != null)
        return MyRoutePath.web({});
      return MyRoutePath.web({});
    }

    // Handle unknown routes
    return MyRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(MyRoutePath path) {
    print("restoreRouteInformation");
    if (path.isUnknown) {
      return RouteInformation(location: "/404");
    }
    if (path.isHome) {
      return RouteInformation(location: '/');
    }
    if (path.isWeb) {
      return RouteInformation(location: '/$MODEL_NAME_WEB/${path.info}');
    }
    return null;
  }
}
