class SliderModel{
  String imagePath, title, desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagePath){
    imagePath = getImagePath;
  }

  void setTitle (String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

    String getTitle(){
    return title;
  }

    String getDesc(){
    return desc;
  }


}

List<SliderModel> getSlides(){
  List<SliderModel> slides = List<SliderModel>();
  SliderModel sliderModel = SliderModel();

  sliderModel.setImageAssetPath("assets/principal.jpg");
  sliderModel.setTitle("Aprenda");
  sliderModel.setDesc("Voce pode aprender sobre");
  slides.add(sliderModel);

   sliderModel = SliderModel();

  sliderModel.setImageAssetPath("assets/principal.jpg");
  sliderModel.setTitle("Testando segunda pagina");
  sliderModel.setDesc("TESTETEETETETEEFSDFFFFFFFFFFFFFFS");
  slides.add(sliderModel);

   sliderModel = SliderModel();

  sliderModel.setImageAssetPath("assets/principal.jpg");
  sliderModel.setTitle("Testando terceira");
  sliderModel.setDesc("TESTETEETETETEEFSDFFFFFFFFFFFFFFS");
  slides.add(sliderModel);

   sliderModel = SliderModel();
return slides;
}