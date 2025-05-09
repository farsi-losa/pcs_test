import 'package:flutter/material.dart';

class DynamicListViewPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Reimbursement',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'image': 'images/coin.png',
      'status': 'unread',
      'date': 'today',
      'proses': 'approve',
    },
    {
      'title': 'Reimbursement',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'image': 'images/coin.png',
      'status': 'read',
      'date': '2023-10-01',
      'proses': 'reject',
    },
    {
      'title': 'Sickness',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'image': 'images/tablet.png',
      'status': 'unread',
      'date': '2023-10-01',
      'proses': 'approve',
    },
    {
      'title': 'Sickness',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'image': 'images/tablet.png',
      'status': 'unread',
      'date': '2023-10-01',
      'proses': 'approve',
    },
    {
      'title': 'Reimbursement',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'image': 'images/coin.png',
      'status': 'read',
      'date': '2023-10-01',
      'proses': 'reject',
    },
    {
      'title': 'Reimbursement',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'image': 'images/coin.png',
      'status': 'read',
      'date': '2023-10-01',
      'proses': 'reject',
    },
    {
      'title': 'Sickness',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'image': 'images/tablet.png',
      'status': 'unread',
      'date': '2023-10-01',
      'proses': 'approve',
    },
    {
      'title': 'Sickness',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'image': 'images/tablet.png',
      'status': 'unread',
      'date': '2023-10-01',
      'proses': 'approve',
    },

    // Add more items as needed
  ];

  DynamicListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            tileColor:
                item['status'] == 'unread'
                    ? Colors.blue.shade100
                    : Colors.white, // Change color based on status
            leading: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 97, 97, 97),
                        spreadRadius: 0,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    item['image'],
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      item['proses'] == 'approve'
                          ? Icons.check_circle
                          : Icons.cancel,
                      color:
                          item['proses'] == 'approve'
                              ? Colors.lightGreen
                              : Colors.redAccent,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item['title'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  item['date'],
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            subtitle: Text(item['description'], style: TextStyle(fontSize: 12)),
            onTap: () {
              // Handle item tap
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Selected ${item['title']}')),
              );
            },
          );
        },
      ),
    );
  }
}
