//
//  User.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 29/3/2025.
//

import Foundation
import SwiftUI

struct User: Codable, Hashable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var date = Date()
    var extraNapkin = false
    var frequentRefills = false
}
