import 'package:clon_whatsapp/screen/Call_Screen.dart';
import 'package:clon_whatsapp/screen/Camera_Screen.dart';
import 'package:clon_whatsapp/screen/Chat_Screen.dart';
import 'package:clon_whatsapp/screen/Status_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, initialIndex: 1, length: 4)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  _launchURL(urlParameter) async {
    String url = urlParameter.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo ir a $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = new TabBar(
      isScrollable: true,
      controller: tabController,
      tabs: <Widget>[
        new Tab(
          icon: Icon(Icons.camera_alt),
        ), //0
        new Tab(text: "CHATS"), // 1
        new Tab(text: "ESTADOS"), // 2
        new Tab(text: "LLAMADAS"), // 3
      ],
    );

    AppBar appBar = new AppBar(
      title: new Text("WhatsApp"),
      bottom: tabBar,
      actions: <Widget>[
        Icon(Icons.search),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Contacto"),
                    content: Text("Desarrollado por Daniela Parrales"),
                    elevation: 24.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Linkedin"),
                        onPressed: () {
                          _launchURL("https://www.linkedin.com/in/daniela-parrales-0389531b7/");
                        },
                      ),
                    ],
                  );
                });
          },
        )
      ],
    );

    TabBarView tabBarView = new TabBarView(
      controller: tabController,
      children: <Widget>[
        new cameraScreen(),
        new chatScreen(),
        new statusScreen(),
        new callScreen(),
      ],
    );

    Widget floatingActionButton(Icon icon) {
      return new FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).accentColor,
        child: icon,
        onPressed: () {},
      );
    }

    Widget floatingActionButtonEdit(Icon editIcon, Icon cameraIcon) {
      return new Column(
        children: <Widget>[
          new FloatingActionButton(
            foregroundColor: new Color(0xff49646c),
            backgroundColor: new Color(0xffebf4fc), // #128C7E
            child: editIcon,
            onPressed: () {},
          ),
          SizedBox(height: 10),
          floatingActionButton(cameraIcon),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
      );
    }

    return new Scaffold(
        appBar: appBar,
        body: tabBarView,
        floatingActionButton: tabController.index == 1
            ? floatingActionButton(Icon(Icons.message))
            : tabController.index == 2
                ? floatingActionButtonEdit(Icon(Icons.edit), Icon(Icons.camera_alt))
                : tabController.index == 3
                    ? floatingActionButton(Icon(Icons.add_call))
                    : new Container());
  }
}
