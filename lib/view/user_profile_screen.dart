import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  final String userName = 'Teste';
  final String email = 'teste@gmail.com';
  final String hiddenPassword = '******';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 100, 202),
        title: Text("Perfil de Usuário"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 176, 39, 103), const Color.fromARGB(255, 255, 77, 196)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, size: 70, color: Colors.white),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, color: const Color.fromARGB(255, 209, 114, 177)),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          _buildUserInfo(Icons.person, userName),
          _buildUserInfo(Icons.email, email),
          _buildUserInfo(Icons.visibility_off, hiddenPassword),
        ],
      ),
    );
  }

  Widget _buildUserInfo(IconData icon, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.black),
          title: Text(
            info,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
