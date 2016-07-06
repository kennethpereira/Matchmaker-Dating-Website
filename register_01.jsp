<!DOCTYPE html>
<html lang="en">

<head>
	<title></title>
	<script language="JavaScript" src="javascript/matchnet.js"></script>
	<script language="JavaScript" src="javascript/region3.js"></script>
	<script language="JavaScript" src="is/im.js"></script>
	<link rel="stylesheet" type="text/css" href="reg.css">
	<link rel="stylesheet" type="text/css" href="">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	<script>
		$(document).ready(function(){
				$("#UserName").blur(function(){
					
					if(!($(this).val())){
						$("#error_UserName").addClass("displaySpan");
					}
				});
				
				$("#Password").blur(function(){
					
					if(!($(this).val())){
						$("#error_Password").addClass("displaySpan");
					}
				});
				
				$("#Password2").blur(function(){
					
					if(!($(this).val())){
						$("#error_Password2").addClass("displaySpan");
					}
				});
				
				$("#email").blur(function(){
					
					if(!($(this).val())){
						$("#error_Email").addClass("displaySpan");
					}
				});
				
				$("#State").blur(function(){
					
					if(!($(this).val())){
						$("#error_State").addClass("displaySpan");
					}
				});
				
				$("#City").blur(function(){
					
					if(!($(this).val())){
						$("#error_City").addClass("displaySpan");
					}
				});
				
				$("#Zip").blur(function(){
					
					if(!($(this).val())){
						$("#error_postCode").addClass("displaySpan");
					}
				});
				
				
				
				
				
				
			
		});
	</script>
	
	
</head>

<body bgcolor="#ffffff" text="#000000" leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
	<div class="container">

			<form name="frmStep1" method="post" action="register_02.jsp" onSubmit="return validateFormfrmStep1()" class="form-horizontal">
			<div class="row form-group">
			
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<label for="userName" class="control-label">User Name</label>
			<input type="text" name="UserName" value="" class="form-control" id="UserName"></input>
			<span id="error_UserName" > Please enter userName</span>
			</div>
			</div>
				
			<div class="row form-group">
			
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<label for="password" class="control-label">Password:</label>
			<input type="password" name="Password" value="" class="form-control" id="Password">&nbsp;(confidential)</input>
			<span id="error_Password">Please enter Password</span>
			</div>
			</div>

			<div class="row form-group">
			
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<label for="Password2" class="control-label">Re-enter password:</label>
			<input type="password" name="Password2" value="" class="form-control" id="Password2">&nbsp;
			<span id="error_Password2">Please enter Password</span>
			</div>
			</div>

			<div class="row form-group">
			<label for="DOB" class="col-sm-2 control-label">Date of Birth:</label>
			<select name="BirthDate_month" >
				<option value="1" selected>Jan</option>
				<option value="2">Feb</option>
				<option value="3">Mar</option>
				<option value="4">Apr</option>
				<option value="5">May</option>
				<option value="6">Jun</option>
				<option value="7">Jul</option>
				<option value="8">Aug</option>
				<option value="9">Sep</option>
				<option value="10">Oct</option>
				<option value="11">Nov</option>
				<option value="12">Dec</option>
			</select>/
			
			<select name="BirthDate_day" >
				<option value="1" selected>1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>/

			<select name="BirthDate_year" >
				<option value="1986" selected>1986</option>
				<option value="1985">1985</option>
				<option value="1984">1984</option>
				<option value="1983">1983</option>
				<option value="1982">1982</option>
				<option value="1981">1981</option>
				<option value="1980">1980</option>
				<option value="1979">1979</option>
				<option value="1978">1978</option>
				<option value="1977">1977</option>
				<option value="1976">1976</option>
				<option value="1975">1975</option>
				<option value="1974">1974</option>
				<option value="1973">1973</option>
				<option value="1972">1972</option>
				<option value="1971">1971</option>
				<option value="1970">1970</option>
				<option value="1969">1969</option>
				<option value="1968">1968</option>
				<option value="1967">1967</option>
				<option value="1966">1966</option>
				<option value="1965">1965</option>
				<option value="1964">1964</option>
				<option value="1963">1963</option>
				<option value="1962">1962</option>
				<option value="1961">1961</option>
				<option value="1960">1960</option>
				<option value="1959">1959</option>
				<option value="1958">1958</option>
				<option value="1957">1957</option>
				<option value="1956">1956</option>
				<option value="1955">1955</option>
				<option value="1954">1954</option>
				<option value="1953">1953</option>
				<option value="1952">1952</option>
				<option value="1951">1951</option>
				<option value="1950">1950</option>
				<option value="1949">1949</option>
				<option value="1948">1948</option>
				<option value="1947">1947</option>
				<option value="1946">1946</option>
				<option value="1945">1945</option>
				<option value="1944">1944</option>
				<option value="1943">1943</option>
				<option value="1942">1942</option>
				<option value="1941">1941</option>
				<option value="1940">1940</option>
				<option value="1939">1939</option>
				<option value="1938">1938</option>
				<option value="1937">1937</option>
				<option value="1936">1936</option>
				<option value="1935">1935</option>
				<option value="1934">1934</option>
				<option value="1933">1933</option>
				<option value="1932">1932</option>
				<option value="1931">1931</option>
				<option value="1930">1930</option>
				<option value="1929">1929</option>
				<option value="1928">1928</option>
				<option value="1927">1927</option>
				<option value="1926">1926</option>
				<option value="1925">1925</option>
				<option value="1924">1924</option>
				<option value="1923">1923</option>
				<option value="1922">1922</option>
				<option value="1921">1921</option>
				<option value="1920">1920</option>
				<option value="1919">1919</option>
				<option value="1918">1918</option>
				<option value="1917">1917</option>
				<option value="1916">1916</option>
				<option value="1915">1915</option>
				<option value="1914">1914</option>
				<option value="1913">1913</option>
				<option value="1912">1912</option>
				<option value="1911">1911</option>
				<option value="1910">1910</option>
				<option value="1909">1909</option>
				<option value="1908">1908</option>
				<option value="1907">1907</option>
				<option value="1906">1906</option>
				<option value="1905">1905</option>
				<option value="1904">1904</option>
			</select>&nbsp;&nbsp;
			<span id="error_Dobd">Please enter day</span>
			<span id="error_Dobm">Please enter month</span>
			<span id="error_Doby">Please enter year</span>
			</div>

			<div class="row form-group" >

			<label for="Email" class="col-sm-2 control-label">Email address:</label>
			<input type="text" name="Email" value=""  size="20" id="email">&nbsp;(confidential)</input>
			<span id="error_Email">Please enter email</span>
			</div>

			<div class="row form-group">
			<label for="GenderID" class="col-sm-2 control-label">You are a:</label>
			
			   <input type="radio" name="GenderID" value="Male" id="male"> Male
			   <input type="radio" name="GenderID" value="Female" id="female"> Female
				
				<span id="error_Gender">Please select gender</span>
			</div>
			<div class="row form-group">
			<label for="DOB" class="col-sm-2 control-label">Looking for a:</label>
			
			   <input type="radio" name="SeekingGenderID" value="Male" id="male1"> Male</input>
			   <input type="radio" name="SeekingGenderID" value="Female" id="female1"> Female</input>
				<span id="error_Gender1">Please enter seeking gender</span>
			</div>

			<div class="row form-group">
			<label for="DOB" class="col-sm-2 control-label">Country:</label>
			
			<select name="CountryRegionID" ">
				<option value="Afghanistan"         >Afghanistan</option>
				<option value="Albania"             >Albania</option>
				<option value="Algeria"             >Algeria</option>
				<option value="Andorra"             >Andorra</option>
				<option value="Angola"              >Angola</option>
				<option value="Anguilla"            >Anguilla</option>
				<option value="Antarctica"          >Antarctica</option>
				<option value="Antigua & Barbuda"   >Antigua & Barbuda</option>
				<option value="Argentina"           >Argentina</option>
				<option value="Armenia"             >Armenia</option>
				<option value="Aruba"               >Aruba</option>
				<option value="Australia"           >Australia</option>
				<option value="Austria"             >Austria</option>
				<option value="Azerbaijan"          >Azerbaijan</option>
				<option value="Bahamas"             >Bahamas</option>
				<option value="Bahrain"             >Bahrain</option>
				<option value="Bangladesh"          >Bangladesh</option>
				<option value="Barbados"            >Barbados</option>
				<option value="Belarus"             >Belarus</option>
				<option value="Belgium"             >Belgium</option>
				<option value="Belize"              >Belize</option>
				<option value="Benin"               >Benin</option>
				<option value="Bermuda"             >Bermuda</option>
				<option value="Bhutan"              >Bhutan</option>
				<option value="Bolivia"             >Bolivia</option>
				<option value="Bosnia-Herzgna"      >Bosnia-Herzgna</option>
				<option value="Botswana"            >Botswana</option>
				<option value="Brazil"              >Brazil</option>
				<option value="Brunei"              >Brunei</option>
				<option value="Bulgaria"            >Bulgaria</option>
				<option value="Burkina Faso"        >Burkina Faso</option>
				<option value="Burundi"             >Burundi</option>
				<option value="Cambodia"            >Cambodia</option>
				<option value="Cameroon"            >Cameroon</option>
				<option value="Canada"              >Canada</option>
				<option value="Cape Verde"          >Cape Verde</option>
				<option value="Cayman Islands"      >Cayman Islands</option>
				<option value="Central African Rep.">Central African Rep.</option>
				<option value="Chad"                >Chad</option>
				<option value="Chile"               >Chile</option>
				<option value="China"               >China</option>
				<option value="Christmas Island"    >Christmas Island</option>
				<option value="Cocos (Keeling) Is." >Cocos (Keeling) Is.</option>
				<option value="Colombia"            >Colombia</option>
				<option value="Comoros"             >Comoros</option>
				<option value="Congo"               >Congo</option>
				<option value="Congo (Zaire)"       >Congo (Zaire)</option>
				<option value="Cook Islands"        >Cook Islands</option>
				<option value="Costa Rica"          >Costa Rica</option>
				<option value="Cote DIvoire"        >Cote D'Ivoire</option>
				<option value="Croatia (Hrvatska)"  >Croatia (Hrvatska)</option>
				<option value="Cyprus"              >Cyprus</option>
				<option value="Czech Rep."          >Czech Rep.</option>
				<option value="Denmark"             >Denmark</option>
				<option value="Djibouti"            >Djibouti</option>
				<option value="Dominica"            >Dominica</option>
				<option value="Dominican Rep."      >Dominican Rep.</option>
				<option value="East Timor"          >East Timor</option>
				<option value="Ecuador"             >Ecuador</option>
				<option value="Egypt"               >Egypt</option>
				<option value="El Salvador"         >El Salvador</option>
				<option value="Equatorial Guinea"   >Equatorial Guinea</option>
				<option value="Eritrea"             >Eritrea</option>
				<option value="Estonia"             >Estonia</option>
				<option value="Ethiopia"            >Ethiopia</option>
				<option value="Falkland Is."        >Falkland Is.</option>
				<option value="Faroe Islands"       >Faroe Islands</option>
				<option value="Fiji Islands"        >Fiji Islands</option>
				<option value="Finland"             >Finland</option>
				<option value="France"              >France</option>
				<option value="French Guiana"       >French Guiana</option>
				<option value="French Polynesia"    >French Polynesia</option>
				<option value="French So. Terr."    >French So. Terr.</option>
				<option value="Gabon"               >Gabon</option>
				<option value="Gambia"              >Gambia</option>
				<option value="Georgia"             >Georgia</option>
				<option value="Germany"             >Germany</option>
				<option value="Ghana"               >Ghana</option>
				<option value="Gibraltar"           >Gibraltar</option>
				<option value="Greece"              >Greece</option>
				<option value="Greenland"           >Greenland</option>
				<option value="Grenada"             >Grenada</option>
				<option value="Guadeloupe"          >Guadeloupe</option>
				<option value="Guam"                >Guam</option>
				<option value="Guatemala"           >Guatemala</option>
				<option value="Guinea"              >Guinea</option>
				<option value="Guinea-Bissau"       >Guinea-Bissau</option>
				<option value="Guyana"              >Guyana</option>
				<option value="Haiti"               >Haiti</option>
				<option value="Honduras"            >Honduras</option>
				<option value="Hong Kong (China)"   >Hong Kong (China)</option>
				<option value="Hungary"             >Hungary</option>
				<option value="Iceland"             >Iceland</option>
				<option value="India"               >India</option>
				<option value="Indonesia"           >Indonesia</option>
				<option value="Ireland"             >Ireland</option>
				<option value="Israel"              >Israel</option>
				<option value="Italy"               >Italy</option>
				<option value="Jamaica"             >Jamaica</option>
				<option value="Japan"               >Japan</option>
				<option value="Jordan"              >Jordan</option>
				<option value="Kazakhstan"          >Kazakhstan</option>
				<option value="Kenya"               >Kenya</option>
				<option value="Kiribati"            >Kiribati</option>
				<option value="Korea, South"        >Korea, South</option>
				<option value="Kuwait"              >Kuwait</option>
				<option value="Kyrgyzstan"          >Kyrgyzstan</option>
				<option value="Laos"                >Laos</option>
				<option value="Latvia"              >Latvia</option>
				<option value="Lebanon"             >Lebanon</option>
				<option value="Lesotho"             >Lesotho</option>
				<option value="Liechtenstein"       >Liechtenstein</option>
				<option value="Lithuania"           >Lithuania</option>
				<option value="Luxembourg"          >Luxembourg</option>
				<option value="Macau (China)"       >Macau (China)</option>
				<option value="Macedonia"           >Macedonia</option>
				<option value="Madagascar"          >Madagascar</option>
				<option value="Malawi"              >Malawi</option>
				<option value="Malaysia"            >Malaysia</option>
				<option value="Maldives"            >Maldives</option>
				<option value="Mali"                >Mali</option>
				<option value="Malta"               >Malta</option>
				<option value="Martinique"          >Martinique</option>
				<option value="Mauritania"          >Mauritania</option>
				<option value="Mauritius"           >Mauritius</option>
				<option value="Mayotte"             >Mayotte</option>
				<option value="Mexico"              >Mexico</option>
				<option value="Moldova"             >Moldova</option>
				<option value="Monaco"              >Monaco</option>
				<option value="Mongolia"            >Mongolia</option>
				<option value="Montserrat"          >Montserrat</option>
				<option value="Morocco"             >Morocco</option>
				<option value="Mozambique"          >Mozambique</option>
				<option value="Myanmar"             >Myanmar</option>
				<option value="Namibia"             >Namibia</option>
				<option value="Nauru"               >Nauru</option>
				<option value="Nepal"               >Nepal</option>
				<option value="Netherlands"         >Netherlands</option>
				<option value="Netherlands Ant."    >Netherlands Ant.</option>
				<option value="New Caledonia"       >New Caledonia</option>
				<option value="New Zealand"         >New Zealand</option>
				<option value="Nicaragua"           >Nicaragua</option>
				<option value="Niger"               >Niger</option>
				<option value="Nigeria"             >Nigeria</option>
				<option value="Niue"                >Niue</option>
				<option value="No. Mariana Is."     >No. Mariana Is.</option>
				<option value="Norfolk Island"      >Norfolk Island</option>
				<option value="Norway"              >Norway</option>
				<option value="Oman"                >Oman</option>
				<option value="Pakistan"            >Pakistan</option>
				<option value="Palau"               >Palau</option>
				<option value="Panama"              >Panama</option>
				<option value="Papua new Guinea"    >Papua new Guinea</option>
				<option value="Paraguay"            >Paraguay</option>
				<option value="Peru"                >Peru</option>
				<option value="Philippines"         >Philippines</option>
				<option value="Pitcairn Is."        >Pitcairn Is.</option>
				<option value="Poland"              >Poland</option>
				<option value="Portugal"            >Portugal</option>
				<option value="Puerto Rico"         >Puerto Rico</option>
				<option value="Qatar"               >Qatar</option>
				<option value="Reunion"             >Reunion</option>
				<option value="Romania"             >Romania</option>
				<option value="Russia"              >Russia</option>
				<option value="Rwanda"              >Rwanda</option>
				<option value="Saint Helena"        >Saint Helena</option>
				<option value="Saint Kitts & Nevis" >Saint Kitts & Nevis</option>
				<option value="Saint Lucia"         >Saint Lucia</option>
				<option value="Samoa"               >Samoa</option>
				<option value="San Marino"          >San Marino</option>
				<option value="Sandwich Islands"    >Sandwich Islands</option>
				<option value="Sao Tome & Prin."    >Sao Tome & Prin.</option>
				<option value="Saudi Arabia"        >Saudi Arabia</option>
				<option value="Senegal"             >Senegal</option>
				<option value="Seychelles"          >Seychelles</option>
				<option value="Sierra Leone"        >Sierra Leone</option>
				<option value="Singapore"           >Singapore</option>
				<option value="Slovakia"            >Slovakia</option>
				<option value="Slovenia"            >Slovenia</option>
				<option value="Solomon Islands"     >Solomon Islands</option>
				<option value="Somalia"             >Somalia</option>
				<option value="South Africa"        >South Africa</option>
				<option value="Spain"               >Spain</option>
				<option value="Sri Lanka"           >Sri Lanka</option>
				<option value="St. Pierre & Miqn"   >St. Pierre & Miq'n</option>
				<option value="St. Vincent & Greds.">St. Vincent & Gred's.</option>
				<option value="Sudan"               >Sudan</option>
				<option value="Suriname"            >Suriname</option>
				<option value="Svalbard & J. Mayn"  >Svalbard & J. May'n</option>
				<option value="Swaziland"           >Swaziland</option>
				<option value="Sweden"              >Sweden</option>
				<option value="Switzerland"         >Switzerland</option>
				<option value="Syria"               >Syria</option>
				<option value="Taiwan"              >Taiwan</option>
				<option value="Tajikistan"          >Tajikistan</option>
				<option value="Tanzania"            >Tanzania</option>
				<option value="Thailand"            >Thailand</option>
				<option value="The Vatican"         >The Vatican</option>
				<option value="Togo"                >Togo</option>
				<option value="Tokelau"             >Tokelau</option>
				<option value="Tonga"               >Tonga</option>
				<option value="Trinidad & Tobago"   >Trinidad & Tobago</option>
				<option value="Tunisia"             >Tunisia</option>
				<option value="Turkey"              >Turkey</option>
				<option value="Turkmenistan"        >Turkmenistan</option>
				<option value="Turks & Caicos Is."  >Turks & Caicos Is.</option>
				<option value="Tuvalu"              >Tuvalu</option>
				<option value="UAE"                 >UAE</option>
				<option value="Uganda"              >Uganda</option>
				<option value="Ukraine"             >Ukraine</option>
				<option value="United Kingdom"      >United Kingdom</option>
				<option value="Uruguay"             >Uruguay</option>
				<option value="USA"  selected       >USA</option>
				<option value="Uzbekistan"          >Uzbekistan</option>
				<option value="Vanuatu"             >Vanuatu</option>
				<option value="Venezuela"           >Venezuela</option>
				<option value="Vietnam"             >Vietnam</option>
				<option value="Virgin Islands (UK)" >Virgin Islands (UK)</option>
				<option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
				<option value="Wallis & Futuna Is." >Wallis & Futuna Is.</option>
				<option value="Western Sahara"      >Western Sahara</option>
				<option value="Yemen"               >Yemen</option>
				<option value="Yugoslavia"          >Yugoslavia</option>
				<option value="Zambia"              >Zambia</option>
				<option value="Zimbabwe"            >Zimbabwe</option>
			</select>
			<span id="error_Country"></span>
			</div>

			<div class="row form-group">
			<label for="State" class="col-sm-2 control-label" >State:</label>
			<input type="text" name="State" value=""  onChange="stripWhiteSpace(this);" size="20" id="State"></input>
			<span id="error_State"></span>
			</div>

			<div class="row form-group">
			<label for="City" class="col-sm-2 control-label">City:</label>
			<input type="text" name="City" value=""  onChange="stripWhiteSpace(this);" size="20" id="City"></input>
			<span id="error_City"></span>
			</div>

			<div class="row form-group">
			<label for="PostalCode" class="col-sm-2 control-label">Zip Code:</label>
			<input type="text" name="PostalCode" value=""  onChange="stripWhiteSpace(this);" size="20" id="Zip"></input>
			<span id="error_postCode"></span>
			</div>

			
			
			<div class="row form-group">
			I confirm that I have read and agreed to the <a href="#" onClick="javascript:launchWindow('termsandconditions.html','TermsAndCond',700,550,'');" class="default">Terms and Conditions of Service</a> of membership at CSE220ServiceByYusufOzbek.com
			</div>

			<div class="row form-group">
				<input type="submit" value="Submit" size="20"/>
			</div>



			</form>
</div>

<script language=JavaScript>



var blnAbortValidation = false;

function validateFormfrmStep1()
{
	if (blnAbortValidation == true) {
		blnAbortValidation = false;
		return true;
 	}
	
	var vfrmStep1txtUserName = document.frmStep1.UserName;
	var vfrmStep1pasPassword = document.frmStep1.Password;
	var vfrmStep1pasPassword2 = document.frmStep1.Password2;
	var vfrmStep1dteBirthDate_month = document.frmStep1.BirthDate_month[document.frmStep1.BirthDate_month.selectedIndex].value;
	var vfrmStep1dteBirthDate_day = document.frmStep1.BirthDate_day[document.frmStep1.BirthDate_day.selectedIndex].value;
	var vfrmStep1dteBirthDate_year = document.frmStep1.BirthDate_year[document.frmStep1.BirthDate_year.selectedIndex].value;
	var vfrmStep1txtEmail = document.frmStep1.Email;
	var vfrmStep1radGenderID = document.frmStep1.GenderID;
	var vfrmStep1radSeekingGenderID = document.frmStep1.SeekingGenderID;
	var vfrmStep1selCountryRegionID = document.frmStep1.CountryRegionID;
	var vfrmStep1txtPostalCode = document.frmStep1.PostalCode;
	var vfrmStep1chkNewsLetterMask = document.frmStep1.NewsLetterMask;
	
	if(IsEmpty(vfrmStep1txtUserName, 'text')) {
		ModalBox(false,"User Name: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1txtUserName.value, 2, 25) == false) {
		ModalBox(false,"User Name: must be between 2 and 25 characters");
		vfrmStep1txtUserName.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1pasPassword, 'password')) {
		ModalBox(false,"Password: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1pasPassword.value, 4, 16) == false) {
		ModalBox(false,"Password: must be between 4 and 16 characters");
		vfrmStep1pasPassword.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1pasPassword2, 'password')) {
		ModalBox(false,"Re-enter your password: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1pasPassword2.value, 4, 16) == false) {
		ModalBox(false,"Re-enter your password: must be between 4 and 16 characters");
		vfrmStep1pasPassword2.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_month == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_month.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_day == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_day.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_year == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_year.focus();
		return false;
	}
	if (!IsValidDate(vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day, vfrmStep1dteBirthDate_year) ){
		ModalBox(false,"The Date of Birth: field is not a valid date");
		document.frmStep1.BirthDate_day.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1txtEmail, 'text')) {
		ModalBox(false,"Email address: is required");
		return false;
	}
	if ( IsEmail(vfrmStep1txtEmail.value, 3) == false) {
		ModalBox(false,"Email address: is not a valid email address");
		vfrmStep1txtEmail.focus();
		return false;
	}
	if ( InLengthRange(vfrmStep1txtEmail.value, null , 255) == false) {
		ModalBox(false,"Email address: cannot have more than 255 characters");
		vfrmStep1txtEmail.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1radGenderID, 'radio')) {
		ModalBox(false,"Your Gender is required");
		return false;
	}
	if(IsEmpty(vfrmStep1radSeekingGenderID, 'radio')) {
		ModalBox(false,"Looking for a: is required");
		return false;
	}
	if(IsEmpty(vfrmStep1selCountryRegionID, 'select')) {
		ModalBox(false,"Country is required");
		return false;
	}
	if(IsEmpty(vfrmStep1txtPostalCode, 'text')) {
		ModalBox(false,"Zip Code is required");
		return false;
	}
	if ( IsAlphaNumeric(vfrmStep1txtPostalCode.value) == false) {
		ModalBox(false,"Zip Code must be alphanumeric (i.e. jsmith33)");
		vfrmStep1txtPostalCode.focus();
		return false;
	}
	if ( InLengthRange(vfrmStep1txtPostalCode.value, 5, 6) == false) {
		ModalBox(false,"Zip Code must be between 5 and 6 characters");
		vfrmStep1txtPostalCode.focus();
		return false;
	}
	if(vfrmStep1pasPassword2.value != vfrmStep1pasPassword.value) {
	   ModalBox(false,"Passwords do not match.  Please re-enter your password.");
	   return false;
	}		var dateTarget = new Date(1985, 12, 6, 0, 0, 0)
	var dateEntered = new Date(vfrmStep1dteBirthDate_year, vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day , 0, 0, 0)
	if ((dateTarget - dateEntered) < 0) {
		alert('You must be at least 18 years old to register.');
	   document.frmStep1.BirthDate_year.focus();
		return false;
	}
}
</script>


</body>
</html>