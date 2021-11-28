import 'package:api_dezzer/model/music.dart';
import 'package:flutter/material.dart';
import 'package:api_dezzer/model/music.dart';

class MusicaState extends StatefulWidget {
  MusicaState({Key? key}) : super(key: key);

  @override
  _MusicaStateState createState() => _MusicaStateState();
}

class _MusicaStateState extends State<MusicaState> {
  @override
  //final Musica = [];
  Widget build(BuildContext context) {
    final musica = [
      Musica(
          Id: '1',
          Grupo: 'Nirvana',
          Ncancion: 'Smile Like Spirit',
          Genero: 'Rock'),
          Musica(
            Id: '2', 
            Grupo: 'Metallica', 
            Ncancion: 'Nothing else matters', 
            Genero: 'Rock'),
            Musica(
            Id: '3', 
            Grupo: 'Metallica', 
            Ncancion: 'Enter Sandman', 
            Genero: 'Rock'),
            Musica(
            Id: '4', 
            Grupo: 'Adriana Grande', 
            Ncancion: '7 rings', 
            Genero: 'Rock')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Musica'),
        elevation: 1,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
        
          ),
        ],
        ),
        body: ListView.separated(
          itemBuilder: (_,i) => ListTile(
            title: Text(musica[i].Ncancion),
            
            
            trailing: Container(
              width: 13,
              height: 13,
              
            ),
          ), 
          separatorBuilder: (_,i)=> Divider(), 
          itemCount: musica.length
          ),
    );
  }
}
