import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:Soundboard/sound-button.dart';
import 'package:Soundboard/sound.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  static const List<Sound> sounds = [
    Sound(file: "bittenicht", name: "Bitte nicht..."),
    Sound(file: "jeopardy", name: "Waiting..."),
    Sound(file: "kleinespende", name: "Spende"),
    Sound(file: "colareingepfiffen", name: "DIE COLA"),
    Sound(file: "kokain", name: "Überall Kokain"),
    Sound(file: "egal", name: "Egal...!"),
    Sound(file: "binichdrin", name: "Bin ich drin?"),
    Sound(file: "alarm", name: "Alarm!"),
    Sound(file: "gottbewahreeuropa", name: "Gott bewahre Europa"),
    Sound(file: "1und1", name: "1&1"),
    Sound(file: "fairundtransparent", name: "fair und transparent"),
    Sound(
        file: "wennderanschlusslaeuft", name: "...wenn der Anschluss läuft..."),
    Sound(file: "marceldavis1und1", name: "Marcel Davis 1&1"),
    Sound(file: "marceldavis", name: "Ich bin Marcel Davis"),
    Sound(file: "spacetaxitothesky", name: "Space Taxi To The Sky"),
    Sound(file: "ichkannnichtlesen", name: "Ich kann nicht lesen"),
    Sound(file: "beepimasheep", name: "Beep Beep I'm A Sheep"),
    Sound(
        file: "wasistdennmitkarstenlos", name: "Was ist denn mit Karsten los?"),
    Sound(file: "perversgeil", name: "Pervers geil!"),
    Sound(file: "paulgehweg", name: "Geh weg!"),
    Sound(file: "nichtmehranrufen", name: "Hört mal auf mich anzurufen!"),
    Sound(file: "isnetmehrnormal", name: "Is net mehr normal!"),
    Sound(file: "ahmehrere", name: "Da sind ja mehrere!"),
    Sound(file: "socremig", name: "XX so cremig!"),
    Sound(file: "ohh", name: "Ohh..."),
    Sound(file: "prost", name: "Prost!"),
    Sound(file: "goennungbeihitze", name: "Gönnung!"),
    Sound(file: "ichschwitze", name: "Ich schwitze..."),
    Sound(file: "weildasjaklarist", name: "Weil das ja klar ist..."),
    Sound(file: "10minuten", name: "10 Minuten!"),
    Sound(file: "emotionaldamage", name: "Emotional Damage"),
    Sound(file: "ganzehrlich", name: "Ganz ehrlich!"),
    Sound(file: "ernaehrung", name: "Ich achte auf meine Ernährung"),
    Sound(file: "backkammembert", name: "Der Backkammembert"),
    Sound(file: "werruftdaan", name: "Wer ruf da an?"),
    Sound(file: "ho", name: "Ho!"),
    Sound(file: "fettarme", name: "Fettarme"),
    Sound(file: "gorgonnzola", name: "Der Gorgonnzola"),
    Sound(file: "mahlzeit", name: "Mahlzeit!"),
    Sound(file: "mahlzeit_julian", name: "Mahlzeit Harrer"),
    Sound(file: "istmiregal", name: "Ist mir egal"),
    Sound(file: "directedbyrobert", name: "Directed By Robert"),
    Sound(file: "uwe", name: "Uwe Autotune"),
    Sound(file: "wochenendesaufengeil", name: "Wochenende, Saufen, GeIl"),
    Sound(file: "michirettetbier", name: "Michi rettet Bier"),
    Sound(file: "einenreintrinken", name: "Richtig einen reintrinken"),
    Sound(file: "dasgibtneanzeige", name: "Das gibt ne Anzeige"),
    Sound(file: "freitagistwochenende", name: "Freitag ist WE!"),
    Sound(file: "cremebrulee", name: "Creme Brulee"),
    Sound(file: "Ich_bin_eine_Biene", name: "Biene"),
    Sound(file: "Ich_bestaeube_dich", name: "Biene bestäubt"),
    Sound(file: "Du_wirst_gefickt", name: "Gefickt"),
    Sound(file: "Habicht", name: "Habicht"),
    Sound(file: "Kanaken", name: "Kanaken"),
    Sound(file: "Kuh", name: "Kuh"),
    Sound(file: "Meerschweinchen", name: "Meerschweinchen"),
    Sound(file: "LoL", name: "LOL"),
    Sound(file: "Tanzi_klatscht", name: "Tanzi Klatscht"),
    Sound(file: "nichtsotiefruediger", name: "Nicht so tief Rüdiger!"),
    Sound(file: "moewe", name: "JMöwe"),
    Sound(file: "kranplaetze", name: "Kranplätze!"),
    Sound(file: "guterutsch", name: "Gute Ruuutsch!"),
    Sound(file: "bistdugutgerutscht", name: "Bist du gut geruuutscht?"),
    Sound(file: "stroh", name: "Stroh"),
    Sound(file: "schreibtisch", name: "Schreibtisch"),
    Sound(file: "jungejunge", name: "Junge Junge Junge ..."),
    Sound(file: "jetztwerdichaberwild", name: "Jetzt werd ich aber wild..."),
    Sound(file: "leutekeinearbeit", name: "Leute kommen Arbeit nicht nach!"),
    Sound(file: "nichtbestanden", name: "Nicht bestanden!"),
    Sound(file: "sandmann", name: "Sandmann"),
    Sound(file: "gottbewahreeuropa", name: "Gott bewahre Europa"),
    Sound(file: "2x2eigenwertjingle", name: "2x2 Eigenwerte"),
    Sound(file: "spacetaxitothesky", name: "Space Taxi To The Sky"),
    Sound(file: "eliminatetheimpossible", name: "Eliminate the impossible..."),
    Sound(file: "maintitlefluet", name: "Main Title Orchestra"),
    Sound(file: "maintitletheme", name: "Main Title Theme"),
    Sound(file: "hyperspace", name: "Hyperspace"),
    Sound(file: "warp_new", name: "New Warp"),
    Sound(file: "thefinalfrontier", name: "The Final Frontier"),
    Sound(file: "Akkurat", name: "Akkurat"),
    Sound(file: "Bodenlos", name: "Bodenlos"),
    Sound(file: "Bre", name: "Bre"),
    Sound(file: "Cringe", name: "Cringe"),
    Sound(file: "Cringe_ARD", name: "Cringe ARD"),
    Sound(file: "Digga", name: "Digga"),
    Sound(file: "Geringverdiener", name: "Geringverdiener"),
    Sound(file: "Gommemode", name: "Gommemode"),
    Sound(file: "Macher", name: "Macher"),
    Sound(file: "Mittwoch", name: "Mittwoch"),
    Sound(file: "Papatastisch", name: "Papatastisch"),
    Sound(file: "Same", name: "Same"),
    Sound(file: "Sheesh", name: "Sheesh"),
    Sound(file: "Siu", name: "Siu"),
    Sound(file: "Slay", name: "Slay"),
    Sound(file: "Smash", name: "Smash"),
    Sound(file: "Sus", name: "SUS"),
    Sound(file: "Wild", name: "Wild"),
    Sound(file: "Wyld", name: "Wyld"),
    Sound(file: "ganz_besonderer_planeen", name: "Planeen"),
    Sound(file: "ich_hol_mir_jeden_tag", name: "Ich hole mir jeden Tag"),
    Sound(file: "kamera", name: "Kamera"),
    Sound(file: "no_shit_sherlock", name: "No shit Sherlock"),
    Sound(file: "stuhlschiss", name: "Stuhlschiss"),
    Sound(file: "zu_risiken_0", name: "Zu Risiken.. 0"),
    Sound(file: "zu_risiken_1", name: "Zu Risiken.. 1"),
    Sound(file: "zu_risiken_2", name: "Zu Risiken.. 2"),
    Sound(file: "zu_risiken_3", name: "Zu Risiken.. 3"),
    Sound(file: "heute_fick_ich_euch", name: "Heute fick ich euch"),
    Sound(file: "baumficker", name: "Baumficker"),
    Sound(file: "aliexpress", name: "Aliexpress schei*e"),
    Sound(file: "federball", name: "Federball"),
    Sound(file: "grillen", name: "Grillen"),
    Sound(file: "holz", name: "Holz!"),
    Sound(file: "keller", name: "Im Keller.."),
    Sound(file: "mund_auf", name: "Mund auf."),
    Sound(file: "mund_auf_rape", name: "MUND AUF!!"),
    Sound(file: "pferde", name: "Pferde"),
    Sound(file: "schokolade", name: "Schoki"),
    Sound(file: "terrare", name: "5m² Terrare"),
    Sound(file: "under_the_water", name: "Underwater"),
    Sound(file: "partyhard", name: "Ich dance mit de Gänse!"),
    Sound(file: "folgtmirinspartyland", name: "Das Partyland"),
    Sound(file: "dipdadee", name: "Dip Da Dee Dee Da"),
    Sound(file: "jesusehoh", name: "Jesus Eh Oh Eh Oh"),
    Sound(file: "buch", name: "Das Buch"),
    Sound(file: "emergency_number", name: "0118 999 881 999 119 7253"),
    Sound(file: "jeremy1000euro", name: "1000€ im Monat"),
    Sound(
        file: "mitderanderenhand",
        name: "Mit der flaschen Hand die Zähne putzen"),
    Sound(
        file: "jeremiesdatteln",
        name: "Diese Dattelsorte gibt mir mehr Satierty"),
    Sound(file: "manistdummimkopf", name: "Man ist dumm im Kopf"),
    Sound(
        file: "3kilozwiebeln", name: "Ich verabschiede mich von Lebensmitteln")
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Soundboard',
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepOrangeAccent,
            background: Colors.black,
            secondary: Colors.grey,
          ),
          useMaterial3: true),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MainPage(title: 'PXLs Soundboard', sounds: sounds),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title, required this.sounds});

  final String title;
  final List<Sound> sounds;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final AudioPlayer player = AudioPlayer();
  Sound? playingSound;

  void setPlayingSound(Sound? sound) {
    playingSound = sound;
  }

  void playSound(Sound sound) {
    // implement playing sound
    stopSound();
    player.play(AssetSource("sounds/${sound.file}.mp3"));
    player.onPlayerComplete.listen((event) {
      print("Audio has completed playing");
      setState(() {
        setPlayingSound(null);
      });
    });
    print("Playing sound ${sound.name}");
  }

  void stopSound() {
    // implement stop sound
    if (playingSound != null) {
      player.stop();
      print("Stopping sound ${playingSound?.name}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2,
        children: widget.sounds
            .map((sound) => GridTile(
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: SoundButton(
                      sound: sound,
                      onPlay: () {
                        playSound(sound);
                        setState(() {
                          setPlayingSound(sound);
                        });
                      },
                      onStop: () {
                        stopSound();
                        setState(() {
                          setPlayingSound(null);
                        });
                      },
                      playing: sound == playingSound,
                    ))))
            .toList(),
      ),
    );
  }
}
