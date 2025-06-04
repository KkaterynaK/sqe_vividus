Scenario 1: Verify the title of EPAM.com
    Given I am on page with URL 'https://www.epam.com'
    Then the page title is 'EPAM | Software Engineering & Product Development Services'


Scenario 2: Verify the ability to switch Light/Dark mode on EPAM.com
    Given I am on page with URL 'https://www.epam.com'
    When I click on element located by css '.dark-light-toggle' # Replace with actual CSS locator of the toggle
    Then element located by css 'body' has attribute 'data-theme' with value that is not '$initialTheme' # Replace 'data-theme' with the actual theme attribute and '$initialTheme' with initial theme value


Scenario 3: Verify the ability to change site's language to Ukrainian
    Given I am on page with URL 'https://www.epam.com'
    When I click on element located by css '.location-selector__button' # Replace with actual CSS locator for language selector
    When I click on element located by css '.location-selector__option[lang="uk"]' # Replace with actual CSS locator for Ukrainian language option
    Then the page title contains the text 'EPAM | Інженерія програмного забезпечення та розробка продуктів' # Replace with a valid Ukrainian title or content-specific verification
