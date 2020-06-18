//
//  NSObject+deallocBlock.m
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import "NSObject+deallocBlock.h"
#import "objc/runtime.h"
@implementation NSObject (deallocBlock)
- (void)runDeallocBlockWithBlock:(deallocBlock)block{
    XFDeallocBlock *deallocBlock = [[XFDeallocBlock alloc]initWithBlock:block];
    objc_setAssociatedObject(self, _cmd, deallocBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
