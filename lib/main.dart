import 'package:flutter/material.dart';
import 'package:zzc/quiz.dart';

void main(){
  runApp(
      MaterialApp(
        home: Quiz(questaoId: 1, usuarioId: 1),
        debugShowCheckedModeBanner: false,
      )
  );
}