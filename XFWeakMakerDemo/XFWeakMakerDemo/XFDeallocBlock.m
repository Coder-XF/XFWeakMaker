//
//  XFDeallocBlock.m
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import "XFDeallocBlock.h"

@implementation XFDeallocBlock


- (instancetype)initWithBlock:(deallocBlock)block{
    self = [super init];
    if (self) {
        _block = block;
    }
    return self;
}

/// 对象被释放 -> 调用dealloc -> 执行block -> 在block里将unretain_unsafe置为nil
- (void)dealloc
{
    if(_block){
        NSLog(@"deallocBlock is dealloc!");
        _block();
    }
}

@end
