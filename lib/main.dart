import 'package:flutter/material.dart';

void main() {
  runApp(Score_Changer());
}

// ignore: camel_case_types
class Score_Changer extends StatelessWidget {
  const Score_Changer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Changer',
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Changer'),
        centerTitle: true,
        backgroundColor: Colors.indigo[700],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[700],
        child: Icon(
          Icons.settings_backup_restore_sharp,
          size: 35,
        ),
        onPressed: reset,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Score is',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green[700],
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green[700],
                fontSize: 125,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.indigo[600],
                  child: Text('Increase'),
                  textColor: Colors.white,
                  onPressed: increaseNumber,
                ),

                SizedBox(
                  width: 20,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.red[600],
                  child: Text('Decrease'),
                  textColor: Colors.white,
                  onPressed: decreaseNumber,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          // left(
          //   child: Column(
          //     children: [
          //       Text(
          //         'Powered By :',
          //         style: TextStyle(
          //           fontSize: 12,
          //           fontStyle: FontStyle.italic,
          //           color: Colors.black38,
          //           fontWeight: FontWeight.w200,
          //         ),
          //       ),
          //       Image.network(
          //         'https://d1qltsnz4oe7fo.cloudfront.net/sms/resources/mdbootstrap/img/logo-main.png',
          //         height: 70,
          //         width: 100,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
