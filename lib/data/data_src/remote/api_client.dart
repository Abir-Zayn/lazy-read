import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:lazy_read_app/data/data_src/remote/api_constant.dart';
import 'package:lazy_read_app/data/data_src/remote/api_endpoint_urls.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions options;

  ApiClient() {
    options = BaseOptions(baseUrl: ApiConstant.mainURL);
    dio = Dio(options);
  }

  Options option = Options();

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
        throw ApiException(message: e.response!.statusMessage);
    }else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }


  /// POST Request
  Future <Response> postRequest (
    {
    required String path,
    dynamic body,
    bool isTokenRequired = false,
    }
  ) async {
    if(isTokenRequired == true){
      var token = "";
      options.headers =
          option.headers?..addAll({"Authorization": "Token $token"});
    }

    
  }
}
