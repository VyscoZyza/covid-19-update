import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelompok 4 MDP A'),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        color: Colors.white30,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text(
                  'Covid-19 Update',
                  style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Versi : 1.0',
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.info_outline),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text(
                  'Developer',
                  style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Alvin Zulham Firdananta',
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.developer_mode),
                // onTap: () {
                //  _launchURL('my url');
                //  },
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text(
                  'UI/UX Designer',
                  style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Ahmad Naufal Athaya \nDewina Putri Firmani',
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.brush),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text(
                  'App Tester',
                  style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Muhammad Syafiqul Mahdi \nMuhammad Riski Nur Faris',
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.perm_device_information),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text(
                  'Special Thanks to',
                  style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Flutter \napi.kawalcorona.com \napi.coronatracker.com \ncoronavirus-19-api.herokuapp.com \nappicon.co \nvecteezy.com',
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.copyright),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
