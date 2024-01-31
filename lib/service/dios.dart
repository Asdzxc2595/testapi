import 'package:dio/dio.dart';

class Dios {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();
    return await dio.get(url,
        options: Options(responseType: ResponseType.json
        ,method:  "get"
        ),
        
        ).then((response) {
          //print(response);
          return response;
        });
  }
}
