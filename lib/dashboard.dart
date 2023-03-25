import 'package:flutter/material.dart';
import 'package:latihan/detail_buku.dart';
import 'tourism_place.dart';
import 'data_buku.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: listBuku.length,
            itemBuilder: (context, index){
              final DataBuku buku = listBuku[index];
              return InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => detail(
                  //           place: place,
                  //         )
                  //     )
                  // );

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => detail(buku :buku)
                      )
                  );
                },
                child:Column(
                  children: [
                    Card(
                      child: Row(

                        children: [
                          Container(

                           height: 250,

                            child: Image.network(buku.imageLink),
                          ),

                          Container(

                            width: 230,
                            height: 230,
                            child: Column(
                              children: [
                                Container(

                                  width: 300,
                                  child:
                                  Text(buku.title,
                                    style: TextStyle(
                                        fontSize: 34
                                    ),textAlign: TextAlign.start,
                                  ),

                                ),
                                SizedBox(
                                  height: 30,
                                ),

                                Container(
                                  width: 300,


                                  child:
                                  Text(buku.author,
                                    style: TextStyle(
                                        fontSize: 17
                                    ),textAlign: TextAlign.start,

                                  ),
                                )

                              ],
                            )
                          ),

                          SizedBox(height: 30,)
                        ],
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                )
              );
            }
            ),
      ),
    );
  }
}
