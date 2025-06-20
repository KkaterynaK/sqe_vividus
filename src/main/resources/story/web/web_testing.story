Description: This story contains scenarios for testing the EPAM.com website functionalities including title verification, theme switching, and language change.

Scenario: 1 Verify the title of EPAM.com
Given I am on page with URL `https://www.epam.com/`Then page title IS_EQUAL_TO `EPAM | Software Engineering & Product Development Services`

Scenario: 2 Verify the ability to switch Light/Dark mode on EPAM.com
Given I am on page with URL `https://www.epam.com/`When I click on element located by `cssSelector(.dark-light-toggle)`
When I change context to element located by `cssSelector(body)`
Then context element has CSS property `data-theme` with value that NOT_EQUAL_TO `$initialTheme`#Then element located by `cssSelector(body)` has attribute `data-theme` with value that is not '$initialTheme'

Scenario: 4 Verify the ability to change site's language to UkrainianGiven I am on page with URL `https://www.epam.com/`
When I click on element located by `cssSelector(.location-selector__button)`
When I click on element located by `cssSelector(.location-selector__option[lang="uk"])`Then page title CONTAINS `EPAM | Інженерія програмного забезпечення та розробка продуктів`
