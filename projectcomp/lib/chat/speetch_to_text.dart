
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'api_rest.dart';

class SpeetchToText extends StatefulWidget {
  const SpeetchToText({super.key});

  @override
  State<SpeetchToText> createState() => _SpeetchToTextState();
}

class _SpeetchToTextState extends State<SpeetchToText> {
  
  SpeechToText speechToText = SpeechToText();
  var text = "presionar";
  var respuesta = "";
  var escuchando = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 35,
        
        child: Stack(
          children: [
            Icon(escuchando ? Icons.mic : Icons.mic_none, color: Colors.white),
            GestureDetector(
              onTapDown: ((details) async{
                if(!escuchando){
                  var disponible = await speechToText.initialize();
                  if(disponible){
                    setState(() {
                      escuchando = true;
                      speechToText.listen(
                        onResult: (result){
                          setState(() {
                            text = result.recognizedWords;
                          });
                        }
                      );
                    
                    });
                  }
                }
              }),
              onTapUp: ((details) async{
                setState(() {
                  escuchando = false;
                  
                });
                speechToText.stop();
                var msg = await ApiServices.sendMessage(text);
                setState(() {
                  respuesta = msg;
                });
              }),
            ),
          ],
        )
      ),

      appBar: AppBar(
        title: const Text("chatbot"),
        backgroundColor: Colors.green,
      ),

      body: Stack(
        children: [
          Text(text),
          const SizedBox(height: 20),
          Text(respuesta),
        ],
      ),
      
      
    );
  }
}