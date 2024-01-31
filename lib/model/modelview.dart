import 'dart:convert';

List<ModelV> modelfrom(String str) {
  // ทำการแปลง String เป็น List<ModelV>
  List<dynamic> jsonData = json.decode(str);
  return List<ModelV>.from(jsonData.map((item) => ModelV.fromJson(item)));
}

class ModelV {
  late final int userId;
  late final int id;
  late final String title;
  late final String body;

  ModelV({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // ปรับปรุงฟังก์ชันนี้
  ModelV.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];
}




/*{
        "userId": 1,
        "id": 1,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  }, */