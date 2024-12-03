//
//  EnvironmentConfig.swift
//  ebuddytest
//
//  Created by Ewide Dev 5 on 03/12/24.
//

import Foundation

class EnvironmentConfig {
    
    static let shared = EnvironmentConfig()
    
    lazy var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration.range(of: "Debug") != nil {
                return Environment.development
            } else if configuration.range(of: "Staging") != nil {
                return Environment.staging
            }
        }
        
        return Environment.production
    }()
}
