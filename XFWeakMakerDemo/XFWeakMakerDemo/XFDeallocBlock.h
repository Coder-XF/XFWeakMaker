//
//  XFDeallocBlock.h
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^deallocBlock)();

@interface XFDeallocBlock : NSObject

@property(nonatomic, copy) deallocBlock block;

- (instancetype)initWithBlock:(deallocBlock)block;

@end

NS_ASSUME_NONNULL_END
