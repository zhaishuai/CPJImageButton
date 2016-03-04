//
//  ViewController.m
//  CPJImageButton
//
//  Created by shuaizhai on 3/4/16.
//  Copyright © 2016 com.zhaishuai.www. All rights reserved.
//

#import "ViewController.h"
#import "CPJImageButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet CPJImageButton *imgBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.imgBtn addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)]];
    [self.imgBtn addTarget:self action:@selector(imageTapped) forControlEvents:UIControlEventTouchUpInside];

}

- (void)imageTapped{
    NSLog(@"i am touched!");
}

- (void)panAction:(UIPanGestureRecognizer *)sender{
    CGPoint point = [sender translationInView:self.imgBtn];
    self.imgBtn.frame = CGRectMake(self.imgBtn.frame.origin.x, self.imgBtn.frame.origin.y, self.imgBtn.frame.size.width + point.x, self.imgBtn.frame.size.height + point.y);
    [sender setTranslation:CGPointZero inView:self.imgBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
