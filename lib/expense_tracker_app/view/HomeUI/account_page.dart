import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(height: 10),
            Text(
              "Prason Jena",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade900,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Prasonjena@email.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(height: 30),

            // Options
            Expanded(
              child: ListView(
                children: [
                  _buildAccountTile(Icons.edit, "Edit Profile", () {}),
                  _buildAccountTile(Icons.lock, "Change Password", () {}),
                  _buildAccountTile(Icons.settings, "App Settings", () {}),
                  _buildAccountTile(Icons.dark_mode, "Toggle Theme", () {}),
                  _buildAccountTile(Icons.logout, "Logout", () {
                    // Add logout logic here
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountTile(IconData icon, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.teal.shade700),
          title: Text(title, style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: onTap,
        ),
      ),
    );
  }
}