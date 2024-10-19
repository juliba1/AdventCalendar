import 'package:adventskalender/input/calendar.dart';
import 'package:flutter/material.dart';

class Calendar2022 extends Calendar{
  Calendar2022() {
    // Initialisiere spezifische Werte für 2022
    setTitle("Adventskalender 2022");
    setHeaders(_getHeaders());
    setTexts(_getTexts());
    setPictures(_getPictures());

    backgroundImage = 'assets/images/2022/background.png';

    primaryColor = Color.fromARGB(255,206,34,34);
    secundaryColor = Colors.white;
    setColors(primaryColor, secundaryColor);

    earlyPicture = "assets/images/2022/tooEarlyPicture.png";
    earlyHeader = "Schweinestall";
    earlyText = "Huch..., da bist du wohl im Schweinestall gelandet. Aber hier ist ein kleines süßes Babyschweinchen";
  }

  List<String> _getHeaders() {
    return [
      "Ulm",
      "Geisingen",
      "Renquishausen",
      "Oberhausen",
      "Tuttlingen",
      "Geisingen",
      "Geisingen",
      "Heidelberg",
      "Bochum",
      "Möhringen",
      "Geisingen",
      "Ulm",
      "Pfullendorf",
      "Tuttlingen - Haiterbach",
      "Sipplingen",
      "Geisingen",
      "Ulm - Tuttlingen/Geisingen",
      "Mühlheim",
      "Villingen",
      "Geisingen",
      "Ulm",
      "Hintschingen",
      "München",
      "Ulm",
    ];
  }

  List<String> _getTexts() {
    return [
      "Nach deinem erfolgreichen Rennen, waren wir auf dem Weg ins Donaustadion zur Siegerehrung. Wie immer dürfen witzige Bilder bei uns nicht fehlen.",
      "Beim entspannten Tik Tok durch swipen, sahen wir ein lustiges Video, in welchem Selfies mit der Front Kamera aufgenommen wurden. Natürlich mussten wir es direkt selber ausprobieren. Dabei sind viele tolle Bilder entstanden. (Und auch ein großer Lachflash)",
      "Eine kleine Reise zurück zu unseren Anfängen. Beim Fest auf dem Heuberg kamen wir zwei uns schon näher. Ein schönes Fest und eine schöne Heimfahrt, was kann es besseres geben.",
      "Unser Trip zum TopGolf. Nach anfänglichen Schwierigkeiten bei uns beiden, hat es immer besser funktioniert mit dem golfen. Beim Angry Birds Modus schenkten wir uns beide nicht viel, sodass jeder von uns mal gewonnen hat.",
      "Mittagspausen sind zu zweit viel schöner als alleine, ein kurzer Spaziergang, was kleines zu essen und zusammen entspannen.",
      "Das mit dem Volleyball müssen wir zwar nochmal üben, trotzdem hat es richtig viel Spaß gemacht mit euch zu spielen. Das hat nach dem guten Essen gut getan.",
      "Unser Abi Abschluss. Ein aufregender, aber auch etwas komischer, Tag ging bei euch Zuhause zu Ende. Beim Fotoshooting entstand dieses schöne Bild.",
      "Ein kleiner Unfall führt zu einem großen Lacher.",
      "Unser Besuch beim Bergwerkmuseum. Ca. 3-4 Stunden haben wir es ausgehalten, ein Besuch der Kohle Ausstellung, eine Minen Besichtigung und einen Aufstieg auf das Fördergerüst haben wir in der Zeit erlebt.",
      "Das Städtlefest in Möhringen war das erste mal, dass du mich bei den Wagges in Aktion gesehen hast.",
      "Eines meiner Lieblingsbilder. Keine besondere Situation, oder gestellte Posen. Einfach wir beide am rum albern vor dem schlafen gehen.",
      "Aus einem 'wir können doch kurz mal in den New Yorker gucken', wurde eine kleine Shopping Tour und aus der Shopping Tour wurde unsere Modenschau.",
      "Ein sehr besonderer Abend, ich habe noch nie so sehr auf Liedtexte geachtet. Zudem konnte ich mich auch noch nie so sehr mit ihnen identifizieren und mich in ihnen wiedererkennen. In meinem Kopf ist einfach die Silver Star, Blue Fire und Woodan zusammen.",
      "An diesem Tag hast du zum ersten mal meine Familie in Haiterbach kennengelernt. Dort angekommen, konnten wir zwei nicht lange in Ruhe unseren Kuchen essen. Wir wurden gebraucht beim Masken basteln. Dabei sind ein paar interessante Stücke entstanden.",
      "Unser erstes richtiges Date. Es hätte nicht besser laufen können, leckeres Essen, schöner Ausblick, wunderschöner Sonnenuntergang und dazu noch ein bezauberndes Mädchen. Einer der schönsten Abende mit dir.",
      "Wieder ein Bild aus der Anfangszeit unserer Beziehung. Das gemeinsame Kuscheln auf dem Sofa gehört einfach zu uns, wie die Salami bei mir auf die Pizza.",
      "Nach einem langen anstrengenden, aber auch erfolgreichen, Tag in Ulm, ging es zurück nach Hause. Das Eis auf dem Weg haben wir uns dabei sicher verdient.",
      "Ein auf den ersten Blick, recht wenig sagendes Bild. Für mich allerdings eins mit großer Bedeutung. Das Bild zeigt das erste Spiel bei dem du mir zugeschaut hast. Es ist nicht selbstverständlich, dass du dich 90 Minuten an den Spielfeldrand stellst und dem vorletzten Platz in der Landesliga beim Spielen zuguckst. Danke.",
      "Wer hätte gedacht, dass ich mal auf ein Wincent Weiß Konzert gehe, ich aufjedenfall nicht. An dem Abend hatte ich mega viel Spaß, die Atmosphäre, die Lieder, alles war perfekt und dich so euphorisch zu sehen war noch viel schöner.",
      "Das erste richtige Pärchenfoto von uns. Nach einem schönen Konzert von deiner Schwester, konnten wir einen fast genauso schönen Sonnenuntergang genießen, der wie dafür gemacht war, um unser erstes gemeinsames Bild zu machen.",
      "Nach anfänglichen Schwierigkeiten, haben wir es dann geschafft, ein Restaurant zu finden. Bei sehr leckerem Essen, entstand dieses tolle Bild. Eines meiner Lieblinge, bei dem du direkt meintest, es sehe in schwarz/ weiß noch viel besser aus.",
      "Ich bin bis heute überzeugt davon, dass du schon gekaufte Erdbeeren dabei hattest und die direkt in dein Korb gemacht hast. Beim Erdbeeren sammeln hast du mich komplett abgezogen, deine Schüssel war voll da hatte ich noch nicht mal die Hälfte. Es hat sehr viel Spaß gemacht.",
      "Ein sehr wichtiges Bild, an einem sehr wichtigen Tag (für mich). Ich weiß nicht was du an dem Tag mit mir gemacht hast, aber von dort an, habe ich dich mit anderen Augen gesehen. Es gibt wohl auch gute Seiten daran, die dritte Wahl zu sein.",
      "Ein sehr wichtiges Bild. Dich nach dem Rennen in den Arm zu nehmen, war ein unbeschreibliches Gefühl, dein erstes Rennen nach langer Zeit und ich durfte dabei sein und dich unterstützen. Ich war/bin der stolzeste Freund den es gibt.",
    ];
  }

  List<String> _getPictures(){
    pictures.add("assets/images/2022/door1.png");
    pictures.add("assets/images/2022/door2.png");
    pictures.add("assets/images/2022/door3.png");
    pictures.add("assets/images/2022/door4.png");
    pictures.add("assets/images/2022/door5.png");
    pictures.add("assets/images/2022/door6.png");
    pictures.add("assets/images/2022/door7.png");
    pictures.add("assets/images/2022/door8.png");
    pictures.add("assets/images/2022/door9.png");
    pictures.add("assets/images/2022/door10.png");
    pictures.add("assets/images/2022/door11.png");
    pictures.add("assets/images/2022/door12.png");
    pictures.add("assets/images/2022/door13.png");
    pictures.add("assets/images/2022/door14.png");
    pictures.add("assets/images/2022/door15.png");
    pictures.add("assets/images/2022/door16.png");
    pictures.add("assets/images/2022/door17.png");
    pictures.add("assets/images/2022/door18.png");
    pictures.add("assets/images/2022/door19.png");
    pictures.add("assets/images/2022/door20.png");
    pictures.add("assets/images/2022/door21.png");
    pictures.add("assets/images/2022/door22.png");
    pictures.add("assets/images/2022/door23.png");
    pictures.add("assets/images/2022/door24.png");

    return pictures;
  }
}