import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Pooja Mishra"),
            accountEmail: const Text("Admin"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigate to Home
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Employees'),
            onTap: () {
              // Navigate to Employees
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Attendance'),
            onTap: () {
              // Navigate to Attendance
            },
          ),
          ListTile(
            leading: const Icon(Icons.summarize),
            title: const Text('Summary'),
            onTap: () {
              // Navigate to Summary
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.workspaces_outline),
            title: const Text('Workspaces'),
            children: <Widget>[
              ListTile(
                title: const Text('Adstacks'),
                onTap: () {
                  // Navigate to Adstacks
                },
              ),
              ListTile(
                title: const Text('Finance'),
                onTap: () {
                  // Navigate to Finance
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: () {
              // Navigate to Settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Handle Logout
            },
          ),
        ],
      ),
    );
  }
}
