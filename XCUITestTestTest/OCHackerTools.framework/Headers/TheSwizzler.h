//
//  TheSwizzler.h
//  OCHackerTools
//
//  Created by Chris Fuentes on 9/28/15.
//  Copyright © 2015 cfuentes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TheSwizzler : NSObject
+ (void)swizzleClass:(Class)class originalSel:(SEL)originalSelector newSel:(SEL)newSelector;
@end
