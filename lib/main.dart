import 'package:flutter/material.dart';
import 'package:navigasi_hero_widget/destination.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ibnu Bintang Balad Nezar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor:  const Color.fromARGB(255, 255, 191, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'F1 Redbull Racing Car'),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List car = [
    {
      "nama": "RB 11",
      "gambar": "RB_11.png",
      "deskripsi":
          "Following the seismic changes of 2014, the RB11 was born under relatively stable rules, with most of the alterations being carried out within the Sporting Regulations. There were subtle and impactful shifts, however, most notably regarding nose shape, which affected downstream aero, and a confirmation of changes to the rules regarding suspension systems. Once again hampered by a power deficit, the RB11 scored just three podiums as it took the Team to fourth place in the Constructors’ Championship."
    },
    {
      "nama": "RB 12",
      "gambar": "RB 12.jpg",
      "deskripsi":
          "Under a relatively stable rule set, there were few substantial visible differences between RB11 and RB12. But, while the 2016 car was an evolution of its predecessor there were some key changes, predicated by rule changes and by research. RB12 scored two wins, in Spain and Malaysia, 14 other podiums and one pole, at Monaco. "
    },
    {
      "nama": "RB 13",
      "gambar": "RB 13.jpg",
      "deskripsi":
          "For the 2017, Formula 1 introduced a comprehensive set of rule changes designed to reduce lap time, improve racing and result in more aggressive, racier-looking cars. Aston Martin Red Bull Racing’s response to the new rules et was the RB13, which won three times – in Azerbaijan, Malaysia and Monaco – and scored 10 other podiums."
    },
    {
      "nama": "RB 14",
      "gambar": "RB 14.jpg",
      "deskripsi":
          "After the major changes of 2017, the following season was a period of relative calm, with the most significant changes coming through controversial additions and subtractions. The Team’s RB14 scored four wins, in China, Monaco, Austria and Mexico and nine other podiums, as well two pole positions, in Monaco and Mexico."
    },
    {
      "nama": "RB 15",
      "gambar": "RB 15.jpg",
      "deskripsi":
          "A crucial regulation change for 2019 specified a much simplified front and rear wing assemblies. The switch initially caused issues but once again rapid and relentless development made the RB15 a three-time race winner and double pole position winner by the end of the season."
    },
    {
      "nama": "RB 16",
      "gambar": "RB 16.jpg",
      "deskripsi":
          "Ahead of the major rule changes coming in 2021, the 2020 Technical Regulations were stable and most of the changes, such as access to an extra MGU-K and reductions in testing, being contained in the Sporting Regulations. As such the design of RB16 was all about refinement of lessons learned from RB15 and exploiting areas where gains were still on offer."
    },
    {
      "nama": "RB 16 B",
      "gambar": "RB 16 b.jpg",
      "deskripsi":
          "2021 was supposed to be the dawn of a fresh start for Formula One, with a comprehensive redrawing of aerodynamic regulations set to usher in an entirely new generation of cars. Then Covid-19 arrived and plans changed rapidly. The new regs have been deferred for a year and 2020’s rules and homologated car designs are carried over for a second season. There are, however, a few tweaks and caveats. But what we have in 2021 is the RB16B and it’s ready to charge."
    },
    {
      "nama": "RB 18",
      "gambar": "RB 18.jpg",
      "deskripsi":
          "After a year’s delay due to COVID-19, the massive changes originally planned for 2021 make their debut in 2022. Tight financial regulations will constrain spending and revised sporting regulations will reshape race weekends. However, it's in the technical regulations that the biggest changes are occurring, as F1 ushers in a new generation of cars designed for closer racing and more action. Welcome to the RB18…"
    },
    {
      "nama": "RB 19",
      "gambar": "RB 19.jpg",
      "deskripsi":
          "During preseason testing in Sakhir at the Bahrain International Circuit, the car was immediately proven to be an improvement over its predecessor, the RB18, which was already dominant over its competitors. Pundits noted that the car looked stable, reliable and easy to drive, backed up by Red Bull topping the timesheets on both day 1 and day 3 of testing. When asked about where the car improved relative to its predecessor, reigning champion Max Verstappen stated that the car improved 'everywhere'."
    },
    {
      "nama": "RB 20",
      "gambar": "RB 20.jpeg",
      "deskripsi":
          "After the pre-season test in Sakhir at the Bahrain International Circuit, reigning champion Max Verstappen was reported to be 'pleased' with the car's characteristics; Red Bull, who only topped the first day of testing, opted not to focus on lap times. This pace was confirmed in the subsequent Bahrain Grand Prix, where Verstappen took pole position; he then proceeded to score his fifth career grand chelem during the race itself. His teammate Pérez finished in second, 22 seconds behind him. Verstappen took another dominant victory at the Saudi Arabian Grand Prix. Meanwhile, teammate Pérez finished in second place once more, this time 13 seconds behind him. This marked Verstappen's 100th career podium."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  final nama = car[index]['nama'];
                  final gambar = car[index]['gambar'];
                  final deskripsi = car[index]['deskripsi'];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DestinationPage(
                                    nama: nama,
                                    gambar: gambar,
                                    deskripsi: deskripsi,
                                    index: index,
                                  )));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Card(
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Hero(
                                // ignore: prefer_interpolation_to_compose_strings
                                tag: 'image$index',
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    // ignore: prefer_interpolation_to_compose_strings
                                    "images/" + gambar,
                                    fit: BoxFit.cover,
                                    width: 250,
                                    height: 130,
                                  ),
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 12)),
                              Text(nama,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        )),
                  );
                }),
          ),
        ));
  }
}