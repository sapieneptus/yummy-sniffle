//
//  OCHackerTools.h
//  OCHackerTools
//
//  Created by Chris Fuentes on 9/28/15.
//  Copyright © 2015 cfuentes. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for OCHackerTools.
FOUNDATION_EXPORT double OCHackerToolsVersionNumber;

//! Project version string for OCHackerTools.
FOUNDATION_EXPORT const unsigned char OCHackerToolsVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <OCHackerTools/PublicHeader.h>

#import <OCHackerTools/Introspector.h>
#import <OCHackerTools/TheSwizzler.h>

//Useful macro for swizzling
#define DO_IT_ONCE(block) static dispatch_once_t once; dispatch_once(&once, (block) );
