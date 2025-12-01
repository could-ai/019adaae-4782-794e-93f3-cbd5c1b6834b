import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple.shade100,
              child: const Text('A'),
            ),
            title: const Text('Alice'),
            subtitle: const Text('Hey, how is it going?'),
            trailing: const Text('10:30 AM'),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: const Text('B'),
            ),
            title: const Text('Bob'),
            subtitle: const Text('See you tomorrow!'),
            trailing: const Text('Yesterday'),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green.shade100,
              child: const Text('C'),
            ),
            title: const Text('Charlie'),
            subtitle: const Text('Did you see the game?'),
            trailing: const Text('Mon'),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Placeholder for new chat
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}
