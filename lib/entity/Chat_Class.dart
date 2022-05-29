class chatClass {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final int newMessage;

  chatClass({this.name, this.message, this.time, this.avatarUrl, this.newMessage});
}

List<chatClass> temporalData = [
  new chatClass(name: "Ama Ana", message: "Holiwis!, ¿Descongelaste el pollo?", time: "4:30", avatarUrl: "https://eresmama.com/wp-content/uploads/2021/11/shutterstock_1669735723-2-768x512.png?auto=webp&quality=45&width=1200&crop=16:9,smart,safe", newMessage: 1),
  new chatClass(name: "Curso Libre", message: "Hey! Recuerden la tarea", time: "3:30", avatarUrl: "https://conceptodefinicion.de/wp-content/uploads/2014/03/codigo-.jpg", newMessage: 1),
  new chatClass(name: "Hey Dani", message: "Nop, no quiero ir a clase!", time: "Ayer", avatarUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Hey_2018_logo.svg/553px-Hey_2018_logo.svg.png?20200408204930", newMessage: 0),
  new chatClass(name: "Don Luis", message: "Estoy bien, gracias", time: "26/05/2022", avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Ax9nR3FLuMP00e3m6UVT71dpUQpxVWU-AcAphBrPGzXlG3kxmEJs9Qatd_oJrqCBxOA&usqp=CAU", newMessage: 0),
  new chatClass(name: "Amika", message: "Wenis Tardes xd", time: "26/05/2022", avatarUrl: "https://sarahmaker.com/wp-content/uploads/2020/07/SarahMaker-friendship-bracelets-2.jpg.webp", newMessage: 0),
  new chatClass(name: "Oila", message: "ya Comiste?", time: "25/05/2022", avatarUrl: "https://i.blogs.es/d86db0/meme-fry-1/450_1000.jpg", newMessage: 1),
];
