import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                child: RoomCard(
                  roomInfo: rooms[0],
                ));
          },
        ));
  }
}

class RoomCard extends StatelessWidget {
  final RoomInfo roomInfo;

  const RoomCard({Key? key, required this.roomInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.album),
            title: Text(roomInfo.name),
            subtitle: Text(roomInfo.master),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class RoomInfo {
  String name;
  String master;

  RoomInfo(this.name, this.master);
}

List<RoomInfo> rooms = [
  RoomInfo("Parnaíba das Trevas", "Germano"),
  RoomInfo("Aventura D&D", "Addisson"),
  RoomInfo("3D&T da bagunça", "Nabuco"),
];
