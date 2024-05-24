Description: The Demo Tests for SUPPLYON POC UI Automation

Scenario: Check Supplier Organization Profile : DEV_SRMPORTAL-6673
Meta:
    @testCaseId DEV_SRMPORTAL-6673
When I login to Business Directory with `pb-001`, `Support-2`
When I go to Business Directory > Supplier Organizations
When I do Supplier Organization search by name `NC-001`
When I open Supplier Organization Profile by name `NC-001`
