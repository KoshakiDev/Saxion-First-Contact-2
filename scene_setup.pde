void setup(SceneManager sceneManager)
{ 
  String[] test_1_image_paths = new String[3];
  
  test_1_image_paths[0] = "frame_1.png";
  test_1_image_paths[1] = "frame_2.png";
  test_1_image_paths[2] = "frame_3.png";
  
  Cutscene test_1 = new Cutscene("test_1", test_1_image_paths);
  
  cutscene_manager.add_cutscene(test_1); 
  
  ItemObject skull = new ItemObject("Skull");
  skull.set_position(new PVector (100 * UF, 50 * UF));
  skull.set_height(75 * UF);
  skull.set_width(75 * UF);
  skull.set_image("skull.png");
  skull.set_text("This is a skull! It looks to have two eyes and a mouth!");
  skull.set_cutscene_ID("test_1");
  
  
  ItemObject locket = new ItemObject("Locket");
  locket.set_position(new PVector (100 * UF, 50 * UF));
  locket.set_height(75 * UF);
  locket.set_width(75 * UF);
  locket.set_image("locket.png");
  locket.set_text("This is a locket!");
  
  
  ItemObject teddy_bear = new ItemObject("Teddy Bear");
  teddy_bear.set_position(new PVector (100 * UF, 50 * UF));
  teddy_bear.set_height(75 * UF);
  teddy_bear.set_width(75 * UF);
  teddy_bear.set_image("teddy_bear.png");
  teddy_bear.set_text("This is a bear!");
  
  ItemObject wine_glass = new ItemObject("Wine Glass");
  wine_glass.set_position(new PVector (100 * UF, 50 * UF));
  wine_glass.set_height(75 * UF);
  wine_glass.set_width(75 * UF);
  wine_glass.set_image("wine_glass.png");
  wine_glass.set_text("This is a glass!");
  
  
  ItemObject keys = new ItemObject("Keys");
  keys.set_position(new PVector (100 * UF, 50 * UF));
  keys.set_height(75 * UF);
  keys.set_width(75 * UF);
  keys.set_image("keys.png");
  keys.set_text("This is keys!");
  
  ItemObject body = new ItemObject("Body");
  body.set_position(new PVector (100 * UF, 50 * UF));
  body.set_height(75 * UF);
  body.set_width(75 * UF);
  body.set_image("dead_body.png");
  body.set_text("This is body!");
  
  ItemObject dirt = new ItemObject("Dirt");
  dirt.set_position(new PVector (150 * UF, 50 * UF));
  dirt.set_height(75 * UF);
  dirt.set_width(75 * UF);
  dirt.set_image("dirt.png");
  dirt.set_text("This is dirt!");
  
  
  
  
  //Scene talk_to_sister = new Scene("sister", "temp_sister.jpeg");
  
  Scene catacombs = new Scene("catacombs", "catacombs.png");
  Scene hallway = new Scene("hallway", "hallway.png");
  Scene religious_room = new Scene("religious_room", "religious_room.png");
  Scene burial_room = new Scene("burial_room", "burial_room.png");
  Scene skull_room = new Scene("skull_room", "skull_room.png");
  Scene candle_room = new Scene("candle_room", "candle_room.png");
  Scene pillar_room = new Scene("pillar_room", "pillar_room.png");
  
  //Talking with Sister
  /*
  MoveToSceneObject back_to_catacombs = new MoveToSceneObject("back_to_catacombs", 200 * UF, 100 * UF, 50, 50, "arrowDown.png", true);
  
  TextObject unlocked_memory_1 = new TextObject("memory_1", 200 * UF, 20 * UF, 50, 50, "zoom.png", "Look for a locket");
  
  TextObject unlocked_memory_2 = new TextObject("memory_2", 200 * UF, 30 * UF, 50, 50, "zoom.png", "You found a locket, look for a teddy");
  TextObject unlocked_memory_3 = new TextObject("memory_3", 200 * UF, 40 * UF, 50, 50, "zoom.png", "You found a teddy, look for a wine glass");
  TextObject unlocked_memory_4 = new TextObject("memory_4", 200 * UF, 50 * UF, 50, 50, "zoom.png", "You found a wine glass, look for keys");
  TextObject unlocked_memory_5 = new TextObject("memory_5", 200 * UF, 60 * UF, 50, 50, "zoom.png", "You found a keys, look for dirt");
  TextObject unlocked_memory_6 = new TextObject("memory_6", 200 * UF, 70 * UF, 50, 50, "zoom.png", "You found a dirt, look for body");
  TextObject unlocked_memory_7 = new TextObject("memory_7", 200 * UF, 80 * UF, 50, 50, "zoom.png", "You found a body, look for skull");
  TextObject unlocked_memory_8 = new TextObject("memory_8", 200 * UF, 90 * UF, 50, 50, "zoom.png", "you found a skull, the find the last memory");
  
  
  
  //RequireObject locked_memory_1 = new RequireObject("requiresApple_sister", 206, 461, 50, 50, "zoom.png", "You don't remember the apple memory!", , memory_2_dialogue);
  RequireObject locked_memory_2 = new RequireObject("", 100 * UF, 30 * UF, 50, 50, "zoom.png", "You don't remember the locket memory!", locket, unlocked_memory_2);
  RequireObject locked_memory_3 = new RequireObject("", 100 * UF, 40 * UF, 50, 50, "zoom.png", "You don't remember the teddy memory!", teddy_bear, unlocked_memory_3);
  RequireObject locked_memory_4 = new RequireObject("", 100 * UF, 50 * UF, 50, 50, "zoom.png", "You don't remember the wine memory!", wine_glass, unlocked_memory_4);
  RequireObject locked_memory_5 = new RequireObject("", 100 * UF, 60 * UF, 50, 50, "zoom.png", "You don't remember the keys memory!", keys, unlocked_memory_5);
  RequireObject locked_memory_6 = new RequireObject("", 100 * UF, 70 * UF, 50, 50, "zoom.png", "You don't remember the dirt memory!", dirt, unlocked_memory_6);
  RequireObject locked_memory_7 = new RequireObject("", 100 * UF, 80 * UF, 50, 50, "zoom.png", "You don't remember the body memory!", body, unlocked_memory_7);
  RequireObject locked_memory_8 = new RequireObject("", 100 * UF, 90 * UF, 50, 50, "zoom.png", "You don't remember the skull memory!", skull, unlocked_memory_8);
  
  
  talk_to_sister.addGameObject(unlocked_memory_1);
  talk_to_sister.addGameObject(locked_memory_2);
  talk_to_sister.addGameObject(locked_memory_3);
  talk_to_sister.addGameObject(locked_memory_4);
  talk_to_sister.addGameObject(locked_memory_5);
  talk_to_sister.addGameObject(locked_memory_6);
  talk_to_sister.addGameObject(locked_memory_7);
  talk_to_sister.addGameObject(locked_memory_8);
  talk_to_sister.addGameObject(back_to_catacombs);
  */
  //Empty Catacombs
  //SceneChanger catacombs_to_sister = new MoveToSceneObject("catacombs_to_sister", 200 * UF, 20 * UF, 50, 50, "arrowUp.png", "sister");
  
  
  SceneChanger catacombs_to_hallway = new SceneChanger("catacombs_to_hallway", "hallway");
  catacombs_to_hallway.set_image("door.png");
  catacombs_to_hallway.set_position(new PVector(200 * UF, 30 * UF));
  catacombs_to_hallway.set_height(50 * UF);
  catacombs_to_hallway.set_width(50 * UF);
  catacombs_to_hallway.set_text("Go to hallway");
  
  LockObject locked_hallway = new LockObject("locked_hallway", teddy_bear, catacombs_to_hallway);
  locked_hallway.set_image("locked_door.png");
  locked_hallway.set_position(new PVector(200 * UF, 30 * UF));
  locked_hallway.set_height(50 * UF);
  locked_hallway.set_width(50 * UF);
  locked_hallway.set_text("Leads to hallway. Find a teddy bear to unlock it!");
  
  
  SceneChanger catacombs_to_pillar_room = new SceneChanger("catacombs_to_pillar_room", "pillar_room");
  catacombs_to_pillar_room.set_image("door.png");
  catacombs_to_pillar_room.set_position(new PVector(250 * UF, 30 * UF));
  catacombs_to_pillar_room.set_height(50 * UF);
  catacombs_to_pillar_room.set_width(50 * UF);
  catacombs_to_pillar_room.set_text("Go to pillar_room");
  
  LockObject locked_pillar_room = new LockObject("locked_hallway", locket, catacombs_to_pillar_room);
  locked_pillar_room.set_image("locked_door.png");
  locked_pillar_room.set_position(new PVector(250 * UF, 30 * UF));
  locked_pillar_room.set_height(50 * UF);
  locked_pillar_room.set_width(50 * UF);
  locked_pillar_room.set_text("Leads to pillar room. Find a locket to unlock it!");
  
  
  SceneChanger catacombs_to_candle_room = new SceneChanger("catacombs_to_candle_room", "candle_room");
  catacombs_to_candle_room.set_image("door.png");
  catacombs_to_candle_room.set_position(new PVector(300 * UF, 30 * UF));
  catacombs_to_candle_room.set_height(50 * UF);
  catacombs_to_candle_room.set_width(50 * UF);
  catacombs_to_candle_room.set_text("Go to candle_room");
  
  
  catacombs.add_object(locked_hallway);
  catacombs.add_object(locked_pillar_room);
  catacombs.add_object(catacombs_to_candle_room);
  
  //Hallway
  SceneChanger hallway_to_catacombs = new SceneChanger("hallway_to_catacombs", "catacombs");
  hallway_to_catacombs.set_image("door.png");
  hallway_to_catacombs.set_position(new PVector(200 * UF, 30 * UF));
  hallway_to_catacombs.set_height(50 * UF);
  hallway_to_catacombs.set_width(50 * UF);
  hallway_to_catacombs.set_text("Go to catacombs");
  
  
  SceneChanger hallway_to_pillar_room = new SceneChanger("hallway_to_pillar_room", "pillar_room");
  hallway_to_pillar_room.set_image("door.png");
  hallway_to_pillar_room.set_position(new PVector(250 * UF, 30 * UF));
  hallway_to_pillar_room.set_height(50 * UF);
  hallway_to_pillar_room.set_width(50 * UF);
  hallway_to_pillar_room.set_text("Go to pillar_room");
  
  
  SceneChanger hallway_to_skull_room = new SceneChanger("hallway_to_skull_room", "skull_room");
  hallway_to_skull_room.set_image("door.png");
  hallway_to_skull_room.set_position(new PVector(300 * UF, 30 * UF));
  hallway_to_skull_room.set_height(50 * UF);
  hallway_to_skull_room.set_width(50 * UF);
  hallway_to_skull_room.set_text("Go to skull_room");
  
  
  hallway.add_object(skull);
  
  hallway.add_object(hallway_to_catacombs);
  hallway.add_object(hallway_to_pillar_room);
  hallway.add_object(hallway_to_skull_room);
  
  
  
  
  //Pillar Room 
  SceneChanger pillar_room_to_catacombs = new SceneChanger("pillar_room_to_catacombs", "catacombs");
  pillar_room_to_catacombs.set_image("door.png");
  pillar_room_to_catacombs.set_position(new PVector(200 * UF, 30 * UF));
  pillar_room_to_catacombs.set_height(50 * UF);
  pillar_room_to_catacombs.set_width(50 * UF);
  pillar_room_to_catacombs.set_text("Go to catacombs");
  
  
  SceneChanger pillar_room_to_hallway = new SceneChanger("pillar_room_to_hallway", "hallway");
  pillar_room_to_hallway.set_image("door.png");
  pillar_room_to_hallway.set_position(new PVector(250 * UF, 30 * UF));
  pillar_room_to_hallway.set_height(50 * UF);
  pillar_room_to_hallway.set_width(50 * UF);
  pillar_room_to_hallway.set_text("Go to hallway");
  
  
  SceneChanger pillar_room_to_religious_room = new SceneChanger("pillar_room_to_religious_room", "religious_room");
  pillar_room_to_religious_room.set_image("door.png");
  pillar_room_to_religious_room.set_position(new PVector(300 * UF, 30 * UF));
  pillar_room_to_religious_room.set_height(50 * UF);
  pillar_room_to_religious_room.set_width(50 * UF);
  pillar_room_to_religious_room.set_text("Go to religious_room");
  
  
  
  pillar_room.add_object(keys);
  
  pillar_room.add_object(pillar_room_to_catacombs);
  pillar_room.add_object(pillar_room_to_hallway);
  pillar_room.add_object(pillar_room_to_religious_room);
  
  //Candle Room
  SceneChanger candle_room_to_burial_room = new SceneChanger("candle_room_to_burial_room", "burial_room");
  candle_room_to_burial_room.set_image("door.png");
  candle_room_to_burial_room.set_position(new PVector(200 * UF, 30 * UF));
  candle_room_to_burial_room.set_height(50 * UF);
  candle_room_to_burial_room.set_width(50 * UF);
  candle_room_to_burial_room.set_text("Go to burial_room");
  
  
  SceneChanger candle_room_to_catacombs = new SceneChanger("pillar_room_to_hallway", "catacombs");
  candle_room_to_catacombs.set_image("door.png");
  candle_room_to_catacombs.set_position(new PVector(250 * UF, 30 * UF));
  candle_room_to_catacombs.set_height(50 * UF);
  candle_room_to_catacombs.set_width(50 * UF);
  candle_room_to_catacombs.set_text("Go to catacombs");
  
  
  candle_room.add_object(wine_glass);
  
  candle_room.add_object(candle_room_to_burial_room);
  candle_room.add_object(candle_room_to_catacombs);
  
  //Skull Room
  SceneChanger skull_room_to_burial_room = new SceneChanger("skull_room_to_burial_room", "burial_room");
  skull_room_to_burial_room.set_image("door.png");
  skull_room_to_burial_room.set_position(new PVector(200 * UF, 30 * UF));
  skull_room_to_burial_room.set_height(50 * UF);
  skull_room_to_burial_room.set_width(50 * UF);
  skull_room_to_burial_room.set_text("Go to burial_room");
  
  
  SceneChanger skull_room_to_candle_room = new SceneChanger("skull_room_to_candle_room", "candle_room");
  skull_room_to_candle_room.set_image("door.png");
  skull_room_to_candle_room.set_position(new PVector(250 * UF, 30 * UF));
  skull_room_to_candle_room.set_height(50 * UF);
  skull_room_to_candle_room.set_width(50 * UF);
  skull_room_to_candle_room.set_text("Go to candle_room");
  
  
  skull_room.add_object(teddy_bear);
  
  skull_room.add_object(skull_room_to_burial_room);
  skull_room.add_object(skull_room_to_candle_room);
  
  //Religious Room
  //MoveToSceneObject religious_room_to_graveyard = new MoveToSceneObject("pillar_room_to_hallway", 350, 700, 50, 50, "arrowUp.png", "hallway");
  
  SceneChanger religious_room_to_pillar_room = new SceneChanger("religious_room_to_pillar_room", "pillar_room");
  religious_room_to_pillar_room.set_image("door.png");
  religious_room_to_pillar_room.set_position(new PVector(200 * UF, 30 * UF));
  religious_room_to_pillar_room.set_height(50 * UF);
  religious_room_to_pillar_room.set_width(50 * UF);
  religious_room_to_pillar_room.set_text("Go to pillar_room");
  
  
  religious_room.add_object(locket);
  
  religious_room.add_object(religious_room_to_pillar_room);
  //skull_room.addGameObject(skull_room_to_candle_room);
  
  
  //Burial Room
  
  
  SceneChanger burial_room_to_skull_room = new SceneChanger("burial_room_to_skull_room", "skull_room");
  burial_room_to_skull_room.set_image("door.png");
  burial_room_to_skull_room.set_position(new PVector(200 * UF, 30 * UF));
  burial_room_to_skull_room.set_height(50 * UF);
  burial_room_to_skull_room.set_width(50 * UF);
  burial_room_to_skull_room.set_text("Go to skull_room");
  
  
  SceneChanger burial_room_to_hallway = new SceneChanger("burial_room_to_hallway", "hallway");
  burial_room_to_hallway.set_image("door.png");
  burial_room_to_hallway.set_position(new PVector(250 * UF, 30 * UF));
  burial_room_to_hallway.set_height(50 * UF);
  burial_room_to_hallway.set_width(50 * UF);
  burial_room_to_hallway.set_text("Go to hallway");
  
  
  burial_room.add_object(body);
  burial_room.add_object(dirt);
  burial_room.add_object(burial_room_to_skull_room);
  burial_room.add_object(burial_room_to_hallway);
   
  
  
  sceneManager.add_scene(catacombs);
  //sceneManager.add_scene(talk_to_sister);
  sceneManager.add_scene(hallway);
  sceneManager.add_scene(religious_room);
  sceneManager.add_scene(burial_room);
  sceneManager.add_scene(skull_room);
  sceneManager.add_scene(candle_room);
  sceneManager.add_scene(pillar_room);
  sceneManager.set_current_scene(catacombs);
}
