# CCSprite Library

Cocos2d Library for CCSprite  
Created by Takashi Kokubun  

## Usage
setMultiplyBlend:
```
CCSprite *sprite = [CCsprite spriteWithFile:@"file_name.png"];  
sprite.multiplyBlend = YES;
```
  
If your sprite has a transparent background, you have to make them white.  
Transparent point in your sprite will be black with multiply blend mode.  
  
  
spriteWithFiles:
```
CCSprite *spriteSet = [CCsprite spriteWithFiles:@"btn_base.png", @"btn_icon.png", nil];  
[spriteSet spriteAtIndex:1].multiplyBlend = YES;
```
You can make a set of sprites and access to each of them easily.  
Each sprite will be placed in the center of the first sprite.  
  

## License

CCSprite Library is free and open source software distributed under the
[BSD License](http://opensource.org/licenses/bsd-license.php).