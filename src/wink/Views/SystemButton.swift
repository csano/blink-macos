
import Cocoa

public class SystemButton: NSView {
    
    var label: NSTextField!
    var iconBackground: NSView!
    
    init() {
        super.init(frame: CGRect.zero)
        
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.purple.cgColor
        
        self.label = NSTextField(labelWithString: "Network")
        self.label.alignment = .center
        self.addSubview(label)
        
        iconBackground = NSView()
        iconBackground.wantsLayer = true
        iconBackground.layer?.backgroundColor = NSColor.yellow.cgColor
        iconBackground.layer?.cornerRadius = 5.0
        self.addSubview(iconBackground)
        
    }
    
    override public func updateConstraints() {
        super.updateConstraints()

        iconBackground.translatesAutoresizingMaskIntoConstraints = false
        iconBackground.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconBackground.heightAnchor.constraint(equalToConstant: 50).isActive = true
        iconBackground.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        iconBackground.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        label.topAnchor.constraint(equalTo: iconBackground.bottomAnchor, constant: 2).isActive = true
        label.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    public required init?(coder:NSCoder) {
        super.init(coder: coder)
    }
}
