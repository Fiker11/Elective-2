import 'package:flutter/material.dart';
import 'package:telgram_drawer/add_account.dart';
import 'package:telgram_drawer/calls.dart';
import 'package:telgram_drawer/change_account.dart';
import 'package:telgram_drawer/contacts.dart';
import 'package:telgram_drawer/invite_friends.dart';
import 'package:telgram_drawer/my_profile.dart';
import 'package:telgram_drawer/new_group.dart';
import 'package:telgram_drawer/saved_messages.dart';
import 'package:telgram_drawer/settings.dart';
import 'package:telgram_drawer/telegram_features.dart';
import 'package:telgram_drawer/theme_change.dart';

class TelegramDrawer extends StatelessWidget {
  const TelegramDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('images/image.jpg'),
                ),
                const SizedBox(height: 8),
                const Text(
                  'fiker',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      icon: const Icon(
                        Icons.nightlight_round,
                        color: Colors.white70,
                        size: 22,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThemeChange(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 15,
              child: Icon(Icons.person_outline, color: Colors.black54),
            ),
            title: const Text('fifi'),
            trailing: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '1',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeAccount()),
              );
            },
          ),
          const Divider(),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.add, color: Colors.black54),
                title: const Text('Add Account'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAccount()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black54,
                ),
                title: const Text('My Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfile()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.group_outlined,
                  color: Colors.black54,
                ),
                title: const Text('New Group'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewGroup()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_outline,
                  color: Colors.black54,
                ),
                title: const Text('Contacts'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contacts()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.call_outlined, color: Colors.black54),
                title: const Text('Calls'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calls()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.bookmark_border,
                  color: Colors.black54,
                ),
                title: const Text('Saved Messages'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SavedMessages()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings_outlined,
                  color: Colors.black54,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.person_add_outlined,
                  color: Colors.black54,
                ),
                title: const Text('Invite Friends'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InviteFriends()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.question_mark_outlined,
                  color: Colors.black54,
                ),
                title: const Text('Telegram Features'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelegramFeatures()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
