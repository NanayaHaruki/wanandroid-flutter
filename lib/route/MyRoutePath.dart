const MODEL_NAME_WEB = "web";
const MODEL_NAME_404 = "404";

class MyRoutePath {
  final String modelName;
  final Map info;

  MyRoutePath.home()
      : info = null,
        modelName = null;

  MyRoutePath.web(this.info) : modelName = MODEL_NAME_WEB;

  MyRoutePath.unknown()
      : info = null,
        modelName = MODEL_NAME_404;

  bool get isWeb => modelName == MODEL_NAME_WEB && info != null;

  bool get isHome => modelName == null;

  bool get isUnknown => modelName == MODEL_NAME_404;
}
