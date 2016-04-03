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
- (IBAction)Action:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            [self setAnimations:@"eat" AndInteger:40];
            break;
        case 1:
            [self setAnimations:@"drink" AndInteger:81];
            break;
        case 2:
            [self setAnimations:@"cymbal" AndInteger:13];
            break;
        case 3:
            [self setAnimations:@"fart" AndInteger:28];
            break;
        case 4:
            [self setAnimations:@"pie" AndInteger:24];
            break;
        case 5:
            [self setAnimations:@"scratch" AndInteger:55];
            break;
        case 6:
            [self setAnimations:@"knockout" AndInteger:81];
            break;
        default:
            break;
    }
}
-(void)setAnimations:(NSString* )name AndInteger:(int)integer{
    if ([self.tom isAnimating]) {
        return;
    }
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
//    [self performSelector:@selector(clearup) withObject:nil afterDelay:self.tom.animationDuration];
    [self.tom performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tom.animationDuration];
}
//-(void)clearup{
//    self.tom.animationImages=nil;
//}
@end
