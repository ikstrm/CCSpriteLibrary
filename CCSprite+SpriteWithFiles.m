//
//  CCSprite+SpriteWithFiles.m
//  Created by Takashi Kokubun on 13/05/05.
//

#import "CCSprite+SpriteWithFiles.h"

@implementation CCSprite (SpriteWithFiles)

+ (id)spriteWithFiles:(NSString *)fileName, ... {
	NSString *eachFileName;
	CCSprite *parentSprite;
	CGSize parentSize;
	va_list args;

	if (fileName) {
		parentSprite = [self spriteWithFile:fileName];
		parentSize = parentSprite.contentSize;

		int i = 1;
		va_start(args, fileName);
		while ((eachFileName = va_arg(args, id))) {
			CCSprite *eachSprite = [self spriteWithFile:eachFileName];
			eachSprite.position = CGPointMake(parentSize.width * 0.5, parentSize.height * 0.5);
			[parentSprite addChild:eachSprite z:i tag:i];
			i++;
		}
		va_end(args);
	}
	return parentSprite;
}

- (CCSprite *)spriteAtIndex:(int)index {
	if (index == 0) {
		return self;
	} else {
		return (id)[self getChildByTag:index];
	}
}

@end
