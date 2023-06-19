import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../widgets/general/text/mediumText.dart';

class AdminInformation extends StatelessWidget {
  static String routeName = "toplist";
  const AdminInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Öğren": 5,
      "Airdrop": 3,
      "Market": 2,
    };
    Map<String, double> dataMap2 = {
      "Defi ": 6,
      "NFT": 6,
      "Metaverse": 6,
    };
    return Scaffold(
        appBar: AppBar(
          title: MediumText(
              text: "Uygulama Özeti", color: Colors.red),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MediumText(
                    text: "Uygulamada Geçirilen Süre(Saat)",
                    color: Colors.red),
                SizedBox(
                  height: 30,
                ),
                graphicsData(dataMap, context),
                Divider(
                  height: 60,
                  color: Colors.red,
                ),
                MediumText(
                    text: "Airdrop Sayıları",
                    color: Colors.red),
                SizedBox(
                  height: 30,
                ),
                graphicsData2(dataMap2, context),
              ],
            ),
          ),
        ));
  }

  PieChart graphicsData2(Map<String, double> dataMap2, BuildContext context) {
    return PieChart(
      dataMap: dataMap2,
      animationDuration: Duration(milliseconds: 5200),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
    );
  }

  PieChart graphicsData(Map<String, double> dataMap, BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 1600),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
    );
  }
}