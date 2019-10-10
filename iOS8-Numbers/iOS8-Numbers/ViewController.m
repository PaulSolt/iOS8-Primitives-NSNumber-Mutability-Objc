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

	NSArray *numArray = [NSArray arrayWithObjects:one, two, three, nil];
	printf("numArray: %s\n", [[numArray description] UTF8String]);
	//NSLog(@"numArray: %s\n", [[numArray description] UTF8String]);

	NSArray *numArray2 = [NSArray arrayWithObjects:@3, @4, @5, nil];
	printf("numArray2: %s\n", [[numArray2 description] UTF8String]);
}


@end
