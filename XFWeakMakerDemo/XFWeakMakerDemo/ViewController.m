//
//  ViewController.m
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import "ViewController.h"
#import "XFTestA.h"
#import "NSObject+deallocBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    XFTestA *A = [[XFTestA alloc]init];
    XFTestB *B = [[XFTestB alloc]init];
    A.B = B;
    B = nil;
    [A.B print:@"hhhh"];
}


@end
