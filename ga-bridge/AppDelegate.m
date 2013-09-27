/*
 * This file is part of the ga-bridge package
 * (c) Jamz Tang <jamz@jamztang.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "AppDelegate.h"
#import "GoogleAnalyticsBridge.h"

@interface AppDelegate ()

@property (nonatomic, strong) GoogleAnalyticsBridge *gan;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Initialize GoogleAnalyticsBridge
    NSString *trackerID = @"UA-XXXXXX-Y";
    self.gan = [[GoogleAnalyticsBridge alloc] initWithTrackerID:trackerID];
    
    [self.gan trackView:@"applicationDidFinishLaunching"];
}

@end
