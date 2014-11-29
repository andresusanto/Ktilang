<?php 
// Report all PHP errors
error_reporting(-1);

// Same as error_reporting(E_ALL);
ini_set('error_reporting', E_ALL);

include_once "library/OAuthStore.php";
include_once "library/OAuthRequester.php";
 
define("CONSUMER_KEY", "bestapp157");
define("CONSUMER_SECRET", "KPD7R");
define("OAUTH_HOST", "http://sandbox.appprime.net");
define("REQUEST_TOKEN_URL", OAUTH_HOST."/TemanDev/rest/RequestToken/");
define("ACCESS_TOKEN_URL", OAUTH_HOST."/TemanDev/rest/AccessToken/");
 
//  Init the OAuthStore

echo 'anjing';

$options = array(
'consumer_key' => CONSUMER_KEY,
'consumer_secret' => CONSUMER_SECRET,
'server_uri' => OAUTH_HOST,
'request_token_uri' => REQUEST_TOKEN_URL,
'access_token_uri' => ACCESS_TOKEN_URL
);

// Note: do not use "Session" storage in production. Prefer a database storage, such as MySQL.
OAuthStore::instance("Session", $options);
 
try
{
	$getAuthTokenParams = null;
	echo 'fetch request token..';
	$tokenResultParams = OAuthRequester::requestRequestToken(CONSUMER_KEY, 0, $getAuthTokenParams);
	echo 'request token = '.$tokenResultParams["token"];
	echo '';
	
	try {
		OAuthRequester::requestAccessToken(CONSUMER_KEY, $tokenResultParams["token"], 0, 'POST');
	}
	catch (OAuthException2 $e)
	{
		var_dump($e);
		return;
	}        

	
	$urlAPI = OAUTH_HOST.'/TemanDev/rest/sendSMS/';
	$opt = array(CURLOPT_HTTPHEADER=>array('Content-Type: application/json'));
	$body = '{"sendSMS":{"pinRequestID":"1","pinDestAddress":"6281320599744","pinMessageBody":"KETILANG LU BRO!!","pinShortCode":"9147"}}';        
	$request = new OAuthRequester($urlAPI,'POST',$tokenResultParams,$body);
	echo 'execute api..';
	
	$result = $request->doRequest(0,$opt);
	if ($result['code'] == 200) {
			echo $result['body'];
	}
	else {
			echo 'Error: '.$result['code'];
	}
}catch(OAuthException2 $e) {
	echo "OAuthException:  " . $e->getMessage();
	var_dump($e);
}