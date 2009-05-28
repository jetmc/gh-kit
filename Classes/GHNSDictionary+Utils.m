//
//  GHNSDictionary+Utils.m
//  GHKit
//
//  Created by Gabriel Handford on 3/12/09.
//  Copyright 2009. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "GHNSDictionary+Utils.h"

@implementation NSDictionary (GHUtils)

- (double)gh_doubleForKey:(id)key withDefault:(double)defaultValue {
	id value = [self objectForKey:key];
	if (!value || [value isEqual:[NSNull null]]) return defaultValue;
	return [value doubleValue];
}

- (double)gh_doubleForKey:(id)key {
	return [self gh_doubleForKey:key withDefault:0];
}

- (NSInteger)gh_integerForKey:(id)key withDefault:(NSInteger)defaultValue {
	id value = [self objectForKey:key];
	if (!value || [value isEqual:[NSNull null]]) return defaultValue;
	return [value integerValue];
}

- (NSInteger)gh_integerForKey:(id)key {
	return [self gh_integerForKey:key withDefault:0];
}

- (NSNumber *)gh_numberForKey:(id)key withDefault:(NSInteger)defaultValue {
	id value = [self objectForKey:key];
	if (!value || [value isEqual:[NSNull null]]) return [NSNumber numberWithInteger:defaultValue];
	NSAssert([value isKindOfClass:[NSNumber class]], @"Value must be a NSNumber");
	return value;
}

- (BOOL)gh_boolForKey:(id)key withDefault:(BOOL)defaultValue {
	id value = [self objectForKey:key];
	if (!value || [value isEqual:[NSNull null]]) return defaultValue;
	return [value boolValue];
}

- (BOOL)gh_boolForKey:(id)key {
	return [self gh_boolForKey:key withDefault:NO];
}

- (id)gh_objectForKey:(id)key withDefault:(id)defaultValue {
	id value = [self objectForKey:key];
	if (!value || [value isEqual:[NSNull null]]) return defaultValue;
	return value;
}

- (id)gh_objectForKeyOrNSNull:(id)key {
	return [self gh_objectForKey:key withDefault:[NSNull null]];
}

@end
