//
//  Tests.swift
//  
//
//  Created by Joseph Wardell on 3/4/23.
//

import XCTest

@testable
import SimpleAnalyticsTypes

final class Tests: XCTestCase {
    
    func test_init_takes_timeIntervalSinceReferenceDate_for_timestamp() {
        let now = Date()
        
        let sut = UserEvent(date: now, action: .start, userID: UUID())
        
        XCTAssertEqual(sut.timestamp, now.timeIntervalSinceReferenceDate)
    }
}
