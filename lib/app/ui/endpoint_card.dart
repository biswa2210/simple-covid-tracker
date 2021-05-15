import 'package:corona_app/app/services/api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
/*CREATED BY BISWARUP BHATTACHARJEE
EMAIL    : bbiswa471@gmail.com
PHONE NO : 6290272740
*/
  class EndpointCardData{
  EndpointCardData(this.title,this.assetName,this.color);
  final String title;
  final String assetName;
  final Color color;
}
class EndpointCard extends StatelessWidget {
  const EndpointCard({Key key,this.endpoint,this.value}) : super(key:key);
  final Endpoint endpoint;
  final int value;
  static Map<Endpoint,EndpointCardData> _cardData={
      Endpoint.cases:EndpointCardData('Cases','assets/count.png',Color(0xFFFFF492)),
      Endpoint.casesSuspected:EndpointCardData('Suspected Cases','assets/suspect.png',Color(0xFFEEDA28)),
      Endpoint.casesConfirmed:EndpointCardData('Confirmed Cases','assets/fever.png',Color(0xFFE99600)),
      Endpoint.deaths:EndpointCardData('Deaths','assets/death.png',Color(0xFFE40000)),
      Endpoint.recovered:EndpointCardData('Recovered','assets/patient.png',Color(0xFF70A901))
    };
    String get formattedValue{
      if(value==null){
        return '';
      }
      return NumberFormat('#,###,###,###').format(value);
    }
  @override
  Widget build(BuildContext context) {
    final cardData=_cardData[endpoint];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:8.0,vertical:7.0),
          child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:8.0,vertical:7.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                                Text(
                cardData.title,
                style:Theme.of(context).
                textTheme.
                headline6.
                copyWith(color:cardData.color,
                fontWeight: FontWeight.w700
                )
              ),
              SizedBox(height:8),
                      SizedBox(
                      height:52,
                      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[ 
              Image.asset(cardData.assetName,color: cardData.color),
              Text(
                formattedValue,
                style: Theme.of(context).textTheme.display1.copyWith(
                  color:cardData.color,
                  fontWeight:FontWeight.w500
                ),
              ),
            ],
            ),
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
