//
//  XFTestA.m
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import "XFTestA.h"
#import "NSObject+deallocBlock.h"

@implementation XFTestA

- (void)setB:(XFTestB *)B{
    _B = B;
    if(_B){
        [_B runDeallocBlockWithBlock:^{
            NSLog(@"_B is dealloc");
            self->_B = nil;
        }];
    }
}

@end
