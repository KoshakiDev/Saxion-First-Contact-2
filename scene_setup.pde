void setup(SceneManager sceneManager)
{
  
  Collectable skull = new Collectable("skull", "skull.png");
  Collectable locket = new Collectable("locket", "locket.png");
  Collectable teddy_bear = new Collectable("teddy_bear", "teddy_bear.png");
  Collectable wine_glass = new Collectable("wine_glass", "wine_glass.png");
  Collectable keys = new Collectable("keys", "keys.png");
  Collectable body = new Collectable("body", "dead_body.png");
  Collectable dirt = new Collectable("dirt", "dirt.png");
  
  
  
  Scene talk_to_sister = new Scene("sister", "temp_sister.jpeg");
  
  Scene catacombs = new Scene("catacombs", "catacombs.png");
  Scene hallway = new Scene("hallway", "hallway.png");
  Scene religious_room = new Scene("religious_room", "religious_room.png");
  Scene burial_room = new Scene("burial_room", "burial_room.png");
  Scene skull_room = new Scene("skull_room", "skull_room.png");
  Scene candle_room = new Scene("candle_room", "candle_room.png");
  Scene pillar_room = new Scene("pillar_room", "pillar_room.png");
  
  //Talking with Sister
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
  
  //Empty Catacombs
  MoveToSceneObject catacombs_to_sister = new MoveToSceneObject("catacombs_to_sister", 200 * UF, 20 * UF, 50, 50, "arrowUp.png", "sister");
  
  MoveToSceneObject catacombs_to_hallway = new MoveToSceneObject("catacombs_to_hallway", 200 * UF, 30 * UF, 50, 50, "arrowUp.png", "hallway");
  MoveToSceneObject catacombs_to_pillar_room = new MoveToSceneObject("catacombs_to_pillar_room", 200 * UF, 40 * UF,  50, 50, "arrowUp.png", "pillar_room");
  MoveToSceneObject catacombs_to_candle_room = new MoveToSceneObject("catacombs_to_pillar_room", 200 * UF, 50 * UF,  50, 50, "arrowUp.png", "candle_room");
  
  //TextObject endGame = new TextObject("smallText_scene04", 380 * UF, 180 * UF, 50, 50, "medal1.png", "Congratulations. You finished the game!");
  //catacombs.addGameObject(endGame);
 
  catacombs.addGameObject(catacombs_to_sister);
  catacombs.addGameObject(catacombs_to_hallway);
  catacombs.addGameObject(catacombs_to_pillar_room);
  catacombs.addGameObject(catacombs_to_candle_room);
  
  //Hallway
  CollectableObject skull_object = new CollectableObject("skull_hallway", 325, 366, 123, 101, skull);
 
  MoveToSceneObject hallway_to_catacombs = new MoveToSceneObject("hallway_to_catacombs", 200 * UF, 30 * UF, 50, 50, "arrowDown.png", "catacombs");
  MoveToSceneObject hallway_to_pillar_room = new MoveToSceneObject("hallway_to_pillar_room", 200 * UF, 40 * UF, 50, 50, "arrowUp.png", "pillar_room");
  MoveToSceneObject hallway_to_skull_room = new MoveToSceneObject("hallway_to_skull_room", 200 * UF, 50 * UF, 50, 50, "arrowUp.png", "skull_room");
  
  hallway.addGameObject(skull_object);
  
  hallway.addGameObject(hallway_to_catacombs);
  hallway.addGameObject(hallway_to_pillar_room);
  hallway.addGameObject(hallway_to_skull_room);
  
  //Pillar Room
  CollectableObject keys_object = new CollectableObject("skull_hallway", 325, 366, 123, 101, keys);
 
  
  MoveToSceneObject pillar_room_to_catacombs = new MoveToSceneObject("pillar_room_to_catacombs", 200 * UF, 30 * UF,  50, 50, "arrowDown.png", "catacombs");
  MoveToSceneObject pillar_room_to_hallway = new MoveToSceneObject("pillar_room_to_hallway", 200 * UF, 40 * UF, 50, 50, "arrowUp.png", "hallway");
  MoveToSceneObject pillar_room_to_religious_room = new MoveToSceneObject("pillar_room_to_religious_room", 200 * UF, 50 * UF,  50, 50, "arrowUp.png", "religious_room");
 
  pillar_room.addGameObject(keys_object);
  
  pillar_room.addGameObject(pillar_room_to_catacombs);
  pillar_room.addGameObject(pillar_room_to_hallway);
  pillar_room.addGameObject(pillar_room_to_religious_room);
  
  //Candle Room
  CollectableObject wine_glass_object = new CollectableObject("skull_hallway", 325, 366, 123, 101, wine_glass);
  
  MoveToSceneObject candle_room_to_burial_room = new MoveToSceneObject("candle_room_to_burial_room", 200 * UF, 30 * UF, 50, 50, "arrowDown.png", "burial_room");
  MoveToSceneObject candle_room_to_catacombs = new MoveToSceneObject("candle_room_to_catacombs", 200 * UF, 40 * UF, 50, 50, "arrowUp.png", "catacombs");
  
  candle_room.addGameObject(wine_glass_object);
  
  candle_room.addGameObject(candle_room_to_burial_room);
  candle_room.addGameObject(candle_room_to_catacombs);
  
  //Skull Room
  CollectableObject teddy_bear_object = new CollectableObject("skull_hallway", 325, 366, 123, 101, teddy_bear);
 
  MoveToSceneObject skull_room_to_burial_room = new MoveToSceneObject("skull_room_to_burial_room", 200 * UF, 30 * UF, 50, 50, "arrowDown.png", "burial_room");
  MoveToSceneObject skull_room_to_candle_room = new MoveToSceneObject("skull_room_to_candle_room", 200 * UF, 40 * UF, 50, 50, "arrowUp.png", "candle_room");
  
  skull_room.addGameObject(teddy_bear_object);
  
  skull_room.addGameObject(skull_room_to_burial_room);
  skull_room.addGameObject(skull_room_to_candle_room);
  
  //Religious Room
  CollectableObject locket_object = new CollectableObject("skull_hallway", 325, 366, 123, 101, locket);

  MoveToSceneObject religious_room_to_pillar_room = new MoveToSceneObject("religious_room_to_pillar_room", 200 * UF, 30 * UF, 50, 50, "arrowDown.png", "pillar_room");
  //MoveToSceneObject religious_room_to_graveyard = new MoveToSceneObject("pillar_room_to_hallway", 350, 700, 50, 50, "arrowUp.png", "hallway");
  
  religious_room.addGameObject(locket_object);
  
  religious_room.addGameObject(religious_room_to_pillar_room);
  //skull_room.addGameObject(skull_room_to_candle_room);
  
  
  //Burial Room
  CollectableObject body_object = new CollectableObject("skull_hallway", 325, 366, 123, 101, body);
  CollectableObject dirt_object = new CollectableObject("skull_hallway", 425, 366, 123, 101, dirt);

  
  MoveToSceneObject burial_room_to_skull_room = new MoveToSceneObject("burial_room_to_skull_room", 200 * UF, 30 * UF, 50, 50, "arrowDown.png", "skull_room");
  MoveToSceneObject burial_room_to_hallway = new MoveToSceneObject("skull_room_to_candle_room", 200 * UF, 40 * UF, 50, 50, "arrowUp.png", "candle_room");
  
  burial_room.addGameObject(body_object);
  burial_room.addGameObject(dirt_object);
  burial_room.addGameObject(burial_room_to_skull_room);
  burial_room.addGameObject(burial_room_to_hallway);
  
  
  talk_to_sister.addGameObject(body_object);
  talk_to_sister.addGameObject(locket_object);
  talk_to_sister.addGameObject(teddy_bear_object);
 
  
  
  
  sceneManager.addScene(catacombs);
  sceneManager.addScene(talk_to_sister);
  sceneManager.addScene(hallway);
  sceneManager.addScene(religious_room);
  sceneManager.addScene(burial_room);
  sceneManager.addScene(skull_room);
  sceneManager.addScene(candle_room);
  sceneManager.addScene(pillar_room);
  
  
  /*
  //Collectables
  Collectable apple = new Collectable("apple", "back04_apple.png");
  
  
  Scene talk_to_sister = new Scene("sister", "temp_sister.jpeg");
  
  MoveToSceneObject go_back_object = new MoveToSceneObject("goBack_scene01", 203, 753, 50, 50, "arrowDown.png", true);
  talk_to_sister.addGameObject(go_back_object);
  
  
  TextObject apple_memory_dialogue = new TextObject("apple_memory_dialogue_sister", 541, 445, 50, 50, "zoom.png", "There was this one time I liked apples");
  
  TextObject memory_2_dialogue = new TextObject("next_memory_2_dialogue_sister", 541, 545, 50, 50, "zoom.png", "There was this one time I liked cheese");
  
  
  RequireObject apple_memory = new RequireObject("requiresApple_sister", 206, 461, 50, 50, "zoom.png", "You don't remember the apple memory!", apple, memory_2_dialogue);
  
  
  //RequireObject memory_2 = new RequireObject("requiresApple_sister", 206, 461, 50, 50, "zoom.png", "You need an Apple before getting here!", apple, memory_2_dialogue);
  
  
  apple_memory.setHoverImage("zoomIn.png");
  talk_to_sister.addGameObject(apple_memory_dialogue);
  talk_to_sister.addGameObject(apple_memory);
  
  
  MoveToSceneObject object7 = new MoveToSceneObject("goToScene04_scene01", 206, 461, 50, 50, "arrowUp.png", "scene04");
 

  Scene scene01 = new Scene("scene01", "back01.png");
  
  RequireObject loupe01 = new RequireObject("requiresApple_scene01", 206, 461, 50, 50, "zoom.png", "You need an Apple before getting here!", apple, object7);
  loupe01.setHoverImage("zoomIn.png");
  scene01.addGameObject(loupe01);
  
  TextObject loupe02 = new TextObject("smallText_scene01", 541, 445, 50, 50, "zoom.png", "This object has a text!");
  loupe02.setHoverImage("zoomIn.png");
  scene01.addGameObject(loupe02);
  
  TextObject loupe03 = new TextObject("largeText_scene01", 46, 687, 50, 50, "zoom.png", "This object has a way longer text. It shows that the windows can be of varied size according to the text.");
  loupe03.setHoverImage("zoomIn.png");
  scene01.addGameObject(loupe03);
  
  MoveToSceneObject object2 = new MoveToSceneObject("goToScene02_scene01", 708, 445, 50, 50, "arrowRight.png", "scene02");
  scene01.addGameObject(object2);
  
  MoveToSceneObject restaurantSceneMoveTo = new MoveToSceneObject("goToScene06_scene01", 388, 440, 50, 50, "arrowUp.png", "sister");
  scene01.addGameObject(restaurantSceneMoveTo);

  
  Scene scene02 = new Scene("scene02", "back02.png");
  
  MoveToSceneObject object3 = new MoveToSceneObject("goBack_scene02", 350, 700, 50, 50, "arrowDown.png", true);
  scene02.addGameObject(object3);
  
  MoveToSceneObject object4 = new MoveToSceneObject("goToScene03_scene02", 441, 494, 50, 50, "arrowUp.png", "scene03");
  scene02.addGameObject(object4);
  
  
  Scene scene03 = new Scene("scene03", "back04.png");
  
  MoveToSceneObject object5 = new MoveToSceneObject("goBack_scene03", 203, 673, 50, 50, "arrowDown.png", true);
  scene03.addGameObject(object5);
  
  CollectableObject object6 = new CollectableObject("apple_scene03", 325, 366, 123, 101, apple);
  scene03.addGameObject(object6);
  
  
  Scene scene04 = new Scene("scene04", "back03.png");
  
  TextObject endGame = new TextObject("smallText_scene04", 430, 590, 50, 50, "medal1.png", "Congratulations. You finished the game!");
  scene04.addGameObject(endGame);
 
  
  Scene scene05 = new Scene("scene05", "back05.png");
  
  MoveToSceneObject object8 = new MoveToSceneObject("goBack_scene01", 203, 753, 50, 50, "arrowDown.png", true);
  scene05.addGameObject(object8);
  
  TextObject loupe04 = new TextObject("smallText_scene05", 120, 275, 50, 50, "zoom.png", "Have you checked the apples in that odd house to the right?");
  loupe04.setHoverImage("zoomIn.png");
  scene05.addGameObject(loupe04);
  
  TextObject loupe05 = new TextObject("smallText_2_scene05", 480, 285, 50, 50, "zoom.png", "Hello! How are you doing?");
  loupe05.setHoverImage("zoomIn.png");
  scene05.addGameObject(loupe05);
  
  
  sceneManager.addScene(scene01);
  sceneManager.addScene(talk_to_sister);
  sceneManager.addScene(scene02);
  sceneManager.addScene(scene03);
  sceneManager.addScene(scene04);
  sceneManager.addScene(scene05);
  */
}
