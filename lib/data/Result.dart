class Result<T> {
  bool success = false;
  T data;
  String errorMsg = "";

  Result.success(T data) {
    this.data = data;
    this.success = true;
  }

  Result.error(String errorMsg) {
    this.success = false;
    this.errorMsg = errorMsg;
  }
}
