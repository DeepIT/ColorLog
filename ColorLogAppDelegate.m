//
//  ColorLogAppDelegate.m
//  ColorLog
//
//  Created by Uncle MiF on 9/14/10.
//  Copyright 2010 Deep IT. All rights reserved.
//

#import "ColorLogAppDelegate.h"
#import <ColorLog/ColorLog.h>

@implementation ColorLogAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	//setenv("XcodeColors", "NO", 1);
	
	NSLog(@"You can simple log " LCL_BLUE "and " LCL_GREEN "use " LCL_RED "colors" LCL_RESET);
	
	// or use safe function that strip colors if no plugn found:

	NSLogColor(@"Hello Standard world!\n"
												
												LBCL_WHITE												
												
							LCL_RED "Hello Red world!\n"
							LCL_GREEN "Hello Green world!\n"
							LCL_YELLOW "Hello Yellow world!\n"
							LCL_BLUE "Hello Blue world!\n"
							LCL_MAGENTA "Hello Magenta world!\n"
							LCL_CYAN "Hello Cyan world!\n"
							LCL_WHITE "Hello White world!\n"
							
							LCL_RESET "Hello Standard world again!");
	
	NSLogColor(@"New Standard line");
	NSLogColor(LBCL_GREEN @"New Green-Br line");// background and color continues until next color set
	NSLogColor(@"Next Green-Bg line...");
	NSLogColor(@"Next Green-Bg line...");
	NSLogColor(LBCL_GREEN LCL_BLUE @"Next Blue Green-Bg line");
	NSLogColor(@"Last Green-Bg line" LCL_RESET);
	NSLogColor(LBCL_YELLOW @"New line on Yellow-Bg");	
	
	NSLogReset();// it works as split line also
	
	NSLogRed(LBCL_BLUE @"I'm Red line on Blue-Bg");
	NSLogGreen(@"I'm Green line");
	NSLogYellow(@"I'm Yellow line");
	NSLogBlue(LBCL_GREEN @"I'm Blue line on Green-Bg");
	NSLogMagenta(@"I'm Magenta line");
	NSLogCyan(LBCL_BLACK @"I'm Cyan line on Black-Bg");
	NSLogWhite(LBCL_RED @"I'm White line on Red-Bg " LCL_BLUE @"Blue cut " LCL_GREEN @"Green cut");	
}

@end
