import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/chat_details/chat_detail_page.dart';
import 'package:together/constant/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5a8fbb),
        title: Text("Telegram"),
        actions: [
          IconButton(icon: Icon(EvaIcons.searchOutline), onPressed: (){})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mahmoud Bdran",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              accountEmail: Text("mahmoud.bdran20@gmail.com",style:TextStyle(
                fontWeight: FontWeight.normal
              )),
              currentAccountPicture: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  image:DecorationImage(
                    image: AssetImage("images/profile.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            ListTile(
              leading: Icon(EvaIcons.peopleOutline), title: Text("Friends",style: GoogleFonts.poppins(
                fontSize: 17,
                color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(EvaIcons.personAddOutline), title: Text("Add friends",style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_iphone), title: Text("Contact us",style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.block), title: Text("Blocked accounts",style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(EvaIcons.settingsOutline), title: Text("Settings",style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(EvaIcons.shareOutline), title: Text("share account",style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(EvaIcons.questionMarkCircleOutline), title: Text("Help",style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.black54,
            ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body:   ListView.builder(
        itemCount:userMessages.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_) => ChatDetailPage()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 8),
              child: ListTile(
                leading:Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                          NetworkImage(userMessages[index]['img']),
                          fit: BoxFit.cover)),
                ),
                title:Text(
                  userMessages[index]['name'],
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(

                  userMessages[index]['message'] ,
                  style: TextStyle(
                      fontSize: 15, color: Colors.blueGrey.withOpacity(0.8)
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(

                  userMessages[index]['created_at'],
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey.withOpacity(0.8)
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
        },

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(EvaIcons.personAddOutline),
      ),
    );
  }
}
