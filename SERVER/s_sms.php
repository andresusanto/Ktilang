<?php 
include_once "library/OAuthStore.php";
include_once "library/OAuthRequester.php";
 
define("CONSUMER_KEY", "bestapp157");
define("CONSUMER_SECRET", "KPD7R");
define("OAUTH_HOST", "http://sandbox.appprime.net");
define("REQUEST_TOKEN_URL", OAUTH_HOST."/TemanDev/rest/RequestToken/");
define("ACCESS_TOKEN_URL", OAUTH_HOST."/TemanDev/rest/AccessToken/");
 
function api_sendsms($nomor, $msg){ 
	//  Init the OAuthStore

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
		$tokenResultParams = OAuthRequester::requestRequestToken(CONSUMER_KEY, 0, $getAuthTokenParams);
		
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
		$body = '{"sendSMS":{"pinRequestID":"1","pinDestAddress":"'.$nomor.'","pinMessageBody":"'.$msg.'","pinShortCode":"9147"}}';        
		$request = new OAuthRequester($urlAPI,'POST',$tokenResultParams,$body);
		
		$result = $request->doRequest(0,$opt);
		if ($result['code'] == 200) {
				return true; //echo $result['body'];
		}
		else {
				return false;
		}
	}catch(OAuthException2 $e) {
		//echo "OAuthException:  " . $e->getMessage();
		//var_dump($e);
		return true;
	}
}