<?php
include_once "./library/OAuthStore.php";
include_once "./library/OAuthRequester.php";
 
define("CONSUMER_KEY", "bestapp157");
define("CONSUMER_SECRET", "KPD7R");
define("OAUTH_HOST", "http://sandbox.appprime.net");
define("REQUEST_TOKEN_URL", OAUTH_HOST."/TemanDev/rest/RequestToken/");
define("ACCESS_TOKEN_URL", OAUTH_HOST."/TemanDev/rest/AccessToken/");
 
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
        //  STEP 1:  If we do not have an OAuth token yet, go get one
        $getAuthTokenParams = null;
        // get a request token
        echo 'fetch request token..';
        $tokenResultParams = OAuthRequester::requestRequestToken(CONSUMER_KEY, 0, $getAuthTokenParams);
echo '
request token = '.$tokenResultParams["token"];
        echo '
';
        //  STEP 2:  Get an access token
        try {
            OAuthRequester::requestAccessToken(CONSUMER_KEY, $tokenResultParams["token"], 0, 'POST');
        }
        catch (OAuthException2 $e)
        {
            var_dump($e);
            return;
        }        
 
        // make the docs request.
        $urlAPI = OAUTH_HOST.'/TemanDev/rest/uPointGenerate/';
        $opt = array(CURLOPT_HTTPHEADER=>array('Content-Type: application/json'));
        $body = '{"upoint":{"phoneNumber":"081215992230","trxID":"20141007151900","amount":"0","item":"TAI KUCING","callbackURL":"http://google.com","miscellaneous":"Tes uPointGenerate"}}';        
        $request = new OAuthRequester($urlAPI,'POST',$tokenResultParams,$body);
        echo 'execute api..
';
        $result = $request->doRequest(0,$opt);
        if ($result['code'] == 200) {
                echo $result['body'];
        }
        else {
                echo 'Error: '.$result['code'];
        }
}
catch(OAuthException2 $e) {
echo "OAuthException:  " . $e->getMessage();
var_dump($e);
}