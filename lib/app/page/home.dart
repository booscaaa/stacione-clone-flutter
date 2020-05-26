import 'package:flutter/material.dart';
import 'package:stacione/store/home/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final homeController = HomeController();
  @override
  void initState() {
    super.initState();
    homeController.init(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacione - Marau'),
        bottom: PreferredSize(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.drive_eta,
                color: Colors.white,
              ),
              Text('WWW-1010',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Hero(
          tag: 'login',
          child: Material(
              child: Container(
                  padding: EdgeInsets.all(2.0),
                  width: 60.0,
                  height: 60.0,
                  child: InkWell(
                    child: Container(
                        child: Icon(
                          Icons.add,
                          size: 28,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                            color: Theme.of(context).primaryColor)),
                    onTap: () async {},
                  )))),
      body: Container(
        child: TabBarView(
          controller: homeController.tabController,
          children: <Widget>[Text('asdsad'), Text('asdsad')],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          elevation: 45.0,
          child: new TabBar(
            controller: homeController.tabController,
            onTap: (val) async {
              switch (val) {
                case 0:
                  // Navigator.pushNamed(context, userDetailRoute);
                  break;
                case 1:
                  break;
                default:
              }
            },
            tabs: [
              Tab(
                text: "Tickets",
              ),
              Tab(
                text: "Informações",
              ),
            ],
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.black87,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(2.0),
            indicatorColor: Theme.of(context).primaryColor,
          )),
    );
  }
}
