import XCTest
import WebDriverAgentLib
class automate: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    func testWebAutomation() {
        let webview = app.webViews.firstMatch

        // Access Google
        webview.load(URLRequest(url: URL(string: "https://www.google.com")!))
        
        // Wait for the page to load
        let googleSearchField = webview.textFields["q"]
        XCTAssertTrue(googleSearchField.waitForExistence(timeout: 10), "Google search field not found")
        
        // Perform a search
        googleSearchField.tap()
        googleSearchField.typeText("food near me\n")
        
        // Wait for search results
        let searchResultsLink = webview.links["Places for Food Near Me"]
        XCTAssertTrue(searchResultsLink.waitForExistence(timeout: 10), "Search results link not found")
        
        // Click on the search result
        searchResultsLink.tap()
        
        // Wait for the search result page to load
        let searchResultTitle = webview.staticTexts["Food Near Me"]
        XCTAssertTrue(searchResultTitle.waitForExistence(timeout: 10), "Search result page not loaded")
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
}
