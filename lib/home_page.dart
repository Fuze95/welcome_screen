import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const statusBarBlue = Color(0xFF102B5B);
    const headerBlue = Color(0xFF2196F3);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: statusBarBlue,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: statusBarBlue,
            elevation: 0,
          ),
        ),
        body: Container(
          color: Colors.teal,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 16.0),
                  color: headerBlue,
                  child: const Text(
                    'Flutter Demo Home Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),

                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/angela.png'),
                      ),
                      SizedBox(height: 20),

                      Text(
                        'Angela Yu',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),

                      Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(height: 20),

                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(height: 20),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.phone, color: Colors.teal),
                            title: Text(
                              '+94 765 785 434',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.email, color: Colors.teal),
                            title: Text(
                              'angela@gmail.com',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}