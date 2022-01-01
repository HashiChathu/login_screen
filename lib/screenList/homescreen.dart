import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:  [
            TextField(
              decoration: InputDecoration(
                hintText: "Search for app & games",
                prefixIcon: const Icon(Icons.search),
                suffix: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.mic)),
                    const CircleAvatar(),
                  ],
                ),
                border: const OutlineInputBorder()),
            ),
            Row(children: [
              const Text("Discover recommended games",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
            ),

            SizedBox(
              width: 300,
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Material(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(15),
                              child: Container(),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  
                                  children: [
                                    Material(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Column(
                                        children: [
                                          const Text("Pubg Mobile"),
                                          const Text("Shooting"),
                                          Center(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:const [
                                                Text("4.7"),
                                                Text("2.5GB"),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      height: 250,
                      width: 250,
                      
                    ),
                  );
                },
              ),
            ),
            Row(children: [
              const Text("Discover recommended games",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
            ),

            SizedBox(
              width: 300,
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Material(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(15),
                              child: Container(),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  
                                  children: [
                                    Material(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Column(
                                        children: [
                                          const Text("Pubg Mobile"),
                                          const Text("Shooting"),
                                          Center(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:const [
                                                Text("4.7"),
                                                Text("2.5GB"),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      height: 250,
                      width: 250,
                      
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}