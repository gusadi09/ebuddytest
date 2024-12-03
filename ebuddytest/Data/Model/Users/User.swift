//
//  User.swift
//  ebuddytest
//
//  Created by Ewide Dev 5 on 03/12/24.
//

import Foundation

struct User: Codable {
    let uid: String?
    let email: String?
    let phoneNumber: String?
    let gender: Gender?
    
    init(uid: String?, email: String?, phoneNumber: String?, gender: Gender?) {
        self.uid = uid
        self.email = email
        self.phoneNumber = phoneNumber
        self.gender = gender
    }
}
