import 'package:flutter/material.dart';
import 'package:listify/components/InfoAnnounce.dart';
import 'package:listify/data/ProductData.dart';

class DetailAd extends StatefulWidget {
  const DetailAd({super.key});

  @override
  State<DetailAd> createState() => _DetailsADState();
}

class _DetailsADState extends State<DetailAd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalhes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            // TODO: CRIAR PAGEVIEW NA EXIBIÇÃO DE TELA CHEIA
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          insetPadding: EdgeInsets.all(5),
                          child: Container(
                            height: 400,
                            child: Image.network(
                              products[0]['pictures'][index],
                              fit: (BoxFit.fill),
                              width: double.infinity,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Image.network(
                    products[0]['pictures'][index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          InfoAnnounce(
            title: 'Corsa',
            price: 'R\$ 15.000,00',
            description: 'Corsa 2005, 4 portas, 1.0, 8v, 4 pneus novos, 2 dono, 100.000km rodados, carro em ótimo estado de conservação.',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Container(
                height: 100,
                child: Dialog(
                  insetPadding:
                      EdgeInsets.symmetric(vertical: 200, horizontal: 50),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Informações do anunciante:',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Email:'),
                            Text(
                              'wcaio41@gmail.com',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Telefone:'),
                            Text(
                              '48988157712',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Anunciante:'),
                            Text(
                              'wcaio41',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.phone_android_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}