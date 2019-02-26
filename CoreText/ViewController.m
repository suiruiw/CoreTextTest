//
//  ViewController.m
//  CoreText
//
//  Created by home on 2019/2/26.
//  Copyright © 2019 ying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *enLabel;
@property (weak, nonatomic) IBOutlet UILabel *znLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self.enLabel.text drawAtPoint:CGPointMake(0, 0) withFont:[UIFont systemFontOfSize:20]];
    [self.znLabel.text drawAtPoint:CGPointMake(0, 50) withFont:[UIFont systemFontOfSize:20]];

}


@end
