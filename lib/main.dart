import 'package:first_flutter_app/quote.dart';
import 'package:first_flutter_app/quoteCard.dart';
import 'package:flutter/material.dart';

void main()  => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: "Quote 1",author: "Author 1"),
    Quote(text: "Quote 2",author: "Author 2"),
    Quote(text: "Quote 3",author: "Author 3")
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children:quotes.map((it) => QuoteCard(
            quote: it,
            delete: () {
              setState(() {
                quotes.remove(it);
              });
            }
        )).toList()
      ),
    );
  }
}

