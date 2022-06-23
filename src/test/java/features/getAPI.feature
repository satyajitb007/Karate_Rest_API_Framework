Feature: GET API feature with Query parameter

Scenario: get all available pets details 
	* def query = {status:'available', id:9223372036854028390}
	Given url baseUrl+'/pet/findByStatus' 
	And params query
	When method GET 
	#And path '6969'
	Then status 200
	
	* print response 
	* def jsonResponse = response 
	* print jsonResponse 
 
	Scenario: get all available pets details and get the count
	* def query = {status:'available'}
	Given url baseUrl+'/pet/findByStatus' 
	And params query
	When method GET 
	#And path '6969'
	Then status 200
	* def jsonResponse = response 
	* print jsonResponse 
	* def petCount = jsonResponse.length
	* print petCount
	* match petCount == 594
	
	Scenario: get user details - user not found 
	* def query = {status:'available', id:9223372036854028390}
	Given  url baseUrl+'/pet/findByStatus' 
	When  method GET 
	And params query
	Then  status 404