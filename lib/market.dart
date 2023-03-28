import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdeneme/anasayfa.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer<Counter>(
            builder: (context, counter, child) {
              return Text('Para : ${counter.count}',
                  style: TextStyle(fontSize: 30));
            },
          ),
        ],
        backgroundColor: Colors.orange[800],
        title: Text("Market"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[800]),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Anasayfa()),
                    );
                  },
                  child: Text("Anasayfa")),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[800],
        onPressed: () {
          Provider.of<Counter>(context, listen: false).parayiAzalt();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
