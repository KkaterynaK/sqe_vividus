Scenario: Verify that allows creating a User
    Given request body:
    """
    {
        "id": 123,
        "username": "testuser",
        "firstName": "Test",
        "lastName": "User",
        "email": "testuser@example.com",
        "password": "password123",
        "phone": "1234567890",
        "userStatus": 1
    }
    """
    When I execute HTTP POST request for resource with URL 'https://petstore.swagger.io/v2/user'
    Then response code is equal to 200
    Then JSON element value from response body by JSON path '$.message' is equal to '123'
