import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _name = "shyam";
  int _number = 0123456789;
  int _year = 2021;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("Visa Card Details"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ListView(
        padding: EdgeInsets.all(11.0),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blueGrey[700],
            elevation: 50,
            shadowColor: Colors.blueGrey[900],
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => buildSheet(),
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                );
              },
              child: Container(
                height: 280,
                //width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "VISA CARD",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 65, bottom: 75),
                          child: Text(
                            _number.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 8,
                                color: Colors.white70),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _name,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          Text(
                            _year.toString(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            color: Colors.blueGrey[100],
            elevation: 10,
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "House Loan",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    Text(
                      "Rs.    ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey[800],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.blueGrey[100],
            elevation: 10,
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Car Loan",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    Text(
                      "Rs.    ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey[800],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.blueGrey[100],
            elevation: 10,
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Other Loan",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    Text(
                      "Rs.    ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueGrey[800],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextEditingController _nameC = TextEditingController();
  TextEditingController _numberC = TextEditingController();
  TextEditingController _yearC = TextEditingController();
  Widget buildSheet() => DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[200],
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            padding: EdgeInsets.all(30),
            child: ListView(
              controller: controller,
              children: [
                TextField(
                  controller: _nameC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter card name",
                    labelText: "card name",
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  maxLength: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _numberC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter card number",
                    labelText: "card number",
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _yearC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter card expire year",
                    labelText: "expire year",
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    textStyle: TextStyle(fontSize: 20),
                    primary: Colors.blueGrey,
                    onPrimary: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 10,
                  ),
                  onPressed: () {
                    setState(() {
                      _name = _nameC.text;
                      _number = int.parse(_numberC.text);
                      _year = int.parse(_yearC.text);
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ));
}

/** showDialog(
context: context,
builder: (context) {
return Dialog(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
child: Padding(
padding: const EdgeInsets.all(10.0),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
TextField(
controller: _nameC,
),
SizedBox(
height: 30,
),
ElevatedButton(
onPressed: () {
setState(() {
_name = _nameC.text;
});
Navigator.of(context).pop();
},
child: Text("press me")),
],
),
),
);
}); **/
