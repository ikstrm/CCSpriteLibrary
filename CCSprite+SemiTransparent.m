//
//  CCSprite+SpriteWithFiles.m
//  Created by Takashi Kokubun on 13/05/08.
//

#import "CCSprite+SemiTransparent.h"

@implementation CCSprite (SemiTransparent)

- (CCSprite *)semiTransparent {
	self.opacity = 127;
	return self;
}

@end
