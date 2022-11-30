import processing.sound.*;
  
class SoundManager
{
  SoundFile backgroundSound1;
  SoundFile backgroundSound2;
  SoundFile shotGunSound; 
  SoundFile HurtSound;
  SoundFile GameOverSound;
  
  SoundFile sourceSound = null;
  SoundFile targetSound = null;
  float targetVolume = 1;
  boolean fading = false;
  
  void setup(PApplet context)
  {
    /*
    println ("Creating sounds...");
    
    println ("Loading sound 1 ("+millis()+")");
    backgroundSound1 = new SoundFile (context, "fearmonger.wav");
    println ("Loading sound 2 ("+millis()+")");
    backgroundSound2 = new SoundFile (context, "background2.wav");
   
    println ("Loading sound 3 ("+millis()+")");
    shotGunSound = new SoundFile (context, "shotgun.wav");
    
    println ("Loading sound 4 ("+millis()+")");
    HurtSound = new SoundFile (context, "oof.wav");
    
    println ("Loading sound 4 ("+millis()+")");
    GameOverSound = new SoundFile (context, "gameover.wav");
    
    
    println ("All done");
    
    startFade (backgroundSound2);
    */
  }
  
  void draw()
  {
    if (fading) doFade();
  }
  
  void stopAll()
  {
    backgroundSound1.stop();
    backgroundSound2.stop();
    shotGunSound.stop(); 
    HurtSound.stop();
    GameOverSound.stop();
  }
  
  void startFade(SoundFile pTargetSound) 
  {
    if (targetSound == pTargetSound) return;
    sourceSound = targetSound;
    targetSound = pTargetSound;
    fading = true;
    targetVolume = 1 - targetVolume;
    pTargetSound.amp(targetVolume);
    pTargetSound.loop();
  }

  void doFade() 
  {
    targetVolume += 1/120.0;
    println ("fading:"+targetVolume);
    if (sourceSound != null) sourceSound.amp(constrain (1-targetVolume, 0, 1));
    if (targetSound != null) targetSound.amp(constrain (targetVolume, 0, 1));
    fading = targetVolume < 1;
    
    if (!fading && sourceSound != null) {
      sourceSound.stop();
    }
  }
  
}
