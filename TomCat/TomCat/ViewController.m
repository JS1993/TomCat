//
//  ViewController.m
//  TomCat
//
//  Created by  江苏 on 16/4/3.
//  Copyright © 2016年 jiangsu. All rights reserved.
//
#import "ViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *tom;
@end
@implementation ViewController
-(void)viewDidLoad{
    [super viewDidLoad];
}
- (IBAction)Action:(UIButton *)sender {
    [self setAnimations:sender.currentTitle AndInteger:sender.tag];
}
-(void)setAnimations:(NSString* )name AndInteger:(int)integer{
    if ([self.tom isAnimating]) return;
    NSMutableArray* arr=[NSMutableArray array];
    for (int i=0; i<integer; i++) {
        NSString* imageName=[NSString stringWithFormat:@"%@_%02d.jpg",name,i];
        NSString* path=[[NSBundle mainBundle]pathForResource:imageName ofType:nil];
        UIImage* image=[UIImage imageWithContentsOfFile:path];
        [arr addObject:image];
    }
    self.tom.animationImages=arr;
    self.tom.animationRepeatCount=1;
    self.tom.animationDuration=arr.count*0.075;
    [self.tom startAnimating];
    //动画结束后，清理内存
    [self.tom performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tom.animationDuration];
}
@end
