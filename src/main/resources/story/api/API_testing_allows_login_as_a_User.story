Scenario: Verify that allows login as a User

    When I execute HTTP GET request for resource with URL 'https://petstore.swagger.io/v2/user/login?username=testuser&password=password123'
    Then response code is equal to 200
    Then JSON element value from response body by JSON path '$.message' contains 'logged in'
