//
//  frameAjust.m
//  CoreText
//
//  Created by home on 2019/2/26.
//  Copyright © 2019 ying. All rights reserved.
//

#import "frameAjust.h"

@implementation frameAjust

- (CGFloat)x {
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {
    self.frame = CGRectMake(x, self.y, self.width, self.height);
}

- (CGFloat)y {
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y {
    self.frame = CGRectMake(self.x, y, self.width, self.height);
}

- (CGFloat)width{
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width{
    self.frame = CGRectMake(self.x, self.y, width, self.height);
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    self.frame = CGRectMake(self.x, self.y, self.width, height);
}

@end
