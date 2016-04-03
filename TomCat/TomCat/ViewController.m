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

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)Action:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
        {
            NSMutableArray* arr=[NSMutableArray array];
            for (int i=0; i<40; i++) {
                NSString* imageName=[NSString stringWithFormat:@"eat_%02d.jpg",i];
                UIImage* image=[UIImage imageNamed:imageName];
                [arr addObject:image];
            }
            self.tom.animationImages=arr;
            self.tom.animationDuration=arr.count*0.075;
            [self.tom startAnimating];
        }
            break;
        case 1:
        {
            NSMutableArray* arr=[NSMutableArray array];
            for (int i=0; i<81; i++) {
                NSString* imageName=[NSString stringWithFormat:@"drink_%02d.jpg",i];
                UIImage* image=[UIImage imageNamed:imageName];
                [arr addObject:image];
            }
            self.tom.animationImages=arr;
            self.tom.animationDuration=arr.count*0.075;
            [self.tom startAnimating];
        }
            break;
        case 2:
        {
            NSMutableArray* arr=[NSMutableArray array];
            for (int i=0; i<13; i++) {
                NSString* imageName=[NSString stringWithFormat:@"cymbal_%02d.jpg",i];
                UIImage* image=[UIImage imageNamed:imageName];
                [arr addObject:image];
            }
            self.tom.animationImages=arr;
            self.tom.animationDuration=arr.count*0.075;
            [self.tom startAnimating];
        }
            break;
        case 3:
        {
            NSMutableArray* arr=[NSMutableArray array];
            for (int i=0; i<27; i++) {
                NSString* imageName=[NSString stringWithFormat:@"fart_%02d.jpg",i];
                UIImage* image=[UIImage imageNamed:imageName];
                [arr addObject:image];
            }
            self.tom.animationImages=arr;
            self.tom.animationDuration=arr.count*0.075;
            [self.tom startAnimating];
        }
            break;
        case 4:
        {
            NSMutableArray* arr=[NSMutableArray array];
            for (int i=0; i<24; i++) {
                NSString* imageName=[NSString stringWithFormat:@"pie_%02d.jpg",i];
                UIImage* image=[UIImage imageNamed:imageName];
                [arr addObject:image];
            }
            self.tom.animationImages=arr;
            self.tom.animationDuration=arr.count*0.075;
            [self.tom startAnimating];
        }
            break;
        case 5:
        {
            NSMutableArray* arr=[NSMutableArray array];
            for (int i=0; i<56; i++) {
                NSString* imageName=[NSString stringWithFormat:@"scratch_%02d.jpg",i];
                UIImage* image=[UIImage imageNamed:imageName];
                [arr addObject:image];
            }
            self.tom.animationImages=arr;
            self.tom.animationDuration=arr.count*0.075;
            [self.tom startAnimating];
        }
            break;
        default:
            break;
    }
}

@end
