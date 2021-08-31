import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/data.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile_image.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(
            CupertinoIcons.search,
            size: 28.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 26.0,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              CupertinoIcons.calendar,
              size: 28.0,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              CupertinoIcons.bell,
              size: 28.0,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            children: [
              UpcomingRooms(upcomingRooms: upcomingRoomsList),
              ...roomsList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor,
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        CupertinoIcons.add,
                        size: 21.0,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                        text: " Start a room",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            right: 40.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.circle_grid_3x3_fill,
                    size: 28.0,
                  ),
                ),
                Positioned(
                    right: 4.6,
                    bottom: 11.8,
                    child: Container(
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).accentColor),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
