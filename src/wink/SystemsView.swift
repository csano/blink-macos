
import Cocoa

public class SystemsView: NSView {

    override init(frame: CGRect) {
        super.init(frame: CGRect(x: frame.origin.x, y: frame.origin.y, width: 100, height: frame.size.height))
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.red.cgColor
    }

    public required init?(coder:NSCoder) {
        super.init(coder: coder)
    }
}
