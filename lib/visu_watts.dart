import 'package:flutter/material.dart';

class VisuWatts extends StatefulWidget {
  const VisuWatts({Key? key}) : super(key: key);

  @override
  _VisuWattsState createState() => _VisuWattsState();
}

class _VisuWattsState extends State<VisuWatts> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text("Overview"),
          ),
          body: const ListTileWidget(),
      ),
    );
  }
}

  class ListTileWidget extends StatelessWidget {
    const ListTileWidget ({super.key});
  
   @override
  Widget build(BuildContext context) {
    return ListView(
          children: <Widget> [
            Card (
                color: Colors.green[100],
                child: const ListTile
                (
                  leading: Icon(Icons.home_work_sharp),
                  title: Text("Energia total"),
                  subtitle: Text("14634.90kWh"),
                  
                ),
            ),
                  const ListTile(
                  leading: Icon(Icons.event_note_rounded),
                  title: Text("Energia atual"),
                  subtitle: Text("0.0kWh"),
                ),
                Card(
                 color: Colors.grey[100],
                child: Container(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  <Widget>[
                       const Text(
                          "Capacidade",
                            style: TextStyle(
                              fontSize: 16,
                              ),
                        ),
                        const SizedBox(
                          height: 10,
                          ),
                        Image.network('https://cdn-icons-png.flaticon.com/512/3445/3445737.png',
                          width: 50,
                          ),
                      const SizedBox(
                      height: 10,
                      ),
                       const Text( 
                        "2066756W",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          ),
                      ),
                    ]
                   ),
                ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3458/3458272.png'),
                        backgroundColor: Colors.white,
          ),
                          title: Text('Sua planta'),
                          subtitle: Text("Data de instalação: 13-02-2023"),
                      ),
                        RichText(
                          text: TextSpan(
                            text: "Power(Current/Capacity): ",
                            style: const TextStyle(
                              color: Colors.black,
                                ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '5656W',
                                    style: TextStyle(
                                      color: Colors.green[500],
                                      fontFamily: 'Montserrat',
        ),
      ),
    ],
  ),
),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                    TextButton(
                      child: const Text('Saiba mais'),
                        onPressed: () {/* ... */},
                    ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
                ),
                  const SizedBox(
                  height: 50,
                ),
                Image.network("https://static.wixstatic.com/media/30f72c_a95aa827b5c04d31abbfd8fb04ddd4b5~mv2.png/v1/fill/w_172,h_172,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/logo_volters_rodap%C3%A9.png",
                 height: 100,
                   color: const Color.fromRGBO(255, 255, 255, 0.5),
                    colorBlendMode: BlendMode.modulate),
              ],
            );
  }
}