<?php
//ini_set('display_errors',1);
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');

$result = [];
$visitor_name ='';
$visitor_email ='';
$visitor_subject  ='';
$visitor_message ='';

$errorMsg = '';

//1.check the submission out -> validate the data


if(isset($_POST['name'])){
	 if (empty($_POST['name'])) {
		$errorMsg .= " name cannot be empty!";
	 }else{
	  	  $visitor_name .= ' '.filter_var($_POST['name'], FILTER_SANITIZE_STRING);
	 }
}


if(isset($_POST['email'])){
	  if (empty($_POST["email"])) {
		$errorMsg .= " Email cannot be empty!";
	  } else {
	    $visitor_email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
	  }
}

if(isset($_POST['subject'])){
	  if (empty($_POST["subject"])) {
		$errorMsg .= " Subject cannot be empty!";
	  } else {
	    $visitor_subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
	  }
}

if(isset($_POST['message'])){

	  if (empty($_POST["message"])) {
		$errorMsg .= " message cannot be empty!";
	  } else {
	    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
	  }
}


if(!empty($errorMsg)){
	$results['code'] =1;
	$results['message'] = $errorMsg;
	echo json_encode($results);
	exit;
}



//2.prepare the email

$email_subject = $visitor_subject ;
$email_recipient = 'cindylxd123@gmail.com';
$email_message = sprintf('Name: %s, Email: %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);
$email_headers = array(
//    'From'=>"luxindi@luxindi.com",
    'Reply-To'=> $visitor_email,
    'From'=>$visitor_email
);



//3. send out the email
$email_result= mail($email_recipient, $email_subject, $email_message, $email_headers);
if($email_result){
	$results['code'] =0;
    $results['message'] = sprintf('Thank you for contacting us, %s! ', $visitor_name);
}else{
	$results['code'] =1;
    $results['message'] = sprintf('We are sorry but the email did not go through.');
}

echo json_encode($results);

?>