import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // This creates the main scaffold for the app
    return Scaffold(
      // This sets the app bar at the top of the screen
      appBar: AppBar(
        // Sets the background color of the app bar
        backgroundColor: Colors.blueAccent,
        // Sets the title of the app bar
        title: const Text('My First Project'),
        // Centers the title in the app bar
        centerTitle: true,
      ),
      // This is the main body of the app
      body: Column(
        // Aligns the contents of the column to the center
        mainAxisAlignment: MainAxisAlignment.center,
        // Sets the maximum size of the column so column can take up all available space
        mainAxisSize: MainAxisSize.max,
        children: [
          // This is a row that contains two circular images
          Row(
            // Evenly spaces the contents of the row
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Sets the maximum size of the row so row can take up all available width
            mainAxisSize: MainAxisSize.max,
            children: [
              // This is the first circular image from the network
              ClipOval(
                child: Image.network(
                  "https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s",
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                  // This shows a loading indicator while the image is loading
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      // The image has finished loading
                      return child;
                    } else {
                      // The image is still loading, so show a progress indicator
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
              // This is the second circular image from the assets
              ClipOval(
                child: Image(
                  image: AssetImage("assets/images/img.jpg"),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          // This is a text widget that displays a message
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "The two images are displayed",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Suwannaphum",
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
