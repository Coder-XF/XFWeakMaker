//
//  NSObject+deallocBlock.h
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XFDeallocBlock.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (deallocBlock)

- (void)runDeallocBlockWithBlock:(deallocBlock)block;

@end

NS_ASSUME_NONNULL_END
