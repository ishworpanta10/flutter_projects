import 'package:flutter/material.dart';

class HelloWorldProject extends StatelessWidget {
  static const String routeName = '/helloProj';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World Project'),
        backgroundColor: Colors.teal[600],
      ),
      body: SingleChildScrollView(
        child: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Hello World Travel',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Discover the world',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                        semanticLabel: 'Image here',
                        height: 350.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: RaisedButton(
                        onPressed: () => contactUs(context),
                        child: Text(
                          'Contact Us',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('mail us at contact.us@mail.com'),
          actions: [
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Close',
              ),
            )
          ],
        );
      },
    );
  }
}
