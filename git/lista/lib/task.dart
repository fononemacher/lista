class Task{
  bool feito=false;
  String msg="";
  int id;


  Task({this.msg : "", this.feito : false,}){
    id=DateTime.now().millisecondsSinceEpoch;

  }
}