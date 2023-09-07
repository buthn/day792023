import 'package:flutter/material.dart';
void main(){
  runApp(Task4());
}

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example2(),
    );
  }
}
class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text("Elevate Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){},child: Text("Material Button"),
              color: Colors.redAccent,
              textColor: Colors.white,
            ),
            TextButton(onPressed: (){}, child: Text("Click Me"),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
      ),
      drawer: Drawer(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                      child: Column(
                    children: [
                      CircleAvatar(),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                          child: Text("Buthaina Nasser")),
                    ],
                  )
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}


