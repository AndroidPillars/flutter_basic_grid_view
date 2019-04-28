import 'package:flutter/material.dart';
import 'package:flutter_basic_grid_view/detail_page_screen.dart';
import 'package:flutter_basic_grid_view/model/categories.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //Setting theme color
          primaryColor: Colors.red,
          //Setting button color
          accentColor: Colors.red,
          //Setting Text Theme
          textTheme: TextTheme(
              //Setting the body1 Text Color
              body1: TextStyle(color: Colors.black))),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyApp> {
  List<Categories> categoriesList;

  @override
  void initState() {
    categoriesList = new List<Categories>();
    categoriesList = loadCategories();
    super.initState();
  }

  List<Categories> loadCategories() {
    var categories = <Categories>[
      //adding all the categories of news in the list
      new Categories('assets/mail.png', "Mail"),
      new Categories('assets/video.png', "Videos"),
      new Categories('assets/location.png', "Location"),
      new Categories('assets/profile.png', "Profile"),
      new Categories('assets/images.png', "Image"),
      new Categories('assets/settings.png', "Settings"),
      new Categories('assets/messages.png', "Messages"),
      new Categories('assets/locker.png', "Locker")
    ];
    return categories;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // Generate 100 Widgets that display their index in the List
        children: List.generate(8, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.white,
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage(categoriesList[index].image),
                    width: 68.0,
                    height: 68.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      categoriesList[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                 switch (index) {
                          case 0:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(categoriesList[index].title)));
                            break;
                          case 1:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                          case 2:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                          case 3:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                          case 4:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                          case 5:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                          case 6:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                          case 7:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(categoriesList[index].title)));
                            break;
                          case 8:
                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DetailPage(
                                        categoriesList[index].title)));
                            break;
                        }
              },
            ),
          );
        }),
      ),
    );
  }
}
