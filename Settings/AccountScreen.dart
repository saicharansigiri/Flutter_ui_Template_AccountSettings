import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracker/Screens/Settings/EditPage.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsTwoPage();
  }
}




class SettingsTwoPage extends StatefulWidget {
  @override
  _SettingsTwoPageState createState() => _SettingsTwoPageState();
}

class _SettingsTwoPageState extends State<SettingsTwoPage> {
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade600,
  );

  bool _emailNotify = true;
  bool _pushNotify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                CircularProfileAvatar("https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Sai Charan",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "India",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Card(
              elevation: 8,
              child: ListTile(
                title: Text(
                  "Languages",
                  style: GoogleFonts.montserrat(),
                ),
                subtitle: Text(
                  "English US",
                  style: greyTExt,
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.green.shade800,
                ),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                title: Text(
                  "Profile Settings",
                  style: GoogleFonts.montserrat(),
                ),
                subtitle: Text(
                  "Sai charan",
                  style: greyTExt,
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.green.shade800,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditPage()));
                },
              ),
            ),
            Card(
              elevation: 4,
              child: SwitchListTile(
                activeColor: Colors.green,
                title: Text(
                  "Email Notifications",
                  style: GoogleFonts.montserrat(),
                ),
                subtitle: Text(
                  _emailNotify ? "On" : "Off",
                  style: greyTExt,
                ),
                value: _emailNotify,
                onChanged: (val) {
                  setState(() {
                    _emailNotify = val;
                  });
                },
              ),
            ),
            Card(
              elevation: 4,
              child: SwitchListTile(
                activeColor: Colors.green,
                title: Text(
                  "Push Notifications",
                  style: GoogleFonts.montserrat(),
                ),
                subtitle: Text(
                  _pushNotify ? "On" : "Off",
                  style: greyTExt,
                ),
                value: _pushNotify,
                onChanged: (val) {
                  setState(() {
                    _pushNotify = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "Logout",
                style: GoogleFonts.montserrat(color: Colors.redAccent),
              ),
              trailing: Icon(
                Icons.login,
                color: Colors.red,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
