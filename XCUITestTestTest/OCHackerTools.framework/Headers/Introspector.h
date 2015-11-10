//
//  Introspector.h
//  OCHackerTools
//
//  Created by Chris Fuentes on 9/28/15.
//  Copyright © 2015 cfuentes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Introspector : NSObject
+ (NSDictionary *)introspectObject:(id)obj;
+ (NSDictionary *)introspectClass:(Class)c;
@end
