
import Foundation
import Cocoa
import blinkapi

// due to the new constraint syntax
//@available(OSX 10.11, *)
if #available(OSX 10.11, *)  {
    WinkApp.shared().run()
}
