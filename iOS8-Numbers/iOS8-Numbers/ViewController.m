//
//  ViewController.m
//  iOS8-Numbers
//
//  Created by Paul Solt on 10/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

//	NSArray *numArray = [NSArray arrayWithObject:3, 4, 5, nil]; // ERROR: Implicit conversion of 'int' to 'id _Nonnull' is disallowed with ARC
	//	int is not an object (id = object in Objective-C)
	// id = pointer type (any object ... AnyObject)

	NSNumber *one = @1; 		// [NSNumber numberWithInt:1];
	NSNumber *two = @2; 		// [NSNumber numberWithInt:2];
	NSNumber *three = @3;	 	// [NSNumber numberWithInt:3];

//	NSArray *numArray = [NSArray arrayWithObjects:one, two, three, nil];
	NSArray *numArray = @[one, two, three];
	printf("numArray: %s\n", [[numArray description] UTF8String]);
	//NSLog(@"numArray: %s\n", [[numArray description] UTF8String]);

//	NSArray *numArray2 = [NSArray arrayWithObjects:@3, @4, @5, nil];
	NSArray *numArray2 = @[@3, @4, @5];
	printf("numArray2: %s\n", [[numArray2 description] UTF8String]);
	
	
	//	[numArray addObject: @27]; // ERROR: No visible @interface for 'NSArray' declares the selector 'addObject:'
	// selector = method = function

	// Immutable (let in Swift)
	// Mutable (var in Swift)

	// const (C constant)
	// NSMutableArray (Objective-C variable - not constant
	// NSArray (Objective-C constant)

	NSMutableArray *array = [numArray mutableCopy];
	[array addObject:@27];

	printf("array: %s\n", [[array description] UTF8String]);
	
	// NSDictionary -> NSMutableDictionary
	// NSString -> NSMutableString
	// NSArray -> NSMutableArray

	NSString *name = @"Dave";

	//	NSMutableString *notMutableName = @"Dave"; // @"Dave" is immutable
	//	[notMutableName appendFormat:@"!"];			// Technically we're a immutable NSString: Crash
	// CRASH! Attempt to mutate immutable object with appendFormat:
	//	printf("%s\n", notMutableName.UTF8String);

	// Ask for a mutable string when trying to change it
	NSMutableString *mutableName = [@"Dave" mutableCopy];
	[mutableName appendFormat:@"!"];
	printf("%s\n", mutableName.UTF8String);
	
	// DANGERS with Mutabilty
	
	// We'll see this with (copy) for @property
	
	NSString *favoriteColor = [@"Blue" mutableCopy];
	printf("favoriteColor: %s\n", favoriteColor.UTF8String);
	
//	[favoriteColor appendFormat:@".... no RED!"]; // ERROR: No visible @interface for 'NSString' declares the selector 'appendFormat:'
	NSMutableString *fakeColor = (NSMutableString *)favoriteColor; // WARNING: Incompatible pointer types initializing 'NSMutableString *' with an expression of type 'NSString *'
	
	[fakeColor appendFormat:@".... no RED!"];
	printf("fakeColor: %s\n", fakeColor.UTF8String);
	

}


@end
