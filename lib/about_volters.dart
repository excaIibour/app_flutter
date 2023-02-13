import 'package:flutter/material.dart';

class AboutVolters extends StatefulWidget {
  const AboutVolters({Key? key}) : super(key: key);

  @override
  _AboutVoltersState createState() => _AboutVoltersState();
}

class _AboutVoltersState extends State<AboutVolters> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold (appBar: AppBar (
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://static.wixstatic.com/media/30f72c_85b92674c17d41f58d6ebfac42620c0b~mv2.png/v1/fill/w_478,h_43,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/LOGO4preto_PNG.png',
            fit: BoxFit.contain,
            height: 32,
            ),
          ],
       ),
      ),
      body: Stack (
        children: <Widget>[
          Image.network(
          'https://clickpetroleoegas.com.br/wp-content/uploads/2022/03/energia-solar_realidade-e-futuro-_2020.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
        ),
        Container(
           decoration: const BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                Colors.black,
                Colors.black26
              ],
            )
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
            height: 10,
              ),
            const Text(
              "ENERGIA LIMPA POR ASSINATURA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                  color: Colors.white,
                  ),
              ),
            const SizedBox(
            height: 10,
              ),
              const Text(
                "Energia mais BARATA e LIMPA para quem não consegue gerar sua própria energia",
                 textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  color: Colors.yellow,
                  ),
                ),
              const SizedBox(
              height: 20,
                            ),
                ElevatedButton(
                  style: ButtonStyle (
                    backgroundColor: MaterialStateProperty.all(Colors.yellow.shade300),
                    foregroundColor: MaterialStateProperty.all(Colors.black87),
                    elevation: MaterialStateProperty.all(10),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {/* ... */},
                  child: const Text('Seja um Volter!'),
                ),
              ],
             ),
            ],
          ),
       ),
    );
  }
}