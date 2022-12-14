class Horoscope {
  final String horoscopeName;
  final String horoscopeDate;
  final String horoscopeDetail;
  final String horoscopeLittleImg;
  final String horoscopeBigImg;
  Horoscope(this.horoscopeBigImg, this.horoscopeDate, this.horoscopeDetail,
      this.horoscopeLittleImg, this.horoscopeName) {}

  @override
  String toString() {
    // TODO: implement toString
    return "$horoscopeName  --  $horoscopeBigImg ";
  }
}
