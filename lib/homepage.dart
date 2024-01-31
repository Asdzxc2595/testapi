import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapi/controller/dio_con.dart';

//import 'service/dios.dart';
class Homepage extends StatelessWidget {
  Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    //Dios().getMethod("https://jsonplaceholder.typicode.com/posts");
    return Scaffold(
      appBar: AppBar(
        title: Text('getx api'),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:Obx(() =>  ListView.builder(
          itemCount:  DioController().dioco.length,
          itemBuilder: (ctx, i) {
            return Card(
                child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amberAccent[400],
                    borderRadius: BorderRadius.circular(7)),
                child:
                    Center(child: Text(DioController().dioco[i].id.toString())),
              ),
              title:  Text(
                DioController().dioco[i].title.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              subtitle: Text(DataTableThemeData.Dios[i].body.toString()),
            ));
          },
        ),
      ),)
    );
  }
}
