
class Exam  {
  int id;
  String name;
  DateTime dateTime;
  List<String> prostori;


  Exam({required  this.id,required  this.name,required  this.dateTime,required  this.prostori});


  Exam.fromJson(Map<String, dynamic> data)
      : id = data["id"],
        name = data["name"],
        dateTime = data["dateTime"],
        prostori = data["prostori"];



  Map<String, dynamic> toJson() {

    return {'id': id, 'name': name, 'dateTime': dateTime, 'prostori':prostori};
  }
}
