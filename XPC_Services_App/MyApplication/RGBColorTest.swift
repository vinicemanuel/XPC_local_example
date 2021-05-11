//
//  RGBColorTest.swift
//  XPC_Services_App
//
//  Created by Caio Araujo on 02/02/21.
//

import Foundation

@objc(RGBColorTest) public class RGBColorTest: NSObject, NSSecureCoding {
    
    public let red: Float
    public let green: Float
    public let blue: Float
    
    public static var supportsSecureCoding: Bool {
      return true
    }

    public required init?(coder: NSCoder) {
        
//        let udid = coder.decodeObject(of: [NSString.self], forKey: "udid") as? String
        self.red = coder.decodeFloat(forKey: "red")
        self.green = coder.decodeFloat(forKey: "green")
        self.blue = coder.decodeFloat(forKey: "blue")
        
//        self.red = coder.decodeObject(forKey: "red") as! CGFloat
//        self.green = coder.decodeObject(forKey: "green") as! CGFloat
//        self.blue = coder.decodeObject(forKey: "blue") as! CGFloat
        
        print("coder RGBColorTest")
    }

    public func encode(with coder: NSCoder) {
        
//        coder.encode(udid, forKey: "udid")
        
        coder.encode(self.red, forKey: "red")
        coder.encode(self.green, forKey: "green")
        coder.encode(self.blue, forKey: "blue")
    }
    
    
    @objc public init(red: Float, green: Float, blue: Float) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
}
