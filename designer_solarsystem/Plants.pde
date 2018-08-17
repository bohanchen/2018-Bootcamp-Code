class Planet{
  float angle;
  float oribitSpeed;
   
  // load all assets
  PImage Designer;
  PImage Architect;
  PImage Artists;
  PImage Data_Designer;
  PImage Graphic_Designer;
  PImage Product_Designer;
  //load architect
  PImage Alvar_Aalto;
  PImage Arata_Isozaki;
  PImage Frank_Lioyd;
  PImage Gio_Ponti;
  PImage Hannes_Meyer;
  PImage Ludwig_Mies;
  PImage Robert_Venturi;
  PImage Walter_Gropius;
  PImage Zaha_Hadid;
  //loat artist
  PImage Ai_Weiwei;
  PImage Andy_Warhol;
  PImage Damien_Hirst;
  PImage Mitsuo_Katsui;
  PImage Ryoji_ikeda;
  PImage Yayoi_Kusama;
  //load data designer
  PImage Charles_Joseph;
  PImage Edward_Tufte;
  PImage Florence_Nightengale;
  PImage Harry_Beck;
  PImage Otto_Neurath;
  PImage William_Playfair;
  //ProductDesigner
  PImage Charles_Eames;
  PImage Dieter_Rams;
  PImage Hans_Wegner;
  PImage Hartmut_Esslinger;
  PImage Jonathan_Ive;
  PImage Marc_Newson;
  PImage Marcel_Breuer;
  PImage Naoto_Fukasawa;
  PImage Sori_Yanagi;
  PImage Tord_Boontje;
  PImage Vener_Panton;
  PImage Arne_Jacobsen;
  
  //GraphicDesigner
  PImage Adolphe_Mouron;
  PImage Johannes_Itten;
  PImage Kazimir_Malevich;
  PImage Massimo_Vignelli;
  PImage Otl_Aicher;
  PImage Paul_Scher;
  PImage Richard_Wurman;
  PImage Saul_Bass;
  PImage Shigeo_Fukuda;
  

  Planet(float o){
    //angle = random(TWO_PI);
    angle = 0;
    oribitSpeed = o;
    
    Designer = loadImage("images/designer.png");
    Architect = loadImage("images/architect.png");
    Artists = loadImage("images/artists.png");
    Data_Designer = loadImage("images/data_designer.png");
    Product_Designer = loadImage("images/product_designer.png");
    Graphic_Designer = loadImage("images/graphic_designer.png");
    
    Alvar_Aalto = loadImage("images/Alvar_Aalto.png");
    Arata_Isozaki = loadImage("images/Arata_Isozaki.png");
    Frank_Lioyd = loadImage("images/Frank_Lioyd.png");
    Gio_Ponti = loadImage("images/Gio_Ponti.png");
    Hannes_Meyer = loadImage("images/Hannes_Meyer.png");
    Ludwig_Mies = loadImage("images/Ludwig_Mies.png");
    Robert_Venturi = loadImage("images/Robert_Venturi.png");
    Walter_Gropius = loadImage("images/Walter_Gropius.png");
    Zaha_Hadid = loadImage("images/Zaha_Hadid.png");
    
    Ai_Weiwei = loadImage("images/Ai_Weiwei.png");
    Andy_Warhol = loadImage("images/Andy_Warhol.png");
    Damien_Hirst = loadImage("images/Damien_Hirst.png");
    Mitsuo_Katsui = loadImage("images/Mitsuo_Katsui.png");
    Ryoji_ikeda= loadImage("images/Ryoji_ikeda.png");
    Yayoi_Kusama = loadImage("images/Yayoi_Kusama.png");
    
    Charles_Joseph = loadImage("images/Charles_Joseph.png");
    Edward_Tufte = loadImage("images/Edward_Tufte.png");
    Florence_Nightengale = loadImage("images/Florence_Nightengale.png");
    Harry_Beck = loadImage("images/Harry_Beck.png");
    Otto_Neurath= loadImage("images/Otto_Neurath.png");
    William_Playfair = loadImage("images/William_Playfair.png");
    
    Adolphe_Mouron = loadImage("images/Adolphe_Mouron.png");
    Johannes_Itten = loadImage("images/Johannes_Itten.png");
    Kazimir_Malevich = loadImage("images/Kazimir_Malevich.png");
    Massimo_Vignelli = loadImage("images/Massimo_Vignelli.png");
    Otl_Aicher= loadImage("images/Otl_Aicher.png");
    Paul_Scher = loadImage("images/Paul_Scher.png");
    Richard_Wurman = loadImage("images/Richard_Wurman.png");
    Saul_Bass = loadImage("images/Saul_Bass.png");
    Shigeo_Fukuda = loadImage("images/Shigeo_Fukuda.png");
    
    Charles_Eames = loadImage("images/Charles_Eames.png");
    Dieter_Rams= loadImage("images/Dieter_Rams.png");
    Hans_Wegner = loadImage("images/Hans_Wegner.png");
    Hartmut_Esslinger = loadImage("images/Hartmut_Esslinger.png");
    Jonathan_Ive = loadImage("images/Jonathan_Ive.png");
    Marc_Newson = loadImage("images/Marc_Newson.png");
    Marcel_Breuer = loadImage("images/Marcel_Breuer.png");
    Naoto_Fukasawa= loadImage("images/Naoto_Fukasawa.png");
    Sori_Yanagi = loadImage("images/Sori_Yanagi.png");
    Tord_Boontje = loadImage("images/Tord_Boontje.png");
    Vener_Panton = loadImage("images/Vener_Panton.png");
    Arne_Jacobsen = loadImage("images/Arne_Jacobsen.png");
    
  }
  
  void drawSun(){
     //"designer" the sun
     image(Designer, 0, 0);
  }
  
  void drawArchitect(){
    //architect
      pushMatrix();
      rotate(angle*3);
      translate(150, 0);
      image(Architect, 0, 0);    
      //add "people here" the satellies
        pushMatrix();
        rotate(angle);
        translate(56, 0);
        image(Alvar_Aalto, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.2);
        translate(80, 0);
        image(Arata_Isozaki, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*1.3);
        translate(90, 0);
        image(Frank_Lioyd, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2);
        translate(110, 0);
        image(Gio_Ponti, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2.2);
        translate(70, 0);
        image(Hannes_Meyer, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.5);
        translate(60, 0);
        image(Robert_Venturi, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*2);
        translate(60, 0);
        image(Walter_Gropius, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*3.5);
        translate(56, 0);
        image(Zaha_Hadid, 0, 0);
        popMatrix();
      popMatrix();
    angle += oribitSpeed;
  }
  
  void drawArtist(){
      //Artists
      pushMatrix();
      rotate(angle*2.5);
      translate(250, 0);
      image(Artists, 0, 0);    
      //add "people here" the satellies
        pushMatrix();
        rotate(angle);
        translate(56, 0);
        image(Ai_Weiwei, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.2);
        translate(80, 0);
        image(Andy_Warhol, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*1.3);
        translate(90, 0);
        image(Damien_Hirst, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2);
        translate(110, 0);
        image(Mitsuo_Katsui, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2.2);
        translate(70, 0);
        image(Ryoji_ikeda, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.5);
        translate(60, 0);
        image(Yayoi_Kusama, 0, 0);
        popMatrix();
      popMatrix();
  
  }
  
  void drawDataDesigners(){
    //Data_Designers
      pushMatrix();
      rotate(angle*2);
      translate(350, 0);
      image(Data_Designer, 0, 0);    
      //add "people here" the satellies
      pushMatrix();
        rotate(angle);
        translate(56, 0);
        image(Charles_Joseph, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.2);
        translate(80, 0);
        image(Edward_Tufte, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*1.3);
        translate(90, 0);
        image(Florence_Nightengale, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2);
        translate(110, 0);
        image(Harry_Beck, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2.2);
        translate(70, 0);
        image(Otto_Neurath, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.5);
        translate(60, 0);
        image(William_Playfair, 0, 0);
        popMatrix();
      popMatrix();
  
  }
  
  void drawProductDesigner(){
     //Product_Designer   
      pushMatrix();
      rotate(angle*1.5);
      translate(430, 0);
      image(Product_Designer, 0, 0);    
      //add "people here" the satellies
        pushMatrix();
        rotate(angle*2);
        translate(110, 0);
        image(Charles_Eames, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2.2);
        translate(70, 0);
        image(Dieter_Rams, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*1.5);
        translate(60, 0);
        image(Hans_Wegner, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.5);
        translate(60, 0);
        image(Hartmut_Esslinger, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*2);
        translate(60, 0);
        image(Jonathan_Ive, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*3.5);
        translate(56, 0);
        image(Marc_Newson, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*3.8);
        translate(110, 0);
        image(Marcel_Breuer, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*0.5);
        translate(70, 0);
        image(Naoto_Fukasawa, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*4.5);
        translate(60, 0);
        image(Sori_Yanagi, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2.4);
        translate(60, 0);
        image(Tord_Boontje, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*3.6);
        translate(60, 0);
        image(Vener_Panton, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*4.0);
        translate(56, 0);
        image(Arne_Jacobsen, 0, 0);
        popMatrix();
      popMatrix();
    
  }
    
   void drawGraphicDesigner(){
    //Graphic_Designer 
      pushMatrix();
      rotate(angle);
      translate(500, 0);
      image(Graphic_Designer, 0, 0);    
      //add "people here" the satellies
        pushMatrix();
        rotate(angle);
        translate(56, 0);
        image(Adolphe_Mouron, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.2);
        translate(80, 0);
        image(Johannes_Itten, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*1.3);
        translate(90, 0);
        image(Kazimir_Malevich, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2);
        translate(110, 0);
        image(Massimo_Vignelli, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*2.2);
        translate(70, 0);
        image(Otl_Aicher, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.5);
        translate(60, 0);
        image(Paul_Scher, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*1.5);
        translate(60, 0);
        image(Richard_Wurman, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(-angle*2);
        translate(60, 0);
        image(Saul_Bass, 0, 0);
        popMatrix();
        
        pushMatrix();
        rotate(angle*3.5);
        translate(56, 0);
        image(Shigeo_Fukuda, 0, 0);
        popMatrix();
      popMatrix();
   }
   
}  
