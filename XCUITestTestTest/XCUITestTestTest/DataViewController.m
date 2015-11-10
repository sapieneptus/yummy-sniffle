//
//  DataViewController.m
//  XCUITestTestTest
//
//  Created by Chris Fuentes on 9/24/15.
//  Copyright © 2015 Xamarin. All rights reserved.
//

@import OCHackerTools;

#import "DataViewController.h"
#import <XCTest/XCTest.h>
#import <objc/runtime.h>
#import <dlfcn.h>

@interface DataViewController ()

@end

@interface Test  : XCTestCase
@end

@implementation Test

- (void)setUp {
        [super setUp];
        [XCUIApplication load];
        self.continueAfterFailure = YES;
        @try {
                [XCUIApplication new];
        }
        @catch (NSException *exception) {
                NSLog(@"Exception: %@", exception);
        }
        @finally {
                
        }
        
}

- (void)myTest {
        XCUIApplication *app            = [XCUIApplication new];
        XCUIElement *pageElement        = app.otherElements[@"page"];
        [pageElement tap];
        [pageElement swipeLeft];
}

@end

//@implementation XCUIApplication (swizzle)
//- (id)init_swizzle_PrivateWithPath:(NSString*)path bundleID:(NSString *)bundleID {
//        return [self init_swizzle_PrivateWithPath:path bundleID:bundleID];
//}
//
//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
//        
//}
//
//- (id)init_swizzle {
//        NSString *path = @"/Users/chrisf/Library/Developer/Xcode/DerivedData/XCUITestTestTest-hgyjafsfcuzmcfgdznhqmvkwkbdf/Build/Products/Debug-iphonesimulator/XCUITestTestTest.app";
//        NSString *bundleID = @"com.xamarin.XCUITestTestTest";
//        
//        [self addObserver:self forKeyPath:@"path" options:0 context:NULL];
//        
//        [self setValue:path forKeyPath:@"path"];
//        [self setValue:bundleID forKeyPath:@"bundleID"];
////        XCUIElementQuery *appQuery = [[XCUIElementQuery new] matchingType:XCUIElementTypeApplication identifier:@"com.xamrin.XCUITestTestTest"];
//
//        
////        [self setValue:appQuery forKeyPath:@"applicationQuery"];
//        [[NSProcessInfo processInfo] processIdentifier];
//        NSMethodSignature* signature = [[self class] instanceMethodSignatureForSelector: @selector(setProcessID:)];
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature: signature];
//        [invocation setTarget: self];
//        [invocation setSelector: @selector(setProcessID:) ];
//        int pid = [[NSProcessInfo processInfo] processIdentifier] ;
//        [invocation setArgument: &pid atIndex: 2];
//        [invocation invoke];
//        
//        return [self init_swizzle];
//}
//
//
//+ (void)load {
//        DO_IT_ONCE(^{
//                SEL originalSel = @selector(init);
//                SEL swizzledSel = @selector(init_swizzle);
//                [TheSwizzler swizzleClass:[self class] originalSel:originalSel newSel:swizzledSel];
//        });
//}
//@end

@implementation DataViewController

- (void)localTest {
}

- (void)viewDidLoad {
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
        [super viewDidAppear:animated];
        
        XCTestCase *test = [Test testCaseWithSelector:@selector(myTest)];
        [test runTest];
}

- (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
        [super viewWillAppear:animated];
        self.dataLabel.text = [self.dataObject description];
}

@end
