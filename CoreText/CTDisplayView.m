//
//  CTDisplayView.m
//  CoreText
//
//  Created by home on 2019/2/26.
//  Copyright © 2019 ying. All rights reserved.
//

#import "CTDisplayView.h"
#import <CoreText/CoreText.h>

@implementation CTDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    
    // 1 获取图形上下文
    CGContextRef refContext = UIGraphicsGetCurrentContext();
    
    // 2 画布旋转
    CGContextSetTextMatrix(refContext, CGAffineTransformIdentity);
    CGContextTranslateCTM(refContext, 0, self.bounds.size.height);
    CGContextScaleCTM(refContext, 1.0, -1.0);
    
    // 3 创建绘制区域
    CGMutablePathRef pathRef = CGPathCreateMutable();
//    CGPathAddRect(pathRef, NULL, self.bounds);
    CGPathAddEllipseInRect(pathRef, NULL, self.bounds);
    
    // 文字
//    NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:@"Hello World !"];
    NSAttributedString *attStr =
    [[NSAttributedString alloc] initWithString:@"Hello World !"
                                  "创建绘制的区域，CoreText本身支持各种文字排版的区域"
                                  "我们这里简单地将UIView的整个界面作为排版的区域。"
                                  "为了加深理解，建议读者将该步骤的代码替换成如下代码，"
                                  "测试设置不同的绘制区域带来的界面变化。"];
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attStr);
    
    CTFrameRef frameRef =  CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, [attStr length]), pathRef, NULL);
    CTFrameDraw(frameRef, refContext);
    
    // release
    CFRelease(frameRef);
    CFRelease(pathRef);
    CFRelease(frameSetter);
}


@end
