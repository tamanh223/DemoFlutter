import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'File Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          
          children: [
           Container(
            margin: EdgeInsets.fromLTRB(20, 20, 30, 20),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('File Manager', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Icon(Icons.home)),
                    Text('/ Apps/', 
                    style:TextStyle(fontWeight: FontWeight.bold , color: Colors.blue)),
                    Text('File Manager',
                    style: TextStyle(color: Colors.blue),)
                  ],
                )
              ],
            ),
           ),
            Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child:Container(
                
                  margin: EdgeInsets.fromLTRB(25, 5,50, 5),
                  constraints: BoxConstraints(maxWidth: 250),
                  
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      ItemFolder(
                        title: 'Home',
                        icon: Icons.home,
                        active: true,
                      ),
                      ItemFolder(
                          title: 'All', icon: Icons.folder, active: false,),
                      ItemFolder(
                          title: 'Recent', icon: Icons.history, active: false),
                      ItemFolder(
                          title: 'Starred', icon: Icons.star, active: false),
                      ItemFolder(
                          title: 'Recovery', icon: Icons.error, active: false),
                      ItemFolder(
                          title: 'Deleted', icon: Icons.delete, active: false),
                     Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, border: Border.all(color: Colors.blue),),
                      child:  ItemFolder(
                          title: 'Storage', icon: Icons.storage, active: false),
                     ),
                     Container(
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           LinearProgressIndicator( 
                                  backgroundColor: Colors.grey,
                                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                                  minHeight: 5,
                                  value: 0.25,
                                  ),
                      Text('25 GB OF 100 GB USED', style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                     ),

                     Container(
                      margin: EdgeInsets.only(top: 10),
                     
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, border: Border.all(color: Colors.blue),),
                      child:  ItemFolder(
                          title: 'Pricing Plan', icon: Icons.storage, active: false),
                     ),
                      Container(
                       
                        
                        margin: EdgeInsets.only(top: 20),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Trial Version',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'FREE',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '100 GB Space',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('selected',
                                  style: TextStyle(color: Colors.blue)),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                       
                        margin: EdgeInsets.only(top: 20),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Premium',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '5 dollas/Month',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '200 GB Space',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('Contact Us',
                                  style: TextStyle(color: Colors.blue)),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.white,
            
              margin: EdgeInsets.only(right: 5),
              child: Column(
                children: [
                  Expanded(
                      child: ListView(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'search',
                          ),
                        )),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          
                          children: [
                           
                            ElevatedButton.icon(
                                onPressed: () {}, label: Text('Add new'),icon: Icon(Icons.add),),
                            ElevatedButton.icon(
                                onPressed: () {},icon: Icon(Icons.upload, color: Colors.blue,), label: Text('Upload', style: TextStyle(color: Colors.blue),),style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.blue), backgroundColor: Colors.white))
                          ],
                        ))
                      ],
                    ),
                    const Text(
                      'All File',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Resently opened files',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Container(
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              child: Icon(
                                Icons.image_search,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'Logo.psd',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text(
                              '2.0 mb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              child: Icon(
                                Icons.image,
                                color: Colors.yellow,
                              ),
                            ),
                            Text(
                              'Project.zip',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text(
                              '1.90 gb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              child: Icon(
                                Icons.image,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'Backend.Xls',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text(
                              '2.0 gb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              child: Icon(
                                Icons.image,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'Requirement.Txt',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '0.90 kb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        )
                      ],
                    ),
                    const Text(
                      'Folders',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 50,
                          child: Row(
                              
                              children: [
                                Icon(
                                  Icons.image,
                                  color: Colors.orange,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Endless admin',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      '204 files, 50mb',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    )
                                  ],
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 50,
                          child: Row(children: [
                            Icon(
                              Icons.folder,
                              color: Colors.orange,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Endless admin',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '101 files, 10mb',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 50,
                          child: Row(children: [
                            Icon(
                              Icons.image,
                              color: Colors.orange,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Endless admin',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '25 files, 2mb',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 50,
                          child: Row(children: [
                            Icon(
                              Icons.folder,
                              color: Colors.orange,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Endless admin',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '108 files, 5mb',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )
                          ]),
                        ),
                      ],
                    ),
                    const Text(
                      'Files',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              child: Icon(
                                Icons.image,
                                color: Colors.yellow,
                              ),
                            ),
                            Text(
                              'Project.Zip',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text(
                              '1.90 gb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              child: Icon(
                                Icons.image,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'Backend.Xls',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text(
                              '2.00 gb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              child: Icon(
                                Icons.image,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'Requirement.Txt',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '0.90 kb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          color: Color.fromARGB(255, 191, 178, 224),
                          width: 150,
                          height: 200,
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                              color: Colors.white,
                              width: 100,
                              height: 80,
                              child: Icon(
                                Icons.image,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'Logo.Psd',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '2.00 mb',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'last open: 1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ]),
                        )
                      ],
                    ),
                  ])),
                ],
              ),
            ))
          ],
        ),
         )]) ),
    );
  }
}

class ItemFolder extends StatefulWidget {
  const ItemFolder(
      {super.key,
      required this.title,
      required this.icon,
      required this.active});
  final String title;
  final IconData icon;
  final bool active;

  @override
  State<ItemFolder> createState() => _ItemFolderState();
}

class _ItemFolderState extends State<ItemFolder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: widget.active ? Colors.blue : Colors.white54,
      child: ListTile(
        title: Text(
          '${widget.title}',
          style:
              TextStyle(color: widget.active ? Colors.white : Colors.black54),
        ),
        leading: Icon(
          widget.icon,
          color: widget.active ? Colors.white : Colors.black54,
        ),
      ),
    ));
  }
}
