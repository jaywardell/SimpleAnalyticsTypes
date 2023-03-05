//
//  UserEvent.swift
//  
//
//  Created by Joseph Wardell on 3/1/23.
//

import Foundation

public struct UserEvent: Equatable, Hashable, Codable {
    
    public let userID: UUID
    
    public let flag: Bool
    public let timestamp: InternalDate
    
    public enum Action: String, Codable, CaseIterable {
        case start, pause, stop
    }
    public let action: Action
        
    public init(date: Date, action: Action, userID: UUID, flag: Bool = false) {
        self.userID = userID
        
        self.timestamp = InternalDate(date)
        self.flag = flag
        self.action = action
    }

    public init(action: Action, userID: UUID, flag: Bool = false) {
        self.init(date: Date(), action: action, userID: userID, flag: flag)
    }
}
