//
//  Interpretor.swift
//  CMSTestFramework
//
//  Created by SAguilar on 10/28/16.
//  Copyright © 2016 SAguilar. All rights reserved.
//

import Foundation

public class Interpretor{
    
    let dictionary: NSDictionary
    
    init?(){
        
        let bundle = NSBundle(forClass: self.dynamicType)
        if let urlForResource = bundle.URLForResource("TestingPList", withExtension: "plist"){
            if let plistDictionary = NSDictionary(contentsOfURL: urlForResource){
                dictionary = plistDictionary
            }else{
                return nil
            }
        }else{
            print("Failed to get url for resource")
            return nil
        }
    }
}
