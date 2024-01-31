import 'package:get/get.dart';
import 'package:testapi/model/modelview.dart';
import 'package:testapi/service/dios.dart';


class DioController extends GetxController{
  RxList<ModelV> dioco =RxList();
  var url = "https://jsonplaceholder.typicode.com/posts";

  getdioco()async{
    var response  = await Dios().getMethod(url);
    if(response.statusCode ==200 ){
      response.data.forEach((element){
        dioco.add(ModelV.fromJson(element));
      });
      //print(response);
    }
  }

  @override
  void onInit() {
    getdioco();
    super.onInit();
  }
}