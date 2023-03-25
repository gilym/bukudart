import 'package:flutter/material.dart';
import 'data_buku.dart';


class detail extends StatefulWidget {



  final DataBuku buku;
  const detail({Key? key, required this.buku}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}


class _detailState extends State<detail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.buku.title),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,)
          ,
          Container(
            height: 300,
            child: Image.network(widget.buku.imageLink),
          ),
          SizedBox(height: 20,)
          ,
          Container(
            child: Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),

                },
                
                // Allows to add a border decoration around your table
                children:  [
                  TableRow(children :[
                    Text('Judul'),

                    Text(widget.buku.title),
                  ]),
                  TableRow(children :[
                    Text('Penulis',),

                    Text(widget.buku.author),
                  ]),
                  TableRow(children :[
                    Text('Bahasa'),

                    Text(widget.buku.language),
                  ]),
                  TableRow(children :[
                    Text('Negara'),

                    Text(widget.buku.country),
                  ]),
                  TableRow(children :[
                    Text('Jumlah Halaman'),

                    Text('${widget.buku.pages}'),
                  ]),
                  TableRow(children :[
                    Text('Tahun Terbit'),

                    Text('${widget.buku.year}'),
                  ]),
                  TableRow(children :[
                    Text('Status'),
                    if (widget.buku.isAvailable) Text('Tersedia',style: TextStyle(color: Colors.green),)
                    else Text("Tidak Tersedia" ,style: TextStyle(color: Colors.red),),
                  ]),
                ]
            ),
          )

        ],
      ),
    );
  }
}
