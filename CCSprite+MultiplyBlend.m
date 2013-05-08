//
//  CCSprite+MultiplyBlend.m
//  Created by Takashi Kokubun on 13/05/05.
//

#import "CCSprite+MultiplyBlend.h"

@implementation CCSprite (MultiplyBlend)

- (void)setMultiplyBlend:(BOOL)value {
	if (value == YES) {
		self.blendFunc = (ccBlendFunc){GL_ZERO, GL_SRC_COLOR};
	}
}

@end
