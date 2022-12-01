void end_setup()
{
  end_scene = new Scene("End", "end_section.png");
  
  
  SceneChanger complete_game = new SceneChanger("complete_game", "title_screen");
  complete_game.set_image("icons/finish.png");
  complete_game.set_dimensions_according_to_image();
  complete_game.set_position(new PVector (wwidth / 2 - complete_game.owidth / 2, 25 * UF));
  complete_game.set_text("Sort memories first! Click here when you are done");
  
  
  DragObject skull = new DragObject("Skull");
  skull.set_position(new PVector (100 * UF, 50 * UF));
  skull.set_height(25 * UF);
  skull.set_width(25 * UF);
  skull.set_image("items/skull.png");
  skull.set_text("Skull Memory");
  skull.set_cutscene_ID("skull");
  
  DragObject locket = new DragObject("Locket");
  locket.set_position(new PVector (100 * UF, 100 * UF));
  locket.set_height(25 * UF);
  locket.set_width(25 * UF);
  locket.set_image("items/locket.png");
  locket.set_text("Locket Memory");
  locket.set_cutscene_ID("locket");
  
  
  DragObject teddy_bear = new DragObject("Teddy Bear");
  teddy_bear.set_position(new PVector (100 * UF, 150 * UF));
  teddy_bear.set_height(25 * UF);
  teddy_bear.set_width(25 * UF);
  teddy_bear.set_image("items/teddy_bear.png");
  teddy_bear.set_text("Teddy Bear Memory");
  teddy_bear.set_cutscene_ID("teddy_bear");
  
  
  DragObject wine_glass = new DragObject("Wine Glass");
  wine_glass.set_position(new PVector (250 * UF, 150 * UF));
  wine_glass.set_height(25 * UF);
  wine_glass.set_width(25 * UF);
  wine_glass.set_image("items/wine_glass.png");
  wine_glass.set_text("Wine Glass Memory");
  wine_glass.set_cutscene_ID("wine_glass");
  
  
  DragObject keys = new DragObject("Car Keys");
  keys.set_position(new PVector (200 * UF, 150 * UF));
  keys.set_height(25 * UF);
  keys.set_width(25 * UF);
  keys.set_image("items/car_keys.png");
  keys.set_text("Car Keys Memory");
  keys.set_cutscene_ID("car_keys");
  
  
  DragObject body = new DragObject("Body");
  body.set_position(new PVector (150 * UF, 50 * UF));
  body.set_height(25 * UF);
  body.set_width(25 * UF);
  body.set_image("items/body.png");
  body.set_text("Body Memory");
  body.set_cutscene_ID("body");
  
  
  DragObject dirt = new DragObject("Dirt");
  dirt.set_position(new PVector (150 * UF, 100 * UF));
  dirt.set_height(25 * UF);
  dirt.set_width(25 * UF);
  dirt.set_image("items/dirt.png");
  dirt.set_text("Dirt Memory");
  dirt.set_cutscene_ID("dirt");
  
  DragObject movie = new DragObject("Movie Memory");
  movie.set_position(new PVector (150 * UF, 150 * UF));
  movie.set_height(25 * UF);
  movie.set_width(25 * UF);
  movie.set_image("items/movie.png");
  movie.set_text("Movie Memory");
  movie.set_cutscene_ID("movie");
  
  wine_glass.is_true_memory = true;
  dirt.is_true_memory = true;
  skull.is_true_memory = true;
  movie.is_true_memory = true;
  
  end_scene.add_object(movie);
  end_scene.add_object(dirt);
  end_scene.add_object(body);
  end_scene.add_object(locket);
  end_scene.add_object(keys);
  end_scene.add_object(wine_glass);
  end_scene.add_object(teddy_bear);
  end_scene.add_object(skull);
  end_scene.add_object(complete_game);
}

void setup(SceneManager sceneManager)
{ 
  String[] good_end_image_paths = new String[1];
  good_end_image_paths[0] = "good_end.png";
  Cutscene good_end = new Cutscene("good_end", good_end_image_paths);
  
  String[] bad_end_image_paths = new String[1];
  bad_end_image_paths[0] = "bad_end.png";
  Cutscene bad_end = new Cutscene("bad_end", bad_end_image_paths);
  
  String[] neutral_end_image_paths = new String[1];
  neutral_end_image_paths[0] = "neutral_end.png";
  Cutscene neutral_end = new Cutscene("neutral_end", neutral_end_image_paths);
  
  
  String[] intro_image_paths = new String[1];
  intro_image_paths[0] = "intro_1.png";
  Cutscene intro = new Cutscene("intro", intro_image_paths);
  
  
  String[] car_keys_image_paths = new String[1];
  car_keys_image_paths[0] = "memories/car keys/car_keys_1.png";
  Cutscene car_keys_memory = new Cutscene("car_keys", car_keys_image_paths);
  
  String[] movie_image_paths = new String[1];
  movie_image_paths[0] = "memories/movie/movie_1.png";
  Cutscene movie_memory = new Cutscene("movie", movie_image_paths);
  
  String[] wine_glass_image_paths = new String[1];
  wine_glass_image_paths[0] = "memories/wine glass/wine_glass_1.png";
  Cutscene wine_glass_memory = new Cutscene("wine_glass", wine_glass_image_paths);
  
  String[] dirt_image_paths = new String[1];
  dirt_image_paths[0] = "memories/dirt/dirt_1.png";
  Cutscene dirt_memory = new Cutscene("dirt", dirt_image_paths);
  
  String[] teddy_bear_image_paths = new String[1];
  teddy_bear_image_paths[0] = "memories/teddy bear/teddy_bear_1.png";
  Cutscene teddy_bear_memory = new Cutscene("teddy_bear", teddy_bear_image_paths);
  
  String[] skull_image_paths = new String[1];
  skull_image_paths[0] = "memories/skull/skull_1.png";
  Cutscene skull_memory = new Cutscene("skull", skull_image_paths);
  
  String[] body_image_paths = new String[1];
  body_image_paths[0] = "memories/body/body_1.png";
  Cutscene body_memory = new Cutscene("body", body_image_paths);
  
  String[] locket_image_paths = new String[1];
  locket_image_paths[0] = "memories/locket/locket_1.png";
  Cutscene locket_memory = new Cutscene("locket", locket_image_paths);
  
  String[] sister_found_key_image_paths = new String[1];
  sister_found_key_image_paths[0] = "memories/sister_found_key/sister_found_key_1.png";
  Cutscene sister_found_key = new Cutscene("sister_found_key", sister_found_key_image_paths);
  
  cutscene_manager.add_cutscene(good_end);
  cutscene_manager.add_cutscene(bad_end);
  cutscene_manager.add_cutscene(neutral_end);
  
  
  cutscene_manager.add_cutscene(sister_found_key);
  cutscene_manager.add_cutscene(locket_memory); 
  cutscene_manager.add_cutscene(body_memory); 
  cutscene_manager.add_cutscene(skull_memory); 
  cutscene_manager.add_cutscene(teddy_bear_memory); 
  cutscene_manager.add_cutscene(dirt_memory); 
  cutscene_manager.add_cutscene(wine_glass_memory); 
  cutscene_manager.add_cutscene(movie_memory); 
  cutscene_manager.add_cutscene(car_keys_memory); 
  cutscene_manager.add_cutscene(intro); 
  

  // Memory objects
  ItemObject skull = new ItemObject("Skull");
  skull.set_position(new PVector (210 * UF, 135 * UF));
  skull.set_image("items/skull.png");
  skull.set_dimensions_according_to_image();
  skull.set_text("Pick up skull");
  skull.set_cutscene_ID("skull");
  skull.is_memory_item = true;
  skull.set_pickup_sound("sounds/pickup/stick_pickup.wav", this);
  
  ItemObject locket = new ItemObject("Locket");
  locket.set_position(new PVector (282 * UF, 129 * UF));
  locket.set_image("items/locket.png");
  locket.set_dimensions_according_to_image();
  locket.set_text("This is a locket!");
  locket.set_cutscene_ID("locket");
  locket.is_memory_item = true;
  locket.set_pickup_sound("sounds/pickup/metal_pickup.wav", this);
  
  ItemObject teddy_bear = new ItemObject("Teddy Bear");
  teddy_bear.set_position(new PVector (288 * UF, 160 * UF));
  teddy_bear.set_image("items/teddy_bear.png");
  teddy_bear.set_dimensions_according_to_image();
  teddy_bear.set_text("This is a bear!");
  teddy_bear.set_cutscene_ID("teddy_bear");
  teddy_bear.is_memory_item = true;
  teddy_bear.set_pickup_sound("sounds/pickup/teddy_bear_pickup.wav", this);
  
  
  ItemObject wine_glass = new ItemObject("Wine Glass");
  wine_glass.set_position(new PVector (273 * UF, 152 * UF));
  wine_glass.set_image("items/wine_glass.png");
  wine_glass.set_dimensions_according_to_image();
  wine_glass.set_text("Pick up glass shards");
  wine_glass.set_cutscene_ID("wine_glass");
  wine_glass.is_memory_item = true;
  wine_glass.set_pickup_sound("sounds/pickup/glass_shards_pickup.wav", this);
  
  
  ItemObject keys = new ItemObject("Car Keys");
  keys.set_position(new PVector(180 * UF, 160 * UF));
  keys.set_image("items/car_keys.png");
  keys.set_dimensions_according_to_image();
  keys.set_text("This is car keys!");
  keys.set_cutscene_ID("car_keys");
  keys.is_memory_item = true;
  keys.set_pickup_sound("sounds/pickup/car_keys_pickup.wav", this);
  
  
  ItemObject body = new ItemObject("Body");
  body.set_position(new PVector(195 * UF, 86 * UF));
  body.set_image("items/body.png");
  body.set_dimensions_according_to_image();
  body.set_text("This is body!");
  body.set_cutscene_ID("body");
  body.is_memory_item = true;
  body.set_pickup_sound("sounds/pickup/axe_pickup.wav", this);
  
  
  ItemObject dirt = new ItemObject("Dirt");
  dirt.set_position(new PVector (226 * UF, 115 * UF));
  dirt.set_image("items/dirt.png");
  dirt.set_dimensions_according_to_image();
  dirt.set_text("This is dirt!");
  dirt.set_cutscene_ID("dirt");
  dirt.is_memory_item = true;
  dirt.set_pickup_sound("sounds/pickup/dirt_pickup.wav", this);
  
  
  ItemObject movie = new ItemObject("Movie Memory");
  movie.set_position(new PVector (150 * UF, 50 * UF));
  movie.set_height(75 * UF);
  movie.set_width(75 * UF);
  movie.set_image("items/movie.png");
  movie.set_text("This is movie memory!");
  movie.set_cutscene_ID("movie");
  movie.is_memory_item = true;
  

  //"Key" objects

  ItemObject cloth = new ItemObject("Cloth");
  cloth.set_position(new PVector (167 * UF, 112 * UF));
  cloth.set_image("items/cloth.png");
  cloth.set_dimensions_according_to_image();
  cloth.set_text("This is cloth!");
  cloth.set_pickup_sound("sounds/pickup/cloth_pickup.wav", this);
  

  
  ItemObject spoon = new ItemObject("Spoon");
  spoon.set_position(new PVector (187 * UF, 110 * UF));
  spoon.set_image("items/spoon.png");
  spoon.set_dimensions_according_to_image();
  spoon.set_text("This is spoon!");
  spoon.set_pickup_sound("sounds/pickup/spoon_pickup.wav", this);

  
  ItemObject crate = new ItemObject("Crate");
  crate.set_position(new PVector (334 * UF, 142 * UF));
  crate.set_image("items/crate.png");
  crate.set_dimensions_according_to_image();  
  crate.set_text("This is crate!");
  crate.set_pickup_sound("sounds/pickup/wooden_crate_pickup.wav", this);

  
  ItemObject stick = new ItemObject("Stick");
  stick.set_position(new PVector (210 * UF, 70 * UF));
  stick.set_image("items/stick.png");
  stick.set_dimensions_according_to_image();
  stick.set_text("Stick");
  stick.set_pickup_sound("sounds/pickup/stick_pickup.wav", this);
    

  
  ItemObject screwdriver = new ItemObject("Screwdriver");
  screwdriver.set_position(new PVector (310 * UF, 97 * UF));
  screwdriver.set_image("items/screwdriver.png");
  screwdriver.set_dimensions_according_to_image();
  screwdriver.set_text("Screwdriver");
  screwdriver.set_pickup_sound("sounds/pickup/axe_pickup.wav", this);
  

  
  ItemObject axe = new ItemObject("Axe");
  axe.set_position(new PVector (288 * UF, 97 * UF));
  axe.set_image("items/axe.png");
  axe.set_dimensions_according_to_image();
  axe.set_text("Axe");
  axe.set_pickup_sound("sounds/pickup/axe_pickup.wav", this);
  
  
  ItemObject metal = new ItemObject("Sharp Metal");
  metal.set_position(new PVector (233 * UF, 83 * UF));
  metal.set_image("items/sharp_metal.png");
  metal.set_dimensions_according_to_image();
  metal.set_text("Sharp Metal");
  metal.set_pickup_sound("sounds/pickup/metal_pickup.wav", this);
  

  ItemObject final_key = new ItemObject("Exit Key");
  final_key.set_position(new PVector (150 * UF, 50 * UF));
  final_key.set_height(75 * UF);
  final_key.set_width(75 * UF);
  final_key.set_text("This is the key to the exit!");

  
  // "Lock" objects
  LockObject locked_skull = new LockObject("locked_skull", metal, skull);
  locked_skull.set_image("items/skull.png");
  locked_skull.set_position(new PVector(207 * UF, 95 * UF));
  locked_skull.set_dimensions_according_to_image();
  locked_skull.set_text("The skull is stuck to the wall, I need something sharp to get it off.");
  locked_skull.set_accepted_sound("sounds/approved.wav", this);
  locked_skull.set_denied_sound("sounds/denied.wav", this);
  
  LockObject locked_wine_glass = new LockObject("locked_wine_glass", cloth, wine_glass);
  locked_wine_glass.set_image("items/wine_glass.png");
  locked_wine_glass.set_position(new PVector(273 * UF, 152 * UF));
  locked_wine_glass.set_dimensions_according_to_image();
  locked_wine_glass.set_text("That glass looks very sharp, maybe there is something around that could protect my hands");
  locked_wine_glass.set_accepted_sound("sounds/approved.wav", this);
  locked_wine_glass.set_denied_sound("sounds/denied.wav", this);
  
  LockObject locked_dirt = new LockObject("locked_dirt", spoon, dirt);
  locked_dirt.set_image("items/dirt.png");
  locked_dirt.set_position(new PVector(226 * UF, 115 * UF));
  locked_dirt.set_dimensions_according_to_image();
  locked_dirt.set_text("I don't want to get my hands dirty, there could be something around that would let me pick it up");
  locked_dirt.set_accepted_sound("sounds/approved.wav", this);
  locked_dirt.set_denied_sound("sounds/denied.wav", this);
  
  
  LockObject locked_locket = new LockObject("locked_locket", screwdriver, locket);
  locked_locket.set_image("items/locket.png");
  locked_locket.set_position(new PVector(282 * UF, 129 * UF));
  locked_locket.set_dimensions_according_to_image();
  locked_locket.set_text("The Locket is stuck in an old oil lamp, maybe there is an instrument around to get it out.");
  locked_locket.set_accepted_sound("sounds/approved.wav", this);
  locked_locket.set_denied_sound("sounds/denied.wav", this);
  
  
  LockObject locked_body = new LockObject("locked_body", axe, body);
  locked_body.set_image("items/body.png");
  locked_body.set_position(new PVector(195 * UF, 86 * UF));
  locked_body.set_dimensions_according_to_image();
  locked_body.set_text("The body is put into a hole in the wall, I should find something to make the hole big enough to get the body through");
  locked_body.set_accepted_sound("sounds/approved.wav", this);
  locked_body.set_denied_sound("sounds/denied.wav", this);
  
  
  LockObject locked_keys = new LockObject("locked_keys", stick, keys);
  locked_keys.set_image("items/car_keys.png");
  locked_keys.set_position(new PVector(180 * UF, 37 * UF));
  locked_keys.set_dimensions_according_to_image();
  locked_keys.set_text("The car keys are out of reach, I may be able to get them off the hook.");
  locked_keys.set_accepted_sound("sounds/approved.wav", this);
  locked_keys.set_denied_sound("sounds/denied.wav", this);
  
  
  LockObject locked_teddy_bear = new LockObject("locked_teddy_bear", crate, teddy_bear);
  locked_teddy_bear.set_image("items/teddy_bear.png");
  locked_teddy_bear.set_position(new PVector(288 * UF, 37 * UF));
  locked_teddy_bear.set_dimensions_according_to_image();
  locked_teddy_bear.set_text("The teddy bear is high up, maybe I can reach it if I was a bit higher up");
  locked_teddy_bear.set_accepted_sound("sounds/approved.wav", this);
  locked_teddy_bear.set_denied_sound("sounds/denied.wav", this);
  
  
  
  
  //Scene talk_to_sister = new Scene("sister", "temp_sister.jpeg");
  
  Scene title_screen = new Scene("title_screen", "locations/church.png");
  
  Scene catacombs = new Scene("catacombs", "locations/catacombs.png");
  Scene hallway = new Scene("hallway", "locations/hallway.png");
  Scene religious_room = new Scene("religious_room", "locations/religious_room.png");
  Scene burial_room = new Scene("burial_room", "locations/burial_room.png");
  Scene skull_room = new Scene("skull_room", "locations/skull_room.png");
  Scene candle_room = new Scene("candle_room", "locations/candle_room.png");
  Scene pillar_room = new Scene("pillar_room", "locations/pillar_room.png");
  Scene crypt_entrance = new Scene("crypt_entrance", "locations/crypt_entrance.png");
  
  //catacombs.set_ambience_sound("sounds/ambience/catacombs_ambience_1.wav", this);
  //println("catacombs ambience loaded");
  
  //hallway.set_ambience_sound("sounds/ambience/hallway_ambience_1.wav", this);
  //println("hallway ambience loaded");
  
  //religious_room.set_ambience_sound("sounds/ambience/religious_room_ambience_1.wav", this);
  //println("relbiguso ambience loaded");
  
  //burial_room.set_ambience_sound("sounds/ambience/burial_room_ambience_1.wav", this);
  //println("bural ambience loaded");
  
  //skull_room.set_ambience_sound("sounds/ambience/creepy_child_room_ambience_1.wav", this);
  //println("skulrom ambience loaded");
  
  //candle_room.set_ambience_sound("sounds/ambience/candle_room_ambience_1.wav", this);
  //println("canldeprom ambience loaded");
  
  //pillar_room.set_ambience_sound("sounds/ambience/pillar_room_ambience_1.wav", this);
  //println("piller ambience loaded");
  
  println("all ambience loaded");
  
  //################3
  
  SceneChanger begin_game = new SceneChanger("begin", "catacombs");
  begin_game.set_image("icons/start.png");
  begin_game.set_dimensions_according_to_image();
  begin_game.set_position(new PVector(wwidth / 2 - begin_game.owidth / 2, wheight / 2));
  begin_game.set_text("Press to begin the game");
  title_screen.add_object(begin_game);
  
  //println("hello");
  
  SceneChanger catacombs_to_hallway = new SceneChanger("catacombs_to_hallway", "hallway");
  catacombs_to_hallway.set_image("blank.png");
  catacombs_to_hallway.set_position(new PVector(127 * UF, 40 * UF));
  catacombs_to_hallway.set_height(80 * UF);
  catacombs_to_hallway.set_width(110 * UF);
  catacombs_to_hallway.set_text("Go forwards to the hallway");
  catacombs_to_hallway.set_transition_sound("sounds/default_click.wav", this);
  
  SceneChanger catacombs_to_pillar_room = new SceneChanger("catacombs_to_pillar_room", "pillar_room");
  catacombs_to_pillar_room.set_image("icons/arrowUp.png");
  catacombs_to_pillar_room.set_position(new PVector(22 * UF, 56 * UF));
  catacombs_to_pillar_room.set_height(25 * UF);
  catacombs_to_pillar_room.set_width(25 * UF);
  catacombs_to_pillar_room.set_text("Go up to the pillars");
  catacombs_to_pillar_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger catacombs_to_candle_room = new SceneChanger("catacombs_to_candle_room", "candle_room");
  catacombs_to_candle_room.set_image("icons/arrowRight.png");
  catacombs_to_candle_room.set_position(new PVector(327 * UF, 70 * UF));
  catacombs_to_candle_room.set_height(25 * UF);
  catacombs_to_candle_room.set_width(25 * UF);
  catacombs_to_candle_room.set_text("Go to the right to the candle room");
  catacombs_to_candle_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  catacombs.add_object(cloth);
  //catacombs.add_object(final_key);
  catacombs.add_object(catacombs_to_hallway);
  catacombs.add_object(catacombs_to_pillar_room);
  catacombs.add_object(catacombs_to_candle_room);
  
  //Hallway
  SceneChanger hallway_to_catacombs = new SceneChanger("hallway_to_catacombs", "catacombs");
  hallway_to_catacombs.set_image("icons/arrowLeft.png");
  hallway_to_catacombs.set_position(new PVector(22 * UF, 83 * UF));
  hallway_to_catacombs.set_height(25 * UF);
  hallway_to_catacombs.set_width(25 * UF);
  hallway_to_catacombs.set_text("Go back to the catacombs");
  hallway_to_catacombs.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger hallway_to_pillar_room = new SceneChanger("hallway_to_pillar_room", "pillar_room");
  hallway_to_pillar_room.set_image("icons/arrowRight.png");
  hallway_to_pillar_room.set_position(new PVector(327 * UF, 84 * UF));
  hallway_to_pillar_room.set_height(25 * UF);
  hallway_to_pillar_room.set_width(25 * UF);
  hallway_to_pillar_room.set_text("Go up to the pillars");
  hallway_to_pillar_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger hallway_to_skull_room = new SceneChanger("hallway_to_skull_room", "skull_room");
  hallway_to_skull_room.set_image("blank.png");
  hallway_to_skull_room.set_position(new PVector(255 * UF, 24 * UF));
  hallway_to_skull_room.set_height(117 * UF);
  hallway_to_skull_room.set_width(86 * UF);
  hallway_to_skull_room.set_text("Enter the creepy child room");
  hallway_to_skull_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  hallway.add_object(spoon);
  hallway.add_object(locked_skull);
  
  hallway.add_object(hallway_to_catacombs);
  hallway.add_object(hallway_to_pillar_room);
  hallway.add_object(hallway_to_skull_room);
  
  
  
  
  //Pillar Room 
  SceneChanger pillar_room_to_catacombs = new SceneChanger("pillar_room_to_catacombs", "catacombs");
  pillar_room_to_catacombs.set_image("icons/arrowLeft.png");
  pillar_room_to_catacombs.set_position(new PVector(22 * UF, 130 * UF));
  pillar_room_to_catacombs.set_height(25 * UF);
  pillar_room_to_catacombs.set_width(25 * UF);
  pillar_room_to_catacombs.set_text("Go to back to the catacombs");
  pillar_room_to_catacombs.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger pillar_room_to_hallway = new SceneChanger("pillar_room_to_hallway", "hallway");
  pillar_room_to_hallway.set_image("icons/arrowDown.png");
  pillar_room_to_hallway.set_position(new PVector(327 * UF, 140 * UF));
  pillar_room_to_hallway.set_height(25 * UF);
  pillar_room_to_hallway.set_width(25 * UF);
  pillar_room_to_hallway.set_text("Go to down to the hallway");
  pillar_room_to_hallway.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger pillar_room_to_religious_room = new SceneChanger("pillar_room_to_religious_room", "religious_room");
  pillar_room_to_religious_room.set_image("icons/arrowUp.png");
  pillar_room_to_religious_room.set_position(new PVector(327 * UF, 30 * UF));
  pillar_room_to_religious_room.set_height(25 * UF);
  pillar_room_to_religious_room.set_width(25 * UF);
  pillar_room_to_religious_room.set_text("Go upstairs to the religious room");
  pillar_room_to_religious_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  
  pillar_room.add_object(locked_keys);
  pillar_room.add_object(metal);
  
  
  pillar_room.add_object(pillar_room_to_catacombs);
  pillar_room.add_object(pillar_room_to_hallway);
  pillar_room.add_object(pillar_room_to_religious_room);
  
  //Candle Room
  SceneChanger candle_room_to_burial_room = new SceneChanger("candle_room_to_burial_room", "burial_room");
  candle_room_to_burial_room.set_image("blank.png");
  candle_room_to_burial_room.set_position(new PVector(124 * UF, 44 * UF));
  candle_room_to_burial_room.set_height(108 * UF);
  candle_room_to_burial_room.set_width(92 * UF);
  candle_room_to_burial_room.set_text("Go to burial room");
  candle_room_to_burial_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger candle_room_to_catacombs = new SceneChanger("pillar_room_to_hallway", "catacombs");
  candle_room_to_catacombs.set_image("icons/arrowLeft.png");
  candle_room_to_catacombs.set_position(new PVector(22 * UF, 84 * UF));
  candle_room_to_catacombs.set_height(25 * UF);
  candle_room_to_catacombs.set_width(25 * UF);
  candle_room_to_catacombs.set_text("Go to back to the catacombs");
  candle_room_to_catacombs.set_transition_sound("sounds/default_click.wav", this);
  
  
  candle_room.add_object(locked_wine_glass);
  
  
  candle_room.add_object(candle_room_to_burial_room);
  candle_room.add_object(candle_room_to_catacombs);
  
  //Skull Room
  SceneChanger skull_room_to_burial_room = new SceneChanger("skull_room_to_burial_room", "burial_room");
  skull_room_to_burial_room.set_image("icons/arrowLeft.png");
  skull_room_to_burial_room.set_position(new PVector(22 * UF, 93 * UF));
  skull_room_to_burial_room.set_height(25 * UF);
  skull_room_to_burial_room.set_width(25 * UF);
  skull_room_to_burial_room.set_text("Go to the burial room");
  skull_room_to_burial_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger skull_room_to_candle_room = new SceneChanger("skull_room_to_hallway", "hallway");
  skull_room_to_candle_room.set_image("icons/arrowRight.png");
  skull_room_to_candle_room.set_position(new PVector(327 * UF, 93 * UF));
  skull_room_to_candle_room.set_height(25 * UF);
  skull_room_to_candle_room.set_width(25 * UF);
  skull_room_to_candle_room.set_text("Go back to hallway");
  skull_room_to_candle_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  skull_room.add_object(locked_teddy_bear);
  skull_room.add_object(screwdriver);
  skull_room.add_object(axe);
  
  
  skull_room.add_object(skull_room_to_burial_room);
  skull_room.add_object(skull_room_to_candle_room);
  
  //Religious Room
  SceneChanger religious_room_to_pillar_room = new SceneChanger("religious_room_to_pillar_room", "pillar_room");
  religious_room_to_pillar_room.set_image("icons/arrowLeft.png");
  religious_room_to_pillar_room.set_position(new PVector(22 * UF, 103 * UF));
  religious_room_to_pillar_room.set_height(25 * UF);
  religious_room_to_pillar_room.set_width(25 * UF);
  religious_room_to_pillar_room.set_text("Go back to the pillars");
  religious_room_to_pillar_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger religious_room_to_crypt_entrance = new SceneChanger("religious_room_to_crypt_entrance", "crypt_entrance");
  religious_room_to_crypt_entrance.set_image("blank.png");
  religious_room_to_crypt_entrance.set_position(new PVector(327 * UF, 30 * UF));
  religious_room_to_crypt_entrance.set_height(25 * UF);
  religious_room_to_crypt_entrance.set_width(25 * UF);
  religious_room_to_crypt_entrance.set_text("Leave the dungeon once and for all!");
  religious_room_to_crypt_entrance.set_transition_sound("sounds/default_click.wav", this);
  
  
  LockObject locked_crypt_entrance = new LockObject("locked_crypt_entrance", final_key, religious_room_to_crypt_entrance);
  locked_crypt_entrance.set_image("icons/lock.png");
  locked_crypt_entrance.set_position(new PVector(327 * UF, 103 * UF));
  locked_crypt_entrance.set_height(25 * UF);
  locked_crypt_entrance.set_width(25 * UF);
  locked_crypt_entrance.set_text("The exit from this hell hole! You need a key!");
  locked_crypt_entrance.set_accepted_sound("sounds/approved.wav", this);
  locked_crypt_entrance.set_denied_sound("sounds/denied.wav", this);
  
  
  
  religious_room.add_object(crate);
  religious_room.add_object(locked_locket);
  
  religious_room.add_object(religious_room_to_pillar_room);
  religious_room.add_object(locked_crypt_entrance);
  
  
  //Burial Room
  
  SceneChanger burial_room_to_skull_room = new SceneChanger("burial_room_to_skull_room", "skull_room");
  burial_room_to_skull_room.set_image("icons/arrowRight.png");
  burial_room_to_skull_room.set_position(new PVector(327 * UF, 105 * UF));
  burial_room_to_skull_room.set_height(25 * UF);
  burial_room_to_skull_room.set_width(25 * UF);
  burial_room_to_skull_room.set_text("Go to creepy child room");
  burial_room_to_skull_room.set_transition_sound("sounds/default_click.wav", this);
  
  
  SceneChanger burial_room_to_hallway = new SceneChanger("burial_room_to_candle_room", "candle_room");
  burial_room_to_hallway.set_image("icons/arrowLeft.png");
  burial_room_to_hallway.set_position(new PVector(22 * UF, 105 * UF));
  burial_room_to_hallway.set_height(25 * UF);
  burial_room_to_hallway.set_width(25 * UF);
  burial_room_to_hallway.set_text("Go back to the candle room");
  burial_room_to_hallway.set_transition_sound("sounds/default_click.wav", this);
  
  
  burial_room.add_object(stick);
  
  burial_room.add_object(locked_body);
  burial_room.add_object(locked_dirt);
  burial_room.add_object(burial_room_to_skull_room);
  burial_room.add_object(burial_room_to_hallway);
   
  
  
  sceneManager.add_scene(catacombs);
  sceneManager.add_scene(title_screen);
  sceneManager.add_scene(hallway);
  sceneManager.add_scene(religious_room);
  sceneManager.add_scene(burial_room);
  sceneManager.add_scene(skull_room);
  sceneManager.add_scene(candle_room);
  sceneManager.add_scene(pillar_room);
  sceneManager.add_scene(crypt_entrance);
  
  //sceneManager.set_current_scene(catacombs);
  
  //sceneManager.set_current_scene(crypt_entrance);
  sceneManager.set_current_scene(title_screen);

  
  
  movie.move_to_inventory();
      
}
