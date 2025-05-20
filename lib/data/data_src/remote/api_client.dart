import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:lazy_read_app/data/data_src/remote/api_constant.dart';
import 'package:lazy_read_app/data/data_src/remote/api_exception.dart';

/// ApiClient manages all remote data operations using Dio HTTP client
/// It handles common request/response processing and error handling
class ApiClient {
  late Dio dio;
  late BaseOptions options;

  /// Creates a new ApiClient with default configuration
  ApiClient() {
    options = BaseOptions(baseUrl: ApiConstant.mainURL);
    dio = Dio(options);
  }
  Options option = Options();

  /// Performs an HTTP GET request to the specified endpoint

  ///GET Request
  Future<Response> getRequest({
    required String path,
    bool isTokenRequired = false,
  }) async {
    if (isTokenRequired == true) {
      var token = "";
      options.headers =
          option.headers?..addAll({"Authorization": "Token $token"});
    }
    try {
      debugPrint("🚀============API REQUEST============🚀");
      debugPrint("Request Url: ${options.baseUrl + path}");
      var response = await dio.get(path, options: option);

      debugPrint("🔥============API RESPONSE============🔥");
      debugPrint("Status Code: ${response.statusCode}");

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(msg: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(msg: e.message);
      }
    }
  }

  /// POST Request
  /// Performs an HTTP POST request to the specified endpoint
  /// [path] The API endpoint path to request
  /// [body] The data to send in the request body
  Future<Response> postRequest({
    required String path,
    dynamic body,
    bool isTokenRequired = false,
  }) async {
    if (isTokenRequired == true) {
      var token = "";
      options.headers =
          option.headers?..addAll({"Authorization": "Token $token"});
    }

    try {
      debugPrint(
        "🚀============API REQUEST============🚀"
        "\nRequest Url: ${options.baseUrl + path}"
        "\nRequest Body: $body",
      );
      var response = await dio.post(path, data: body, options: option);
      debugPrint(
        "🔥============API RESPONSE============🔥"
        "\nStatus Code: ${response.statusCode}"
        "\nResponse Body: ${response.data}",
      );
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(msg: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(msg: e.message);
      }
    }
  }
}
