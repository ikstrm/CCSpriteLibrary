//
//  CCSprite+spriteWithFiles.h
//  Created by Takashi Kokubun on 13/05/05.
//

#import "CCSprite.h"

@interface CCSprite (SpriteWithFiles)

+ (id)spriteWithFiles:(NSString *)fileName, ... NS_REQUIRES_NIL_TERMINATION;

- (CCSprite *)spriteAtIndex:(int)index;

@end
