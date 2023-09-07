import 'package:flutter/material.dart';

void main(){
  runApp(Task2());
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostExample(),
    );

  }
}

class PostExample extends StatefulWidget {
  const PostExample({super.key});

  @override
  State<PostExample> createState() => _PostExampleState();
}

class _PostExampleState extends State<PostExample> {

  Color colorchange = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
      ),
      body: Container(
        decoration: BoxDecoration(
        ),
        width: double.infinity,
        height: 400,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  CircleAvatar(
                   backgroundImage: NetworkImage("https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk="),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                      child: Text("Buthaina Nasser")),
                ],
              ),
            ),
            Container(
              child: Image(image: NetworkImage("https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk="),
                fit: BoxFit.cover,
                height:200 ,
                width: double.infinity,
              ),
            ),
            
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: (){
                            setState(() {
                              colorchange = Colors.red;
                            });
                          },
                          icon: Icon(Icons.brightness_1,color: colorchange,),
                      ),
                      Text("100")
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.comment,color: Colors.grey,),
                      ),
                      Text("100")
                    ],
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



