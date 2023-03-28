import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdeneme/market.dart';

class Counter with ChangeNotifier {
  int para = 20;
  int get count => para;

  void parayiArttir() {
    para++;
    notifyListeners();
  }

  void parayiAzalt() {
    if (para <= 0) {
      para == 0;
    } else {
      para--;
    }
    notifyListeners();
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
        actions: [
          Consumer<Counter>(
            builder: (context, counter, child) {
              return Text('Para : ${counter.count}',
                  style: TextStyle(fontSize: 30));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Market()),
                  );
                },
                child: Text("Market")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).parayiArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
