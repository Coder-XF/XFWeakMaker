//
//  XFTestA.h
//  XFWeakMakerDemo
//
//  Created by 许飞 on 2020/6/18.
//  Copyright © 2020 CoderXF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XFTestB.h"

NS_ASSUME_NONNULL_BEGIN

@interface XFTestA : NSObject
@property(nonatomic, unsafe_unretained) XFTestB *B;

@end

NS_ASSUME_NONNULL_END
