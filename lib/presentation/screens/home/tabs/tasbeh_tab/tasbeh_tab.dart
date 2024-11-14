import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_sun/core/assets_manager.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String> zekr = [
    'سبحان الله',
    'الله أكبر',
  ];
  int counter = 0;
  int ind = 0;
  double ang = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(AssetsManager.headLogo),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.1),
                child: Transform.rotate(
                  angle: ang,
                  child: Image.asset(AssetsManager.sebhaLogo),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text('عدد التسبيحات',
              style: theme.textTheme.headlineMedium!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              color: theme.dividerColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              counter.toString(),
              style: theme.textTheme.titleMedium!.copyWith(fontSize: 15),
            ),
          ),
          const Spacer(flex: 2),
          InkWell(
            onTap: onClicked,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: theme.dividerColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                '${zekr[ind]} ',
                style: theme.textTheme.bodyMedium!
                    .copyWith(fontSize: 15, color: theme.colorScheme.onPrimary),
              ),
            ),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }

  onClicked() {
    ang += 0.1;

    if (counter < 33) {
      counter++;
    } else {
      counter = 0;
      ind++;

      if (ind == zekr.length) {
        ind = 0;
      }
    }
    setState(() {});
  }
}
