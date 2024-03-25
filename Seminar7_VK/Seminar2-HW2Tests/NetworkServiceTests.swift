//
//  NetworkServiceTests.swift
//  Seminar2_HW2Tests
//
//  Created by Elena on 25.03.2024.
//

import XCTest
@testable import Seminar2_HW2

final class NetworkServiceTests: XCTestCase {
    var networkService: NetworkService!

    override func setUp() {
        super.setUp()
        networkService = NetworkService()
    }

    override func tearDown() {
        networkService = nil
        super.tearDown()
    }

    func testGetProfile() {
        //Создаем expectation для теста, чтобы дождаться завершения асинхронной операции
        let expectation = self.expectation(description: "Get profile expectation")
        //Создаем mock-объект NetworkServiceDelegate
        class MockNetworkServiceDelegate: NetworkServiceDelegate {
            var updateTableCalled = false
            
            func updateTable(models: [Friend]) {
            //Проверяем,был ли вызван метод updateTable
                updateTableCalled = true
            }
        }
        let mockDelegate = MockNetworkServiceDelegate()
        //Вызываем функцию getProfile() с mock-объектом в качестве параметра
        networkService.getProfile { profile in
        //Проверяем,что профиль не пустой
            XCTAssertNotNil(profile)
            
            XCTAssertTrue(mockDelegate.updateTableCalled)
            //Фиксируем выполнение ожидания
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 20, handler: nil)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
