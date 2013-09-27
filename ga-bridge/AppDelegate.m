/*
 * This file is part of the ga-bridge package
 * (c) Jamz Tang <jamz@jamztang.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "AppDelegate.h"
#import "GoogleAnalyticsBridge.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    GoogleAnalyticsBridge *gan = [[GoogleAnalyticsBridge alloc] init:self.window
                                                           trackerID:@"UA-XXXXXXX-Y"];
    
    [gan trackView:@"applicationDidFinishLaunching"];
}

@end
