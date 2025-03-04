<label>Enter Price for Germany: 
<input type="text" name="int_price[]" class="form-control" value="{$arrPrices[0]['price']}" />
<input type="hidden" name="int_price_lang[]" value="de" class="form-control" />
</label>
<br/><hr/>

<div id="product_rules_wrapper"></div>
<script>
            var txtSpanStart;
            var ddCountry;
            var inputQty;
            var txtSpanEnd;
            var txtAddNew;
            var txtRemove;
            var lmtCount = 0;

            if (typeof jQuery != 'undefined') 
            {
                
                jQuery(document).ready(function($){
                
                    

                    txtSpanStart = `<span id="zproductrules">`;
                    txtSpanEnd = `</span>`;

                    txtAddNew = `<div class="row">
                        <div class="col-md-12 text-right">
                            <br>
                            <a href="javascript:;" onclick="javascript: funcAddNewRule('','');"><i class="material-icons">add_circle_outline</i> Add New Rule</a>
                        </div>
                    </div>
                    `;

                    {if !$arrRules}

                        makeCountryDD('');
                        makeInputQty('');
                        $('#product_rules_wrapper').append( 
                            txtSpanStart + ddCountry + inputQty + txtSpanEnd + txtAddNew
                        );

                    {else}

                        $('#product_rules_wrapper').append( 
                                txtSpanStart + txtSpanEnd + txtAddNew
                        );

                        {foreach from=$arrRules item=arrRule}
                            funcAddNewRule('{$arrRule['country_code']}', '{$arrRule['min_qty']}');
                        {/foreach}


                    {/if}
                    

                });

                function makeInputQty(qty) {
                    inputQty = `<div class="col-md-6">
                        <label>Enter Minimum Quantity</label>
                        <input type="text" name="qty_limit[`+lmtCount+`]" class="form-control" value="`+qty+`" />
                    </div>
                    </div>
                    `;
                }

                function makeCountryDD(country_code) {
                    var ccArray = [];
                    if (country_code)
                    {
                        ccArray = country_code.split(",");
                    }

                    console.log(ccArray);

                    ddCountry = `
                    <div class="row">
                    <div class="col-md-6">
                    <label>Chose Country</label><br>
                    <select multiple name="country_limit[`+(lmtCount)+`][]" class="form-control">`;

                    (ccArray.includes("AF")) ? ddCountry += `<option selected value="AF">Afghanistan</option>` : ddCountry += `<option value="AF">Afghanistan</option>`;
                    (ccArray.includes("AX")) ? ddCountry += `<option selected value="AX">Aland Islands</option>` : ddCountry += `<option value="AX">Aland Islands</option>`;
                    (ccArray.includes("AL")) ? ddCountry += `<option selected value="AL">Albania</option>` : ddCountry += `<option value="AL">Albania</option>`;
                    (ccArray.includes("DZ")) ? ddCountry += `<option selected value="DZ">Algeria</option>` : ddCountry += `<option value="DZ">Algeria</option>`;
                    (ccArray.includes("AS")) ? ddCountry += `<option selected value="AS">American Samoa</option>` : ddCountry += `<option value="AS">American Samoa</option>`;
                    (ccArray.includes("AD")) ? ddCountry += `<option selected value="AD">Andorra</option>` : ddCountry += `<option value="AD">Andorra</option>`;
                    (ccArray.includes("AO")) ? ddCountry += `<option selected value="AO">Angola</option>` : ddCountry += `<option value="AO">Angola</option>`;
                    (ccArray.includes("AI")) ? ddCountry += `<option selected value="AI">Anguilla</option>` : ddCountry += `<option value="AI">Anguilla</option>`;
                    (ccArray.includes("AQ")) ? ddCountry += `<option selected value="AQ">Antarctica</option>` : ddCountry += `<option value="AQ">Antarctica</option>`;
                    (ccArray.includes("AG")) ? ddCountry += `<option selected value="AG">Antigua and Barbuda</option>` : ddCountry += `<option value="AG">Antigua and Barbuda</option>`;
                    (ccArray.includes("AR")) ? ddCountry += `<option selected value="AR">Argentina</option>` : ddCountry += `<option value="AR">Argentina</option>`;
                    (ccArray.includes("AM")) ? ddCountry += `<option selected value="AM">Armenia</option>` : ddCountry += `<option value="AM">Armenia</option>`;
                    (ccArray.includes("AW")) ? ddCountry += `<option selected value="AW">Aruba</option>` : ddCountry += `<option value="AW">Aruba</option>`;
                    (ccArray.includes("AU")) ? ddCountry += `<option selected value="AU">Australia</option>` : ddCountry += `<option value="AU">Australia</option>`;
                    (ccArray.includes("AT")) ? ddCountry += `<option selected value="AT">Austria</option>` : ddCountry += `<option value="AT">Austria</option>`;
                    (ccArray.includes("AZ")) ? ddCountry += `<option selected value="AZ">Azerbaijan</option>` : ddCountry += `<option value="AZ">Azerbaijan</option>`;
                    (ccArray.includes("BS")) ? ddCountry += `<option selected value="BS">Bahamas</option>` : ddCountry += `<option value="BS">Bahamas</option>`;
                    (ccArray.includes("BH")) ? ddCountry += `<option selected value="BH">Bahrain</option>` : ddCountry += `<option value="BH">Bahrain</option>`;
                    (ccArray.includes("BD")) ? ddCountry += `<option selected value="BD">Bangladesh</option>` : ddCountry += `<option value="BD">Bangladesh</option>`;
                    (ccArray.includes("BB")) ? ddCountry += `<option selected value="BB">Barbados</option>` : ddCountry += `<option value="BB">Barbados</option>`;
                    (ccArray.includes("BY")) ? ddCountry += `<option selected value="BY">Belarus</option>` : ddCountry += `<option value="BY">Belarus</option>`;
                    (ccArray.includes("BE")) ? ddCountry += `<option selected value="BE">Belgium</option>` : ddCountry += `<option value="BE">Belgium</option>`;
                    (ccArray.includes("BZ")) ? ddCountry += `<option selected value="BZ">Belize</option>` : ddCountry += `<option value="BZ">Belize</option>`;
                    (ccArray.includes("BJ")) ? ddCountry += `<option selected value="BJ">Benin</option>` : ddCountry += `<option value="BJ">Benin</option>`;
                    (ccArray.includes("BM")) ? ddCountry += `<option selected value="BM">Bermuda</option>` : ddCountry += `<option value="BM">Bermuda</option>`;
                    (ccArray.includes("BT")) ? ddCountry += `<option selected value="BT">Bhutan</option>` : ddCountry += `<option value="BT">Bhutan</option>`;
                    (ccArray.includes("BO")) ? ddCountry += `<option selected value="BO">Bolivia</option>` : ddCountry += `<option value="BO">Bolivia</option>`;
                    (ccArray.includes("BQ")) ? ddCountry += `<option selected value="BQ">Bonaire, Sint Eustatius and Saba</option>` : ddCountry += `<option value="BQ">Bonaire, Sint Eustatius and Saba</option>`;
                    (ccArray.includes("BA")) ? ddCountry += `<option selected value="BA">Bosnia and Herzegovina</option>` : ddCountry += `<option value="BA">Bosnia and Herzegovina</option>`;
                    (ccArray.includes("BW")) ? ddCountry += `<option selected value="BW">Botswana</option>` : ddCountry += `<option value="BW">Botswana</option>`;
                    (ccArray.includes("BV")) ? ddCountry += `<option selected value="BV">Bouvet Island</option>` : ddCountry += `<option value="BV">Bouvet Island</option>`;
                    (ccArray.includes("BR")) ? ddCountry += `<option selected value="BR">Brazil</option>` : ddCountry += `<option value="BR">Brazil</option>`;
                    (ccArray.includes("IO")) ? ddCountry += `<option selected value="IO">British Indian Ocean Territory</option>` : ddCountry += `<option value="IO">British Indian Ocean Territory</option>`;
                    (ccArray.includes("BN")) ? ddCountry += `<option selected value="BN">Brunei Darussalam</option>` : ddCountry += `<option value="BN">Brunei Darussalam</option>`;
                    (ccArray.includes("BG")) ? ddCountry += `<option selected value="BG">Bulgaria</option>` : ddCountry += `<option value="BG">Bulgaria</option>`;
                    (ccArray.includes("BF")) ? ddCountry += `<option selected value="BF">Burkina Faso</option>` : ddCountry += `<option value="BF">Burkina Faso</option>`;
                    (ccArray.includes("BI")) ? ddCountry += `<option selected value="BI">Burundi</option>` : ddCountry += `<option value="BI">Burundi</option>`;
                    (ccArray.includes("KH")) ? ddCountry += `<option selected value="KH">Cambodia</option>` : ddCountry += `<option value="KH">Cambodia</option>`;
                    (ccArray.includes("CM")) ? ddCountry += `<option selected value="CM">Cameroon</option>` : ddCountry += `<option value="CM">Cameroon</option>`;
                    (ccArray.includes("CA")) ? ddCountry += `<option selected value="CA">Canada</option>` : ddCountry += `<option value="CA">Canada</option>`;
                    (ccArray.includes("CV")) ? ddCountry += `<option selected value="CV">Cape Verde</option>` : ddCountry += `<option value="CV">Cape Verde</option>`;
                    (ccArray.includes("KY")) ? ddCountry += `<option selected value="KY">Cayman Islands</option>` : ddCountry += `<option value="KY">Cayman Islands</option>`;
                    (ccArray.includes("CF")) ? ddCountry += `<option selected value="CF">Central African Republic</option>` : ddCountry += `<option value="CF">Central African Republic</option>`;
                    (ccArray.includes("TD")) ? ddCountry += `<option selected value="TD">Chad</option>` : ddCountry += `<option value="TD">Chad</option>`;
                    (ccArray.includes("CL")) ? ddCountry += `<option selected value="CL">Chile</option>` : ddCountry += `<option value="CL">Chile</option>`;
                    (ccArray.includes("CN")) ? ddCountry += `<option selected value="CN">China</option>` : ddCountry += `<option value="CN">China</option>`;
                    (ccArray.includes("CX")) ? ddCountry += `<option selected value="CX">Christmas Island</option>` : ddCountry += `<option value="CX">Christmas Island</option>`;
                    (ccArray.includes("CC")) ? ddCountry += `<option selected value="CC">Cocos (Keeling) Islands</option>` : ddCountry += `<option value="CC">Cocos (Keeling) Islands</option>`;
                    (ccArray.includes("CO")) ? ddCountry += `<option selected value="CO">Colombia</option>` : ddCountry += `<option value="CO">Colombia</option>`;
                    (ccArray.includes("KM")) ? ddCountry += `<option selected value="KM">Comoros</option>` : ddCountry += `<option value="KM">Comoros</option>`;
                    (ccArray.includes("CG")) ? ddCountry += `<option selected value="CG">Congo</option>` : ddCountry += `<option value="CG">Congo</option>`;
                    (ccArray.includes("CD")) ? ddCountry += `<option selected value="CD">Congo, Democratic Republic of the Congo</option>` : ddCountry += `<option value="CD">Congo, Democratic Republic of the Congo</option>`;
                    (ccArray.includes("CK")) ? ddCountry += `<option selected value="CK">Cook Islands</option>` : ddCountry += `<option value="CK">Cook Islands</option>`;
                    (ccArray.includes("CR")) ? ddCountry += `<option selected value="CR">Costa Rica</option>` : ddCountry += `<option value="CR">Costa Rica</option>`;
                    (ccArray.includes("CI")) ? ddCountry += `<option selected value="CI">Cote D'Ivoire</option>` : ddCountry += `<option value="CI">Cote D'Ivoire</option>`;
                    (ccArray.includes("HR")) ? ddCountry += `<option selected value="HR">Croatia</option>` : ddCountry += `<option value="HR">Croatia</option>`;
                    (ccArray.includes("CU")) ? ddCountry += `<option selected value="CU">Cuba</option>` : ddCountry += `<option value="CU">Cuba</option>`;
                    (ccArray.includes("CW")) ? ddCountry += `<option selected value="CW">Curacao</option>` : ddCountry += `<option value="CW">Curacao</option>`;
                    (ccArray.includes("CY")) ? ddCountry += `<option selected value="CY">Cyprus</option>` : ddCountry += `<option value="CY">Cyprus</option>`;
                    (ccArray.includes("CZ")) ? ddCountry += `<option selected value="CZ">Czech Republic</option>` : ddCountry += `<option value="CZ">Czech Republic</option>`;
                    (ccArray.includes("DK")) ? ddCountry += `<option selected value="DK">Denmark</option>` : ddCountry += `<option value="DK">Denmark</option>`;
                    (ccArray.includes("DJ")) ? ddCountry += `<option selected value="DJ">Djibouti</option>` : ddCountry += `<option value="DJ">Djibouti</option>`;
                    (ccArray.includes("DM")) ? ddCountry += `<option selected value="DM">Dominica</option>` : ddCountry += `<option value="DM">Dominica</option>`;
                    (ccArray.includes("DO")) ? ddCountry += `<option selected value="DO">Dominican Republic</option>` : ddCountry += `<option value="DO">Dominican Republic</option>`;
                    (ccArray.includes("EC")) ? ddCountry += `<option selected value="EC">Ecuador</option>` : ddCountry += `<option value="EC">Ecuador</option>`;
                    (ccArray.includes("EG")) ? ddCountry += `<option selected value="EG">Egypt</option>` : ddCountry += `<option value="EG">Egypt</option>`;
                    (ccArray.includes("SV")) ? ddCountry += `<option selected value="SV">El Salvador</option>` : ddCountry += `<option value="SV">El Salvador</option>`;
                    (ccArray.includes("GQ")) ? ddCountry += `<option selected value="GQ">Equatorial Guinea</option>` : ddCountry += `<option value="GQ">Equatorial Guinea</option>`;
                    (ccArray.includes("ER")) ? ddCountry += `<option selected value="ER">Eritrea</option>` : ddCountry += `<option value="ER">Eritrea</option>`;
                    (ccArray.includes("EE")) ? ddCountry += `<option selected value="EE">Estonia</option>` : ddCountry += `<option value="EE">Estonia</option>`;
                    (ccArray.includes("ET")) ? ddCountry += `<option selected value="ET">Ethiopia</option>` : ddCountry += `<option value="ET">Ethiopia</option>`;
                    (ccArray.includes("FK")) ? ddCountry += `<option selected value="FK">Falkland Islands (Malvinas)</option>` : ddCountry += `<option value="FK">Falkland Islands (Malvinas)</option>`;
                    (ccArray.includes("FO")) ? ddCountry += `<option selected value="FO">Faroe Islands</option>` : ddCountry += `<option value="FO">Faroe Islands</option>`;
                    (ccArray.includes("FJ")) ? ddCountry += `<option selected value="FJ">Fiji</option>` : ddCountry += `<option value="FJ">Fiji</option>`;
                    (ccArray.includes("FI")) ? ddCountry += `<option selected value="FI">Finland</option>` : ddCountry += `<option value="FI">Finland</option>`;
                    (ccArray.includes("FR")) ? ddCountry += `<option selected value="FR">France</option>` : ddCountry += `<option value="FR">France</option>`;
                    (ccArray.includes("GF")) ? ddCountry += `<option selected value="GF">French Guiana</option>` : ddCountry += `<option value="GF">French Guiana</option>`;
                    (ccArray.includes("PF")) ? ddCountry += `<option selected value="PF">French Polynesia</option>` : ddCountry += `<option value="PF">French Polynesia</option>`;
                    (ccArray.includes("TF")) ? ddCountry += `<option selected value="TF">French Southern Territories</option>` : ddCountry += `<option value="TF">French Southern Territories</option>`;
                    (ccArray.includes("GA")) ? ddCountry += `<option selected value="GA">Gabon</option>` : ddCountry += `<option value="GA">Gabon</option>`;
                    (ccArray.includes("GM")) ? ddCountry += `<option selected value="GM">Gambia</option>` : ddCountry += `<option value="GM">Gambia</option>`;
                    (ccArray.includes("GE")) ? ddCountry += `<option selected value="GE">Georgia</option>` : ddCountry += `<option value="GE">Georgia</option>`;
                    (ccArray.includes("DE")) ? ddCountry += `<option selected value="DE">Germany</option>` : ddCountry += `<option value="DE">Germany</option>`;
                    (ccArray.includes("GH")) ? ddCountry += `<option selected value="GH">Ghana</option>` : ddCountry += `<option value="GH">Ghana</option>`;
                    (ccArray.includes("GI")) ? ddCountry += `<option selected value="GI">Gibraltar</option>` : ddCountry += `<option value="GI">Gibraltar</option>`;
                    (ccArray.includes("GR")) ? ddCountry += `<option selected value="GR">Greece</option>` : ddCountry += `<option value="GR">Greece</option>`;
                    (ccArray.includes("GL")) ? ddCountry += `<option selected value="GL">Greenland</option>` : ddCountry += `<option value="GL">Greenland</option>`;
                    (ccArray.includes("GD")) ? ddCountry += `<option selected value="GD">Grenada</option>` : ddCountry += `<option value="GD">Grenada</option>`;
                    (ccArray.includes("GP")) ? ddCountry += `<option selected value="GP">Guadeloupe</option>` : ddCountry += `<option value="GP">Guadeloupe</option>`;
                    (ccArray.includes("GU")) ? ddCountry += `<option selected value="GU">Guam</option>` : ddCountry += `<option value="GU">Guam</option>`;
                    (ccArray.includes("GT")) ? ddCountry += `<option selected value="GT">Guatemala</option>` : ddCountry += `<option value="GT">Guatemala</option>`;
                    (ccArray.includes("GG")) ? ddCountry += `<option selected value="GG">Guernsey</option>` : ddCountry += `<option value="GG">Guernsey</option>`;
                    (ccArray.includes("GN")) ? ddCountry += `<option selected value="GN">Guinea</option>` : ddCountry += `<option value="GN">Guinea</option>`;
                    (ccArray.includes("GW")) ? ddCountry += `<option selected value="GW">Guinea-Bissau</option>` : ddCountry += `<option value="GW">Guinea-Bissau</option>`;
                    (ccArray.includes("GY")) ? ddCountry += `<option selected value="GY">Guyana</option>` : ddCountry += `<option value="GY">Guyana</option>`;
                    (ccArray.includes("HT")) ? ddCountry += `<option selected value="HT">Haiti</option>` : ddCountry += `<option value="HT">Haiti</option>`;
                    (ccArray.includes("HM")) ? ddCountry += `<option selected value="HM">Heard Island and Mcdonald Islands</option>` : ddCountry += `<option value="HM">Heard Island and Mcdonald Islands</option>`;
                    (ccArray.includes("VA")) ? ddCountry += `<option selected value="VA">Holy See (Vatican City State)</option>` : ddCountry += `<option value="VA">Holy See (Vatican City State)</option>`;
                    (ccArray.includes("HN")) ? ddCountry += `<option selected value="HN">Honduras</option>` : ddCountry += `<option value="HN">Honduras</option>`;
                    (ccArray.includes("HK")) ? ddCountry += `<option selected value="HK">Hong Kong</option>` : ddCountry += `<option value="HK">Hong Kong</option>`;
                    (ccArray.includes("HU")) ? ddCountry += `<option selected value="HU">Hungary</option>` : ddCountry += `<option value="HU">Hungary</option>`;
                    (ccArray.includes("IS")) ? ddCountry += `<option selected value="IS">Iceland</option>` : ddCountry += `<option value="IS">Iceland</option>`;
                    (ccArray.includes("IN")) ? ddCountry += `<option selected value="IN">India</option>` : ddCountry += `<option value="IN">India</option>`;
                    (ccArray.includes("ID")) ? ddCountry += `<option selected value="ID">Indonesia</option>` : ddCountry += `<option value="ID">Indonesia</option>`;
                    (ccArray.includes("IR")) ? ddCountry += `<option selected value="IR">Iran, Islamic Republic of</option>` : ddCountry += `<option value="IR">Iran, Islamic Republic of</option>`;
                    (ccArray.includes("IQ")) ? ddCountry += `<option selected value="IQ">Iraq</option>` : ddCountry += `<option value="IQ">Iraq</option>`;
                    (ccArray.includes("IE")) ? ddCountry += `<option selected value="IE">Ireland</option>` : ddCountry += `<option value="IE">Ireland</option>`;
                    (ccArray.includes("IM")) ? ddCountry += `<option selected value="IM">Isle of Man</option>` : ddCountry += `<option value="IM">Isle of Man</option>`;
                    (ccArray.includes("IL")) ? ddCountry += `<option selected value="IL">Israel</option>` : ddCountry += `<option value="IL">Israel</option>`;
                    (ccArray.includes("IT")) ? ddCountry += `<option selected value="IT">Italy</option>` : ddCountry += `<option value="IT">Italy</option>`;
                    (ccArray.includes("JM")) ? ddCountry += `<option selected value="JM">Jamaica</option>` : ddCountry += `<option value="JM">Jamaica</option>`;
                    (ccArray.includes("JP")) ? ddCountry += `<option selected value="JP">Japan</option>` : ddCountry += `<option value="JP">Japan</option>`;
                    (ccArray.includes("JE")) ? ddCountry += `<option selected value="JE">Jersey</option>` : ddCountry += `<option value="JE">Jersey</option>`;
                    (ccArray.includes("JO")) ? ddCountry += `<option selected value="JO">Jordan</option>` : ddCountry += `<option value="JO">Jordan</option>`;
                    (ccArray.includes("KZ")) ? ddCountry += `<option selected value="KZ">Kazakhstan</option>` : ddCountry += `<option value="KZ">Kazakhstan</option>`;
                    (ccArray.includes("KE")) ? ddCountry += `<option selected value="KE">Kenya</option>` : ddCountry += `<option value="KE">Kenya</option>`;
                    (ccArray.includes("KI")) ? ddCountry += `<option selected value="KI">Kiribati</option>` : ddCountry += `<option value="KI">Kiribati</option>`;
                    (ccArray.includes("KP")) ? ddCountry += `<option selected value="KP">Korea, Democratic People's Republic of</option>` : ddCountry += `<option value="KP">Korea, Democratic People's Republic of</option>`;
                    (ccArray.includes("KR")) ? ddCountry += `<option selected value="KR">Korea, Republic of</option>` : ddCountry += `<option value="KR">Korea, Republic of</option>`;
                    (ccArray.includes("XK")) ? ddCountry += `<option selected value="XK">Kosovo</option>` : ddCountry += `<option value="XK">Kosovo</option>`;
                    (ccArray.includes("KW")) ? ddCountry += `<option selected value="KW">Kuwait</option>` : ddCountry += `<option value="KW">Kuwait</option>`;
                    (ccArray.includes("KG")) ? ddCountry += `<option selected value="KG">Kyrgyzstan</option>` : ddCountry += `<option value="KG">Kyrgyzstan</option>`;
                    (ccArray.includes("LA")) ? ddCountry += `<option selected value="LA">Lao People's Democratic Republic</option>` : ddCountry += `<option value="LA">Lao People's Democratic Republic</option>`;
                    (ccArray.includes("LV")) ? ddCountry += `<option selected value="LV">Latvia</option>` : ddCountry += `<option value="LV">Latvia</option>`;
                    (ccArray.includes("LB")) ? ddCountry += `<option selected value="LB">Lebanon</option>` : ddCountry += `<option value="LB">Lebanon</option>`;
                    (ccArray.includes("LS")) ? ddCountry += `<option selected value="LS">Lesotho</option>` : ddCountry += `<option value="LS">Lesotho</option>`;
                    (ccArray.includes("LR")) ? ddCountry += `<option selected value="LR">Liberia</option>` : ddCountry += `<option value="LR">Liberia</option>`;
                    (ccArray.includes("LY")) ? ddCountry += `<option selected value="LY">Libyan Arab Jamahiriya</option>` : ddCountry += `<option value="LY">Libyan Arab Jamahiriya</option>`;
                    (ccArray.includes("LI")) ? ddCountry += `<option selected value="LI">Liechtenstein</option>` : ddCountry += `<option value="LI">Liechtenstein</option>`;
                    (ccArray.includes("LT")) ? ddCountry += `<option selected value="LT">Lithuania</option>` : ddCountry += `<option value="LT">Lithuania</option>`;
                    (ccArray.includes("LU")) ? ddCountry += `<option selected value="LU">Luxembourg</option>` : ddCountry += `<option value="LU">Luxembourg</option>`;
                    (ccArray.includes("MO")) ? ddCountry += `<option selected selected value="MO">Macao</option>` : ddCountry += `<option value="MO">Macao</option>`;
                    (ccArray.includes("MK")) ? ddCountry += `<option selected value="MK">Macedonia, the Former Yugoslav Republic of</option>` : ddCountry += `<option value="MK">Macedonia, the Former Yugoslav Republic of</option>`;
                    (ccArray.includes("MG")) ? ddCountry += `<option selected value="MG">Madagascar</option>` : ddCountry += `<option value="MG">Madagascar</option>`;
                    (ccArray.includes("MW")) ? ddCountry += `<option selected value="MW">Malawi</option>` : ddCountry += `<option value="MW">Malawi</option>`;
                    (ccArray.includes("MY")) ? ddCountry += `<option selected value="MY">Malaysia</option>` : ddCountry += `<option value="MY">Malaysia</option>`;
                    (ccArray.includes("MV")) ? ddCountry += `<option selected value="MV">Maldives</option>` : ddCountry += `<option value="MV">Maldives</option>`;
                    (ccArray.includes("ML")) ? ddCountry += `<option selected value="ML">Mali</option>` : ddCountry += `<option value="ML">Mali</option>`;
                    (ccArray.includes("MT")) ? ddCountry += `<option selected value="MT">Malta</option>` : ddCountry += `<option value="MT">Malta</option>`;
                    (ccArray.includes("MH")) ? ddCountry += `<option selected value="MH">Marshall Islands</option>` : ddCountry += `<option value="MH">Marshall Islands</option>`;
                    (ccArray.includes("MQ")) ? ddCountry += `<option selected value="MQ">Martinique</option>` : ddCountry += `<option value="MQ">Martinique</option>`;
                    (ccArray.includes("MR")) ? ddCountry += `<option selected value="MR">Mauritania</option>` : ddCountry += `<option value="MR">Mauritania</option>`;
                    (ccArray.includes("MU")) ? ddCountry += `<option selected value="MU">Mauritius</option>` : ddCountry += `<option value="MU">Mauritius</option>`;
                    (ccArray.includes("YT")) ? ddCountry += `<option selected value="YT">Mayotte</option>` : ddCountry += `<option value="YT">Mayotte</option>`;
                    (ccArray.includes("MX")) ? ddCountry += `<option selected value="MX">Mexico</option>` : ddCountry += `<option value="MX">Mexico</option>`;
                    (ccArray.includes("FM")) ? ddCountry += `<option selected value="FM">Micronesia, Federated States of</option>` : ddCountry += `<option value="FM">Micronesia, Federated States of</option>`;
                    (ccArray.includes("MD")) ? ddCountry += `<option selected value="MD">Moldova, Republic of</option>` : ddCountry += `<option value="MD">Moldova, Republic of</option>`;
                    (ccArray.includes("MC")) ? ddCountry += `<option selected value="MC">Monaco</option>` : ddCountry += `<option value="MC">Monaco</option>`;
                    (ccArray.includes("MN")) ? ddCountry += `<option selected value="MN">Mongolia</option>` : ddCountry += `<option value="MN">Mongolia</option>`;
                    (ccArray.includes("ME")) ? ddCountry += `<option selected value="ME">Montenegro</option>` : ddCountry += `<option value="ME">Montenegro</option>`;
                    (ccArray.includes("MS")) ? ddCountry += `<option selected value="MS">Montserrat</option>` : ddCountry += `<option value="MS">Montserrat</option>`;
                    (ccArray.includes("MA")) ? ddCountry += `<option selected value="MA">Morocco</option>` : ddCountry += `<option value="MA">Morocco</option>`;
                    (ccArray.includes("MZ")) ? ddCountry += `<option selected value="MZ">Mozambique</option>` : ddCountry += `<option value="MZ">Mozambique</option>`;
                    (ccArray.includes("MM")) ? ddCountry += `<option selected value="MM">Myanmar</option>` : ddCountry += `<option value="MM">Myanmar</option>`;
                    (ccArray.includes("NA")) ? ddCountry += `<option selected value="NA">Namibia</option>` : ddCountry += `<option value="NA">Namibia</option>`;
                    (ccArray.includes("NR")) ? ddCountry += `<option selected value="NR">Nauru</option>` : ddCountry += `<option value="NR">Nauru</option>`;
                    (ccArray.includes("NP")) ? ddCountry += `<option selected value="NP">Nepal</option>` : ddCountry += `<option value="NP">Nepal</option>`;
                    (ccArray.includes("NL")) ? ddCountry += `<option selected value="NL">Netherlands</option>` : ddCountry += `<option value="NL">Netherlands</option>`;
                    (ccArray.includes("AN")) ? ddCountry += `<option selected value="AN">Netherlands Antilles</option>` : ddCountry += `<option value="AN">Netherlands Antilles</option>`;
                    (ccArray.includes("NC")) ? ddCountry += `<option selected value="NC">New Caledonia</option>` : ddCountry += `<option value="NC">New Caledonia</option>`;
                    (ccArray.includes("NZ")) ? ddCountry += `<option selected value="NZ">New Zealand</option>` : ddCountry += `<option value="NZ">New Zealand</option>`;
                    (ccArray.includes("NI")) ? ddCountry += `<option selected value="NI">Nicaragua</option>` : ddCountry += `<option value="NI">Nicaragua</option>`;
                    (ccArray.includes("NE")) ? ddCountry += `<option selected value="NE">Niger</option>` : ddCountry += `<option value="NE">Niger</option>`;
                    (ccArray.includes("NG")) ? ddCountry += `<option selected value="NG">Nigeria</option>` : ddCountry += `<option value="NG">Nigeria</option>`;
                    (ccArray.includes("NU")) ? ddCountry += `<option selected value="NU">Niue</option>` : ddCountry += `<option value="NU">Niue</option>`;
                    (ccArray.includes("NF")) ? ddCountry += `<option selected value="NF">Norfolk Island</option>` : ddCountry += `<option value="NF">Norfolk Island</option>`;
                    (ccArray.includes("MP")) ? ddCountry += `<option selected value="MP">Northern Mariana Islands</option>` : ddCountry += `<option value="MP">Northern Mariana Islands</option>`;
                    (ccArray.includes("NO")) ? ddCountry += `<option selected value="NO">Norway</option>` : ddCountry += `<option value="NO">Norway</option>`;
                    (ccArray.includes("OM")) ? ddCountry += `<option selected value="OM">Oman</option>` : ddCountry += `<option value="OM">Oman</option>`;
                    (ccArray.includes("PK")) ? ddCountry += `<option selected value="PK">Pakistan</option>` : ddCountry += `<option value="PK">Pakistan</option>`;
                    (ccArray.includes("PW")) ? ddCountry += `<option selected value="PW">Palau</option>` : ddCountry += `<option value="PW">Palau</option>`;
                    (ccArray.includes("PS")) ? ddCountry += `<option selected value="PS">Palestinian Territory, Occupied</option>` : ddCountry += `<option value="PS">Palestinian Territory, Occupied</option>`;
                    (ccArray.includes("PA")) ? ddCountry += `<option selected value="PA">Panama</option>` : ddCountry += `<option value="PA">Panama</option>`;
                    (ccArray.includes("PG")) ? ddCountry += `<option selected value="PG">Papua New Guinea</option>` : ddCountry += `<option value="PG">Papua New Guinea</option>`;
                    (ccArray.includes("PY")) ? ddCountry += `<option selected value="PY">Paraguay</option>` : ddCountry += `<option value="PY">Paraguay</option>`;
                    (ccArray.includes("PE")) ? ddCountry += `<option selected value="PE">Peru</option>` : ddCountry += `<option value="PE">Peru</option>`;
                    (ccArray.includes("PH")) ? ddCountry += `<option selected value="PH">Philippines</option>` : ddCountry += `<option value="PH">Philippines</option>`;
                    (ccArray.includes("PN")) ? ddCountry += `<option selected value="PN">Pitcairn</option>` : ddCountry += `<option value="PN">Pitcairn</option>`;
                    (ccArray.includes("PL")) ? ddCountry += `<option selected value="PL">Poland</option>` : ddCountry += `<option value="PL">Poland</option>`;
                    (ccArray.includes("PT")) ? ddCountry += `<option selected value="PT">Portugal</option>` : ddCountry += `<option value="PT">Portugal</option>`;
                    (ccArray.includes("PR")) ? ddCountry += `<option selected value="PR">Puerto Rico</option>` : ddCountry += `<option value="PR">Puerto Rico</option>`;
                    (ccArray.includes("QA")) ? ddCountry += `<option selected value="QA">Qatar</option>` : ddCountry += `<option value="QA">Qatar</option>`;
                    (ccArray.includes("RE")) ? ddCountry += `<option selected value="RE">Reunion</option>` : ddCountry += `<option value="RE">Reunion</option>`;
                    (ccArray.includes("RO")) ? ddCountry += `<option selected value="RO">Romania</option>` : ddCountry += `<option value="RO">Romania</option>`;
                    (ccArray.includes("RU")) ? ddCountry += `<option selected value="RU">Russian Federation</option>` : ddCountry += `<option value="RU">Russian Federation</option>`;
                    (ccArray.includes("RW")) ? ddCountry += `<option selected value="RW">Rwanda</option>` : ddCountry += `<option value="RW">Rwanda</option>`;
                    (ccArray.includes("BL")) ? ddCountry += `<option selected value="BL">Saint Barthelemy</option>` : ddCountry += `<option value="BL">Saint Barthelemy</option>`;
                    (ccArray.includes("SH")) ? ddCountry += `<option selected value="SH">Saint Helena</option>` : ddCountry += `<option value="SH">Saint Helena</option>`;
                    (ccArray.includes("KN")) ? ddCountry += `<option selected value="KN">Saint Kitts and Nevis</option>` : ddCountry += `<option value="KN">Saint Kitts and Nevis</option>`;
                    (ccArray.includes("LC")) ? ddCountry += `<option selected value="LC">Saint Lucia</option>` : ddCountry += `<option value="LC">Saint Lucia</option>`;
                    (ccArray.includes("MF")) ? ddCountry += `<option selected value="MF">Saint Martin</option>` : ddCountry += `<option value="MF">Saint Martin</option>`;
                    (ccArray.includes("PM")) ? ddCountry += `<option selected value="PM">Saint Pierre and Miquelon</option>` : ddCountry += `<option value="PM">Saint Pierre and Miquelon</option>`;
                    (ccArray.includes("VC")) ? ddCountry += `<option selected value="VC">Saint Vincent and the Grenadines</option>` : ddCountry += `<option value="VC">Saint Vincent and the Grenadines</option>`;
                    (ccArray.includes("WS")) ? ddCountry += `<option selected value="WS">Samoa</option>` : ddCountry += `<option value="WS">Samoa</option>`;
                    (ccArray.includes("SM")) ? ddCountry += `<option selected value="SM">San Marino</option>` : ddCountry += `<option value="SM">San Marino</option>`;
                    (ccArray.includes("ST")) ? ddCountry += `<option selected value="ST">Sao Tome and Principe</option>` : ddCountry += `<option value="ST">Sao Tome and Principe</option>`;
                    (ccArray.includes("SA")) ? ddCountry += `<option selected value="SA">Saudi Arabia</option>` : ddCountry += `<option value="SA">Saudi Arabia</option>`;
                    (ccArray.includes("SN")) ? ddCountry += `<option selected value="SN">Senegal</option>` : ddCountry += `<option value="SN">Senegal</option>`;
                    (ccArray.includes("RS")) ? ddCountry += `<option selected value="RS">Serbia</option>` : ddCountry += `<option value="RS">Serbia</option>`;
                    (ccArray.includes("CS")) ? ddCountry += `<option selected value="CS">Serbia and Montenegro</option>` : ddCountry += `<option value="CS">Serbia and Montenegro</option>`;
                    (ccArray.includes("SC")) ? ddCountry += `<option selected value="SC">Seychelles</option>` : ddCountry += `<option value="SC">Seychelles</option>`;
                    (ccArray.includes("SL")) ? ddCountry += `<option selected value="SL">Sierra Leone</option>` : ddCountry += `<option value="SL">Sierra Leone</option>`;
                    (ccArray.includes("SG")) ? ddCountry += `<option selected value="SG">Singapore</option>` : ddCountry += `<option value="SG">Singapore</option>`;
                    (ccArray.includes("SX")) ? ddCountry += `<option selected value="SX">Sint Maarten</option>` : ddCountry += `<option value="SX">Sint Maarten</option>`;
                    (ccArray.includes("SK")) ? ddCountry += `<option selected value="SK">Slovakia</option>` : ddCountry += `<option value="SK">Slovakia</option>`;
                    (ccArray.includes("SI")) ? ddCountry += `<option selected value="SI">Slovenia</option>` : ddCountry += `<option value="SI">Slovenia</option>`;
                    (ccArray.includes("SB")) ? ddCountry += `<option selected value="SB">Solomon Islands</option>` : ddCountry += `<option value="SB">Solomon Islands</option>`;
                    (ccArray.includes("SO")) ? ddCountry += `<option selected value="SO">Somalia</option>` : ddCountry += `<option value="SO">Somalia</option>`;
                    (ccArray.includes("ZA")) ? ddCountry += `<option selected value="ZA">South Africa</option>` : ddCountry += `<option value="ZA">South Africa</option>`;
                    (ccArray.includes("GS")) ? ddCountry += `<option selected value="GS">South Georgia and the South Sandwich Islands</option>` : ddCountry += `<option value="GS">South Georgia and the South Sandwich Islands</option>`;
                    (ccArray.includes("SS")) ? ddCountry += `<option selected value="SS">South Sudan</option>` : ddCountry += `<option value="SS">South Sudan</option>`;
                    (ccArray.includes("ES")) ? ddCountry += `<option selected value="ES">Spain</option>` : ddCountry += `<option value="ES">Spain</option>`;
                    (ccArray.includes("LK")) ? ddCountry += `<option selected value="LK">Sri Lanka</option>` : ddCountry += `<option value="LK">Sri Lanka</option>`;
                    (ccArray.includes("SD")) ? ddCountry += `<option selected value="SD">Sudan</option>` : ddCountry += `<option value="SD">Sudan</option>`;
                    (ccArray.includes("SR")) ? ddCountry += `<option selected value="SR">Suriname</option>` : ddCountry += `<option value="SR">Suriname</option>`;
                    (ccArray.includes("SJ")) ? ddCountry += `<option selected value="SJ">Svalbard and Jan Mayen</option>` : ddCountry += `<option value="SJ">Svalbard and Jan Mayen</option>`;
                    (ccArray.includes("SZ")) ? ddCountry += `<option selected value="SZ">Swaziland</option>` : ddCountry += `<option value="SZ">Swaziland</option>`;
                    (ccArray.includes("SE")) ? ddCountry += `<option selected value="SE">Sweden</option>` : ddCountry += `<option value="SE">Sweden</option>`;
                    (ccArray.includes("CH")) ? ddCountry += `<option selected value="CH">Switzerland</option>` : ddCountry += `<option value="CH">Switzerland</option>`;
                    (ccArray.includes("SY")) ? ddCountry += `<option selected value="SY">Syrian Arab Republic</option>` : ddCountry += `<option value="SY">Syrian Arab Republic</option>`;
                    (ccArray.includes("TW")) ? ddCountry += `<option selected value="TW">Taiwan, Province of China</option>` : ddCountry += `<option value="TW">Taiwan, Province of China</option>`;
                    (ccArray.includes("TJ")) ? ddCountry += `<option selected value="TJ">Tajikistan</option>` : ddCountry += `<option value="TJ">Tajikistan</option>`;
                    (ccArray.includes("TZ")) ? ddCountry += `<option selected value="TZ">Tanzania, United Republic of</option>` : ddCountry += `<option value="TZ">Tanzania, United Republic of</option>`;
                    (ccArray.includes("TH")) ? ddCountry += `<option selected value="TH">Thailand</option>` : ddCountry += `<option value="TH">Thailand</option>`;
                    (ccArray.includes("TL")) ? ddCountry += `<option selected value="TL">Timor-Leste</option>` : ddCountry += `<option value="TL">Timor-Leste</option>`;
                    (ccArray.includes("TG")) ? ddCountry += `<option selected value="TG">Togo</option>` : ddCountry += `<option value="TG">Togo</option>`;
                    (ccArray.includes("TK")) ? ddCountry += `<option selected value="TK">Tokelau</option>` : ddCountry += `<option value="TK">Tokelau</option>`;
                    (ccArray.includes("TO")) ? ddCountry += `<option selected value="TO">Tonga</option>` : ddCountry += `<option value="TO">Tonga</option>`;
                    (ccArray.includes("TT")) ? ddCountry += `<option selected value="TT">Trinidad and Tobago</option>` : ddCountry += `<option value="TT">Trinidad and Tobago</option>`;
                    (ccArray.includes("TN")) ? ddCountry += `<option selected value="TN">Tunisia</option>` : ddCountry += `<option value="TN">Tunisia</option>`;
                    (ccArray.includes("TR")) ? ddCountry += `<option selected value="TR">Turkey</option>` : ddCountry += `<option value="TR">Turkey</option>`;
                    (ccArray.includes("TM")) ? ddCountry += `<option selected value="TM">Turkmenistan</option>` : ddCountry += `<option value="TM">Turkmenistan</option>`;
                    (ccArray.includes("TC")) ? ddCountry += `<option selected value="TC">Turks and Caicos Islands</option>` : ddCountry += `<option value="TC">Turks and Caicos Islands</option>`;
                    (ccArray.includes("TV")) ? ddCountry += `<option selected value="TV">Tuvalu</option>` : ddCountry += `<option value="TV">Tuvalu</option>`;
                    (ccArray.includes("UG")) ? ddCountry += `<option selected value="UG">Uganda</option>` : ddCountry += `<option value="UG">Uganda</option>`;
                    (ccArray.includes("UA")) ? ddCountry += `<option selected value="UA">Ukraine</option>` : ddCountry += `<option value="UA">Ukraine</option>`;
                    (ccArray.includes("AE")) ? ddCountry += `<option selected value="AE">United Arab Emirates</option>` : ddCountry += `<option value="AE">United Arab Emirates</option>`;
                    (ccArray.includes("GB")) ? ddCountry += `<option selected value="GB">United Kingdom</option>` : ddCountry += `<option value="GB">United Kingdom</option>`;
                    (ccArray.includes("US")) ? ddCountry += `<option selected value="US">United States</option>` : ddCountry += `<option value="US">United States</option>`;
                    (ccArray.includes("UM")) ? ddCountry += `<option selected value="UM">United States Minor Outlying Islands</option>` : ddCountry += `<option value="UM">United States Minor Outlying Islands</option>`;
                    (ccArray.includes("UY")) ? ddCountry += `<option selected value="UY">Uruguay</option>` : ddCountry += `<option value="UY">Uruguay</option>`;
                    (ccArray.includes("UZ")) ? ddCountry += `<option selected value="UZ">Uzbekistan</option>` : ddCountry += `<option value="UZ">Uzbekistan</option>`;
                    (ccArray.includes("UV")) ? ddCountry += `<option selected value="VU">Vanuatu</option>` : ddCountry += `<option value="VU">Vanuatu</option>`;
                    (ccArray.includes("VE")) ? ddCountry += `<option selected value="VE">Venezuela</option>` : ddCountry += `<option value="VE">Venezuela</option>`;
                    (ccArray.includes("VN")) ? ddCountry += `<option selected value="VN">Viet Nam</option>` : ddCountry += `<option value="VN">Viet Nam</option>`;
                    (ccArray.includes("VG")) ? ddCountry += `<option selected value="VG">Virgin Islands, British</option>` : ddCountry += `<option value="VG">Virgin Islands, British</option>`;
                    (ccArray.includes("VI")) ? ddCountry += `<option selected value="VI">Virgin Islands, U.s.</option>` : ddCountry += `<option value="VI">Virgin Islands, U.s.</option>`;
                    (ccArray.includes("WF")) ? ddCountry += `<option selected value="WF">Wallis and Futuna</option>` : ddCountry += `<option value="WF">Wallis and Futuna</option>`;
                    (ccArray.includes("EH")) ? ddCountry += `<option selected value="EH">Western Sahara</option>` : ddCountry += `<option value="EH">Western Sahara</option>`;
                    (ccArray.includes("YE")) ? ddCountry += `<option selected value="YE">Yemen</option>` : ddCountry += `<option value="YE">Yemen</option>`;
                    (ccArray.includes("ZM")) ? ddCountry += `<option selected value="ZM">Zambia</option>` : ddCountry += `<option value="ZM">Zambia</option>`;
                    (ccArray.includes("ZW")) ? ddCountry += `<option selected value="ZW">Zimbabwe</option>` : ddCountry += `<option value="ZW">Zimbabwe</option>`;

                        ddCountry += `
                    </select>
                    </div>
                    `;
                }

                function funcAddNewRule(country_code, min_qty) {

                    lmtCount++;

                    txtRemove = `<div class="row">
                        <div class="col-md-12 text-right">
                            <br>
                            <a 
                            style="color:red; border: 1px solid red; padding: 3px 8px;"
                            href="javascript:;" onclick="javascript: funcRemoveRule(`+lmtCount+`);"><i class="material-icons">close</i> Remove Rule</a>
                        </div>
                    </div>
                    `;

                    makeCountryDD(country_code);
                    makeInputQty( min_qty );

                    $('#zproductrules').append( 
                        `<span id="spn`+lmtCount+`">` + 
                        ddCountry + inputQty + txtRemove + 
                        `</span>`
                    );

                    
                }

                function funcRemoveRule(cc) {
                    $('#spn'+cc).remove();
                }

            }
            else
            {
                console.log('jquery not loaded...');
            }
            
        </script>