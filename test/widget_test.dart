// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter_test/flutter_test.dart';
import 'package:xml/xml.dart';

void main() {

  final bookshelfXml = '''<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<cargCsclPrgsInfoQryRtnVo>
<ntceInfo/>
<cargCsclPrgsInfoQryVo>
<csclPrgsStts>수입신고수리</csclPrgsStts>
<vydf>83N</vydf>
<rlseDtyPridPassTpcd>N</rlseDtyPridPassTpcd>
<prnm>CRYOVAN PLAIN CURVED END SEAL BB4L BAGS STRAIGHT END SEAL AND ETC</prnm>
<ldprCd>AUMEL</ldprCd>
<shipNat>AU</shipNat>
<blPt/>
<dsprNm>부산항</dsprNm>
<etprDt>20001114</etprDt>
<prgsStCd>CAGE12</prgsStCd>
<msrm/>
<wghtUt>KG</wghtUt>
<dsprCd>KRPUS</dsprCd>
<cntrGcnt>0</cntrGcnt>
<cargTp/>
<shcoFlcoSgn>ANLU</shcoFlcoSgn>
<pckGcnt/>
<etprCstm>부산세관</etprCstm>
<shipNm>AUSTRALIA ENDEAV</shipNm>
<hblNo>7003478001</hblNo>
<prcsDttm>20001117172404</prcsDttm>
<frwrSgn/>
<spcnCargCd/>
<ttwg/>
<ldprNm>Melbourne</ldprNm>
<frwrEntsConm/>
<dclrDelyAdtxYn>N</dclrDelyAdtxYn>
<mtTrgtCargYnNm>N</mtTrgtCargYnNm>
<cargMtNo>00ANLU083N59007001</cargMtNo>
<cntrNo>HDMU2197204</cntrNo>
<mblNo>HDMUASWB0106072</mblNo>
<blPtNm/>
<lodCntyCd>AU</lodCntyCd>
<prgsStts>반출완료</prgsStts>
<shcoFlco>호주국립해운(주)</shcoFlco>
<pckUt>GT</pckUt>
<shipNatNm>호주</shipNatNm>
<agnc>ANL CONTAINER LINE LTD.</agnc>
</cargCsclPrgsInfoQryVo>
<tCnt>9</tCnt>
<cargCsclPrgsInfoDtlQryVo>
...
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>동방보세창고</shedNm>
<prcsDttm>20001116142723</prcsDttm>
<dclrNo>0391109500909850</dclrNo>
<rlbrDttm>2000-11-16 13:54:30</rlbrDttm>
<wght>8230</wght>
<rlbrBssNo>20375001103374</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>반출신고</cargTrcnRelaBsopTpcd>
<pckUt>GT</pckUt>
<rlbrCn>수입신고 수리후 반출</rlbrCn>
<shedSgn>03911095</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>동방보세창고</shedNm>
<prcsDttm>20001116133753</prcsDttm>
<dclrNo>20375001103374</dclrNo>
<rlbrDttm/>
<wght>8230</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>수입신고수리</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>03911095</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>동방보세창고</shedNm>
<prcsDttm>20001116102811</prcsDttm>
<dclrNo>20375001103374</dclrNo>
<rlbrDttm/>
<wght>8230</wght>
<rlbrBssNo>수정합동관세사무소</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>수입신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>03911095</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>동방보세창고</shedNm>
<prcsDttm>20001116094631</prcsDttm>
<dclrNo>0391109500009397</dclrNo>
<rlbrDttm>2000-11-15 09:44:13</rlbrDttm>
<wght>8230</wght>
<rlbrBssNo>03010010002000012648</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>반입신고</cargTrcnRelaBsopTpcd>
<pckUt>GT</pckUt>
<rlbrCn>보세운송 반입</rlbrCn>
<shedSgn>03911095/2-1</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>한국허치슨터미널(주)부산컨테</shedNm>
<prcsDttm>20001115155959</prcsDttm>
<dclrNo>03010010002000012648</dclrNo>
<rlbrDttm>(도)03911095 동방창</rlbrDttm>
<wght>8230</wght>
<rlbrBssNo>(주)국보</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>보세운송 신고 수리</cargTrcnRelaBsopTpcd>
<pckUt>GT</pckUt>
<rlbrCn/>
<shedSgn>03012240</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>한국허치슨터미널(주)부산컨테</shedNm>
<prcsDttm>20001115150712</prcsDttm>
<dclrNo>0301224000037486</dclrNo>
<rlbrDttm>2000-11-15 14:06:00</rlbrDttm>
<wght>8230</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>반입신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn>입항 반입</rlbrCn>
<shedSgn>03012240</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>한국허치슨터미널(주)부산컨테</shedNm>
<prcsDttm>20001114095847</prcsDttm>
<dclrNo>00030151513</dclrNo>
<rlbrDttm/>
<wght>8230</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>하선신고 수리</cargTrcnRelaBsopTpcd>
<pckUt>GT</pckUt>
<rlbrCn/>
<shedSgn>03012240</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>동방보세창고</shedNm>
<prcsDttm>20001114095817</prcsDttm>
<dclrNo/>
<rlbrDttm/>
<wght>8230</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>18</pckGcnt>
<cargTrcnRelaBsopTpcd>입항적하목록 심사완료</cargTrcnRelaBsopTpcd>
<pckUt>GT</pckUt>
<rlbrCn/>
<shedSgn>03911095</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
</cargCsclPrgsInfoQryRtnVo>
  ''';

  test('코로나 전체 통계', () {
    final document = XmlDocument.parse(bookshelfXml);
    final cargCsclPrgsInfoQryRtnVo = document.findAllElements('cargCsclPrgsInfoQryVo');
    var importstatics = <ImportStaticsModel>[];
            cargCsclPrgsInfoQryRtnVo.forEach((node) {
              importstatics.add(ImportStaticsModel.fromXml(node));
          node.findAllElements('csclPrgsStts').map((e) => e.text).forEach(print);


    });
            print(importstatics.length);
            importstatics.forEach((import) {
              print('${import.mblNo} : ${import.csclPrgsStts}');


            });
  });
}

class ImportStaticsModel{

  String? csclPrgsStts;
  String? prgsStts;
  String? prcsDttm;
  String? mblNo;
  String? cntrNo;
  String? cargTrcnRelaBsopTpcd;

  ImportStaticsModel({

    this.csclPrgsStts,
    this.prgsStts,
    this.prcsDttm,
    this.mblNo,
    this.cntrNo,
    this.cargTrcnRelaBsopTpcd,

});

  factory ImportStaticsModel.fromXml(XmlElement xml) {
    return ImportStaticsModel(

      csclPrgsStts: XmlUtils.searchResult(xml, 'csclPrgsStts'),
      prgsStts : XmlUtils.searchResult(xml, 'prgsStts'),
      prcsDttm : XmlUtils.searchResult(xml, 'prcsDttm'),
      mblNo : XmlUtils.searchResult(xml, 'mblNo'),
      cntrNo : XmlUtils.searchResult(xml, 'cntrNo'),
      cargTrcnRelaBsopTpcd : XmlUtils.searchResult(xml, 'cargTrcnRelaBsopTpcd'),
    );
  }
}

class XmlUtils {
  static String searchResult(XmlElement xml, String key) {
    return xml.findAllElements(key).map((e) => e.text).isEmpty
        ? ""
        : xml.findAllElements(key).map((e) => e.text).first;
  }
}




