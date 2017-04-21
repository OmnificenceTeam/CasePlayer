<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="dasky/css/dasky.min.css" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-switch.css" rel="stylesheet" />
    <link href="css/common.css" rel="stylesheet" />
    <link href="css/animations.css" rel="stylesheet" />
    <link href="css/component.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/touch.timeline.light.css" type="text/css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/velocity.min.js"></script>
    <script type="text/javascript">
        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }


    </script>

    <script src="js/modernizr.custom.js"></script>

    <script src="js/service/Service.js"></script>

    <script src="js/service/ServiceData.js"></script>

    <script src="js/mod.js"></script>

    <style type="text/css">
        @import url(http://fonts.googleapis.com/css?family=Droid+Sans);

        #dasky {
            font-family: 'Droid Sans', sans-serif;
        }
    </style>
</head>
<body style="overflow: hidden;" onresize="positionLogo()" onload="">
    <div style="z-index: 20; width: 100%; height: 100px; position: fixed; top: 0px; opacity: 1;">
        <img src="img/Header.jpg" style="height: 100px; width: 100%; top: 0px; z-index: 1; float: left;" />
        <img src="img/Transexpert-logo.png" id="logo" style="height: 72px; float: left; width: 239px; top: 15px; z-index: 1; left: 650px; position: absolute;" />
    </div>
    <div class="container" id="content" style="height: 100%; width: 100%; top: 100px; position: fixed; background-image: url('img/background.jpg'); background-size: 100% 100%;">
        
        <div style="width: 717px; margin: 0 auto;">
            <div id="timeSlider" style="width: 717px; position: fixed; z-index: 111; display: none;">
                <div class="timeline-wrap">
                    <div class="timeline-event" data-value="22" data-margin="-32px">
                        <div class="timeline-title arrow_box">Jan 2013</div>

                    </div>
                    <div class="timeline-event" data-value="37" data-margin="-12px">
                        <div class="timeline-title">May 2013</div>

                    </div>
                    <div class="timeline-event" data-value="48" data-margin="0px">
                        <div class="timeline-title">Jun 2013</div>

                    </div>

                </div>

            </div>
        </div>
        <div id="" class="">
            <div style="width: 100%; height: 100%;">
                <!--<h1><span>A collection of</span><strong>Page</strong> Transitions</h1>-->
                <div id="TitleContent" style="padding:20px; margin-top: 100px; display:none;">
                    <h2>
                        Selecting Patients & Addressing Safety and Efficacy in the de novo context in KT
                    </h2>
                    <p style="font-size: 16px;">
                        Professor Samir Mallat <br />
Associate Professor of Clinical Medicine<br />
Director, End-Stage Renal Disease Program<br />
American University of Beirut Medical Center <br />

                    </p>
                    
                    <button type="button" style="position: fixed;
right: 0;
bottom: 0;
margin-right: 100px;
margin-bottom: 100px;" onclick="$('#TitleContent').hide(); $('#StartContent').show();" class="btn btn-custom">Continue</button>
                </div>

                <div id="StartContent" style="text-align: center; margin-top: 160px; display:none;">
                    <button type="button" class="casebtn" onclick="$('#StartContent').hide(); $('#Objective').show();  ">
                        Case study 1
                    </button>
                    <button type="button" class="casebtn" onclick="location.href='default_c2.aspx' ">
                        Case study 2
                    </button>
                </div>

                <div id="Objective" style="padding:20px; display:none; margin-top: 50px;">
                    <h2>
                       Objectives
                    </h2>
                   <ul style="font-size: 19px;">
                       <li>Examine the evidence of calcineurin inhibitor (CNI) toxicity
</li>
                       <li>Understand the role of everolimus in KT
</li> <li>Define the characteristics of a patient suitable for treatment with everolimus
</li>
                   </ul>
                    
                    <button type="button" style="position: fixed;
right: 0;
bottom: 0;
margin-right: 100px;
margin-bottom: 100px;" onclick="$('#Objective').hide(); $('#MainContent').show(); $('#timeSlider').show(); startTimeline();" class="btn btn-custom">Continue</button>
                </div>

                <div id="MainContent" style="display: none;">
                      <img src="img/home.png" style="width: 44px; position: fixed; right: 0; margin-right: 25px; cursor:pointer; " onclick="location.href='default.aspx?show=1'" />
                 
                        
                     <%--  <div style="position:absolute;background-image: url(img/legendbuttont.png); width:323px; height:152px; margin-top:50px; margin-left:5px;">           
                            <div style="max-width:300px;">
                            <img src="img/legend.png" style="height:50px; width:40px; margin-left: 25px; margin-top:20px;z-index:1;" />
                                <p style="font-size:12px; margin-left:80px; margin-top:-45px;z-index:1;">Enabled icon you can view the presentation</p>
                            <img src="img/legend_disable.png" style="height:50px; width:40px; margin-left: 25px; margin-top:15px;z-index:1;" />
                                <p style="font-size:12px; margin-left:80px; margin-top:-45px;z-index:1;">Disabled icon only speaker can able to enable</p>
                           </div>
                       </div> --%>
                
                   <div id="animationHolder" style="width: 717px; height: 489px; background-image: url('img/road.png'); margin: 0 auto; margin-top: 26px;">
                    </div>
                    <div style="width: 717px; margin: 0 auto; margin-top: -2px; text-align: center;">
                        <div style="width: 142px; background-color: #8cc63f; padding-top: 20px;" class="roadMnu">
                            Presentation
                        </div>
                        <div style="width: 140px; background-color: #d1e5b0; padding-top: 20px;" class="roadMnu">
                            Relevant History
                        </div>
                        <div style="width: 141px; background-color: #8cc63f; padding-top: 20px;" class="roadMnu">
                            Examination
                        </div>
                        <div style="width: 142px; background-color: #d1e5b0;" class="roadMnu">
                            Laboratory findings
                        </div>
                        <div style="width: 142px; background-color: #8cc63f; padding-top: 20px;" class="roadMnu">
                            Management
                        </div>
                    </div>

                    <input id="range" type="range" min="20" max="55" value="20" style="display: none;" />
                    <div id="ShowDiv" style="width: 100%; height: 100%; z-index: 9999999; background-color: rgba(85, 85, 85, 0.76); position: absolute; top: 0; display: none;">
                        <div style="margin: 0 auto; overflow-x: hidden; overflow-y: auto; background-color: rgba(241, 241, 241, 1); box-shadow: 1px 2px 7px -1px black; width: 90%; margin-top: 50px; height: 75%;">

                            <div style="text-align: right;">
                                <span class="glyphicon glyphicon-remove" style="margin: 10px; cursor: pointer;" onclick="onclickClose()"></span>
                            </div>
                            <div id="ImgCont1" class="ImgCCC" style="display: none;">
                                <p class="headingtxt">
                                    <strong><u>Presentation:</u></strong>
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>A 54 year old male is referred for evaluation of increased serum creatinine </li>
                                </ul>
                            </div>
                            <div id="ImgCont2" class="ImgCCC pt-perspective" style="display: none;">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>History:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Hypertension, diagnosed 10 years ago</li>
                                        <li>Hyperlipidemia; diagnosed 5 years ago</li>
                                        <li>Crohn's disease, diagnosed in the 1990‘s</li>
                                        <li>Developed recurrent stone disease in the early 2000's </li>
                                        <li>Serum creatinine was 1.9 mg% in 1996 and 2.4 mg% in 2003</li>
                                        <li>A kidney biopsy revealed Ig A Nephropathy </li>
                                        <li>Acute renal failure secondary to obstructive stone disease with a serum creatinine
                                            of 12.4 mg% in 2005</li>
                                        <li>Renal function moderately improved after obstruction correction</li>
                                        <li>Hemodialysis from 2007, complicated by several episodes of sepsis </li>
                                    </ul>

                                </div>
                                <div id="Content2" class="pt-page" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Other relevant history:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Family/ Occupational/ Social History

                                            <ul>
                                                <li>Father with hypertension; died age 70 years due to myocardial infarction</li>
                                                <li>Mother with history of type 2 diabetes for 15 years; 72 years</li>
                                                <li>Married, with 2 children</li>
                                                <li>Never smoked or consumed alcohol</li>
                                                <li>Construction site supervisor</li>
                                            </ul>
                                        </li>

                                        <ul>
                                            <li>Lisinopril 20 mg QD</li>
                                            <li>Fluvastatin 20 mg QD </li>
                                        </ul>
                                        </li>

                                    </ul>
                                </div>
                                <div class="clearfix">
                                </div>
                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">
                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>
                                </div>
                            </div>
                            <div id="ImgCont3" class="ImgCCC" style="display: none;">
                                <p class="headingtxt">
                                    <strong><u>Examination: </u></strong>
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>Overweight </li>
                                    <li>Height: 5’ 7"</li>
                                    <li>Weight: 84 kg</li>
                                    <li>BMI: 29.0 </li>
                                    <li>Waist circumference: 38"</li>
                                    <li>Blood pressure: 130/80 mm Hg</li>
                                    <li>Cardiac exam: normal </li>
                                    <li>Peripheral pulses: normal</li>
                                    <li>No organomegaly</li>
                                </ul>
                            </div>
                            <div id="ImgCont4" class="ImgCCC" style="display: none;">
                                <div style="width: 100%;">
                                    <p class="headingtxt">
                                            <strong><u>Laboratory findings: </u></strong>
                                        </p>
                                    <div style="width: 50%; position: relative; max-width: 50%;">
                                        
                                        <ul style="margin-left: 60px;">
                                            <li>FSG: 100 mg/dL [75-100 mg/dL]</li>
                                            <li>Creatinine: 2.9 mg/dL</li>
                                            <li>Blood Urea Nitrogen: 25 mg/dL</li>
                                            <li>eGFR: 23 mL/min/1.73 m2</li>
                                            <li>ALT: 62 U/L</li>
                                            <li>Uric acid: 8.8 mg/dL</li>
                                            <li>HbA1C: 5.5%</li>
                                            <li>UA: 1+protein</li>
                                            <li>TSH: normal</li>
                                            <li>Resting ECG: left axis deviation, otherwise normal</li>
                                        </ul>
                                    </div>
                                    <div style="width: 49%; float: right; position: relative; margin-top: -254px;">
                                        <ul>
                                            <li style="font-size: 16px;"><strong>Lipid panel</strong>
                                                <ul style="font-size: 16px; line-height: 28px;">
                                                    <li>TC: 191 mg/dL</li>
                                                    <li>TG: 280 mg/dL</li>
                                                    <li>HDL-C: 36 mg/dL</li>
                                                    <li>LDL-C: 99 mg/dL</li>
                                                </ul>
                                            </li>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div style="margin-left: 60px; margin-top: 120px; font-size: 10px;">
                                    <p>FSG, fasting serum glucose; BUN, blood urea nitrogen; eGFR, estimated glomerular filtration rate; ALT, Alanine transaminase; HbA1C, glycosylated hemoglobin; UA, urinalysis; TSH, thyroid stimulating hormone; ECG, electrocardiography; TC, total cholesterol; TG, triglycerides; HDL-C, high density lipoprotein cholesterol; LDL-C, low density lipoprotein cholesterol; PRA, panel reactive antibody  </p>
                                </div>
                            </div>
                            <div id="ImgCont5" class="ImgCCC pt-perspective" style="display: none;">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" data-value="1" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Kidney transplantation is the preferred treatment option for patients who have or
                                            are developing end-stage renal disease and who are, or will be undergoing, chronic
                                            dialysis therapy</li>

                                        <li style="margin-top: 20px;">To qualify for KT a patient should have:
                                            <ul>
                                                <li>Progressive, irreversible renal disease</li>
                                                <li>No active malignancy or infection </li>
                                                <li>Absence of systemic disease which would severely limit rehabilitation </li>
                                                <li>Life expectancy greater than 5 years with a successful transplant</li>
                                                <li>Effective family or social support systems </li>
                                                <li>Willingness to comply with treatment and follow-up requirements </li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <p style="margin-top: 200px; font-size: 10px; margin-left: 60px;">Clinical  Guidelines for Kidney Transplantation. http://www.bcrenalagency.ca/</p>

                                </div>
                                <div id="Content2" class="pt-page" data-value="2" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Post-transplant management:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Patient underwent living donor (brother) renal transplant</li>
                                        <li>Graft function was immediate</li>
                                        <li>Initial immunosuppression after transplant consisted of
                                            <ul>
                                                <li>Cyclosporine (CsA), initiated at 8 mg/kg/day to achieve trough blood levels of 250-350
                                                    ng/ml</li>
                                                <li>Prednisone 0.5 mg/kg/day tapered to 10 mg/d</li>
                                                <li>Mycophenolate mofetil 500 mg twice daily </li>
                                                <li>Basiliximab induction</li>
                                            </ul>
                                        </li>
                                        <li>Serum creatinine was stable at 1.2 mg/dL on discharge</li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">

                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>
                                </div>
                            </div>
                            <div id="ImgCont6" class="ImgCCC" style="display: none;">
                                <p class="headingtxt">
                                    <strong><u>Worsening renal function: </u></strong>
                                </p>
                                <p style="margin-left: 40px;">
                                    Four months after the transplant, the patient had
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>Deterioration in his renal functions</li>
                                    <li>Increase in blood pressure</li>
                                    <li>Hyperlipidemia</li>
                                </ul>
                            </div>
                            <div id="ImgCont7" class="ImgCCC" style="display: none;">
                                <p class="headingtxt">
                                    <strong><u>Laboratory findings: </u></strong>
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>Serum creatinine increased to 2.7 mg/dL</li>
                                    <li>Blood pressure 140/88 mm Hg</li>
                                    <li>Lipid panel:
                                        <ul>
                                            <li>TC: 235 mg/dL</li>
                                            <li>TG: 360 mg/dL</li>
                                            <li>HDL-C: 40 mg/dL</li>
                                            <li>LDL-C: 123 mg/dL</li>
                                        </ul>
                                    </li>
                                    <li>Renal biopsy revealed no cellular rejection but mild tubular atrophy and patchy
                                        mild interstitial fibrosis</li>
                                </ul>
                            </div>
                            <div id="ImgCont8" class="ImgCCC pt-perspective" style="display: none;">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" data-value="1" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>
                                    <p style="margin-left: 40px; font-size: 18px;">
                                        What could be the most significant factor contributing or causing this renal pathology?
                                    </p>
                                    <div style="padding-top: 10px; padding-left: 20px; width: 525px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QuestionID" value="1" />

                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Acute graft rejection" id="radio1"
                                                    class="css-checkbox" />
                                                <label for="radio1" class="css-label radGroup1">
                                                    Acute graft rejection</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Delayed graft functioning (DGF)" id="radio2"
                                                    class="css-checkbox" />
                                                <label for="radio2" class="css-label radGroup1">
                                                    Delayed graft functioning (DGF)</label><br />
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Infection" id="radio3" class="css-checkbox" />
                                                <label for="radio3" class="css-label radGroup1">
                                                    Infection</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI nephrotoxicity" id="radio4" class="css-checkbox" />
                                                <label for="radio4" class="css-label radGroup1">
                                                    CNI nephrotoxicity</label>
                                            </p>
                                        </div>

                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div style="width: 100%; text-align: right;">

                                        <input type="hidden" value="1" class="QID" />

                                        <input id="imgcont8but1" onclick="onclickAnswer(this);" class="btn btn-custom" type="button" value="Submit" style="width: 100px; margin-right: 100px;" />

                                    </div>

                                </div>

                                <div id="Content2" class="pt-page" data-value="2" style="text-align:center;">

                                    <p class="headingtxt">
                                        <strong><u>CNI therapy and nephrotoxicity:</u></strong>
                                    </p>
                                    <img src="img/CNI-therapy-and-nephrotoxicity.png" style="margin-top: 30px;" />
                                </div>
                                <div id="Content3" class="pt-page" data-value="3" style="text-align:center;">
                                    <p class="headingtxt">
                                        <strong><u>CNI therapy causes acute and chronic nephrotoxicity:</u></strong>
                                    </p>
                                    <img src="img/image1.png" style="margin-top: 30px; " />

                                    <p style="margin-left: 60px; margin-top: 30px; font-size: 10px;">
                                        Naesens M, et al. Clin J Am Soc Nephrol 4: 481–508, 2009
                                    </p>
                                </div>
                                <div id="Content4" class="pt-page" data-value="4" style="text-align:center;">
                                    <p class="headingtxt">
                                        <strong><u>High cyclosporine exposure is associated with CAN:</u></strong>
                                    </p>
                                    <img src="img/CsA-exposure.png" style="margin-top: 30px; " />
                                    <p style="margin-top: 60px; font-size: 10px; margin-left: 60px;">
                                        CAN, chronic allograft nephropathy; CsA, cyclosporine.<br />
                                        Nankivell BJ, et al. Transplantation. 2004;78(4):557–65
                                    </p>
                                </div>
                                <div id="Content5" class="pt-page" data-value="5" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>

                                    <p style="margin-left: 40px; font-size: 18px;">
                                        Which is the preferred therapeutic option to prevent calcineurin inhibitor nephrotoxicity?
                                    </p>

                                    <div style="padding-top: 10px; padding-left: 20px; width: 525px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QuestionID" value="2" />

                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI avoidance" id="radio5" class="css-checkbox" />
                                                <label for="radio5" class="css-label radGroup1">CNI avoidance</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI withdrawal" id="radio6" class="css-checkbox" />
                                                <label for="radio6" class="css-label radGroup1">CNI withdrawal</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI minimization" id="radio7" class="css-checkbox" />
                                                <label for="radio7" class="css-label radGroup1">CNI minimization</label>
                                            </p>

                                        </div>


                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div style="width: 100%; text-align: right;">


                                        <input type="hidden" value="2" class="QID" />

                                        <input id="Button1" onclick="onclickAnswer(this);" class="btn btn-custom" type="button" value="Submit" style="width: 100px; margin-right: 100px;" />

                                    </div>

                                </div>
                                <div id="Content6" class="pt-page" data-value="6" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Therapeutic options to prevent or treat calcineurin inhibitor nephrotoxicity:</u></strong>
                                    </p>
                                    <center>
                                    <table border="1" class="tg" style="width:600px;">
                                        <tr style="color: White;">
                                            <th>Option</th>
                                            <th>Rationale</th>
                                            <th>Effect</th>
                                            <th>Comment</th>
                                        </tr>
                                        <tr style="background-color: d1e5b0; text-align:center; ">
                                            <td>CNI avoidance</td>
                                            <td>Completely avoid exposure to CNIs</td>
                                            <td>+/-</td>
                                            <td>Increased rejection risk, maybe not with costimulatory blockers(e.g., belatacept)</td>
                                        </tr>
                                        <tr style=" text-align:center;">
                                            <td>CNI withdrawal</td>
                                            <td>Exposure to CNIs for only a limited time, to bridge the high rejection risk period
                                                early after transplantation</td>
                                            <td>+/-</td>
                                            <td>Increased rejection risk</td>
                                        </tr>
                                        <tr style="background-color: d1e5b0; text-align:center;">
                                            <td>CNI minimization</td>
                                            <td>Lower but continuous exposure to CNIs</td>
                                            <td>+</td>
                                            <td>Safe on short term; long term results not known</td>
                                        </tr>
                                    </table>
                                    </center>
                                    <p style="margin-left: 60px; margin-top: 200px; font-size: 10px;">Naesens M, et al. Clin J Am Soc Nephrol 4: 481–508, 2009</p>
                                </div>
                                <div id="Content7" class="pt-page" data-value="7" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>CNI minimization is associated with reduced overall graft failure and death-censored
                                            graft failure:</u></strong>
                                    </p>
                                    <div style="width: 589px; margin: 0 auto;">
                                        <img src="img/table2.png" style=" width: 100%;" />
                                    </div>
                                    <p style="text-align:center; font-size: 14px; margin-top:20px;">
                                        CNI minimization when compared to standard CNI was associated with
                                    </p>
                                    <ul style="margin-left: 80px;" type='arrow'>
                                        <li>Reduced overall graft failure (OR 0.73, P=0.009) </li>
                                        <li>Reduced death-censored graft failure (OR 0.73, P=0.03)</li>
                                        <li>No difference in graft failure secondary to rejection (OR 0.67 [95% CI, 0.34 - 1.31],P=0.24)</li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">

                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>
                                </div>
                            </div>
                            <div id="ImgCont9" class="ImgCCC" style="display: none;">
                                <p class="headingtxt">
                                    <strong><u>Management: </u></strong>
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>Cyclosporine dose was reduced to 25 mg BID</li>
                                    <li>Mycophenolic mofetil 1000 mg BD</li>
                                    <li>After dose reduction, serum creatinine levels were stable between 1.8-2.0 mg/dL
                                    </li>
                                    <li>Hypertension was managed with valsartan 160 mg QD</li>
                                    <li>Hyperlipidemia was managed by increasing the dose of fluvastatin to 40 mg QD</li>
                                </ul>
                            </div>
                            <div id="ImgCont10" class="ImgCCC" style="display: none;">
                                <p class="headingtxt" style="margin-left:0px;">
                                    <strong><u>Post-transplant skin changes: </u></strong>
                                </p>

                                <div style="width: 100%; margin-top:30px;">
                                    <div style=" margin-top: -10px; text-align:center;">
                                        <img src="img/skin changes.jpg" style=" position: relative; height: 225px;" />
                                        <p style=" font-size: 10px;">Werschler WP. J Clin Aesthet Dermatol. Jul 2008; 1(2): 22–27</p>
                                    </div>

                                    <div style=" position: absolute; width:82%;">
                                        <ul style="margin-left: 60px;">
                                            <li>6 months post transplantation patient visited a dermatologist with complaints of
                                                rough, reddish, scaly, red bumps on the sunexposed areas of his body. </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            <div id="ImgCont11" class="ImgCCC pt-perspective" style="display: none;">
                            <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" data-value="1" style="float: left;"> 
                                <p class="headingtxt" style="margin-left:0px;">
                                    <strong><u>Laboratory examination: </u></strong>
                                </p>

                                <div style="width: 100%;">
                                    <div style="text-align:center; margin-top: 20px;">
                                        <img src="img/skin changes.jpg" style="position: relative; height: 225px;" />
                                        <p style=" font-size: 10px;">Werschler WP. J Clin Aesthet Dermatol. Jul 2008; 1(2): 22–27</p>
                                    </div>
                                    <div style="">
                                        <ul style="margin-left: 265px;">
                                            <li>Biopsy revealed actinic keratosis</li>
                                        </ul>
                                    </div>
                                </div>
                               </div>
                               <div id="Content2" class="pt-page" data-value="3" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Laboratory findings:</u></strong>
                                    </p>
                                    <div style="width: 100%;">
                                        <div style="width: 35%; max-width: 50%; position: relative; margin-top: 20px;">
                                            <ul style="margin-top: 40px; margin-left: 60px;">
                                                <li>FSG: 100 mg/dL</li>
                                                <li>HbA1C: 6.5%</li>
                                                <li>Creatinine: 1.8 mg/dL</li>
                                                <li>Blood Urea Nitrogen: 25 mg/dL</li>
                                                <li>eGFR: 35 mL/min/1.73 m<sup>2</sup></li>
                                                <li>Uric acid: 8.8 mg/dL</li>
                                                <li>Total urine protein: 300 mg/d</li>
                                            </ul>
                                        </div>
                                        <div style="width: 50%; margin-top: -10px; float: right; margin-top: -250px;">
                                            <ul style="margin-top: 10px; margin-left: 60px;">
                                                <li>Lipid panel
                                                <ul>
                                                    <li>TC: 153 mg/dL</li>
                                                    <li>TG: 220 mg/dL</li>
                                                    <li>HDL-C: 31 mg/dL</li>
                                                    <li>LDL-C: 80 mg/dL</li>
                                                </ul>

                                                </li>
                                            </ul>
                                        </div>
                                        <p style="font-size: 10px; margin-top: 120px; margin-left: 30px;">FSG, fasting serum glucose; BUN, blood urea nitrogen; eGFR, estimated glomerular filtration rate; ALT, Alanine transaminase; HbA1C, glycosylated hemoglobin; UA, urinalysis; TSH, thyroid stimulating hormone; ECG, electrocardiography; TC, total cholesterol; TG, triglycerides; HDL-C, high density lipoprotein cholesterol; LDL-C, low density lipoprotein cholesterol; PRA, panel reactive antibody</p>

                                    </div>
                                </div>
                                 <div class="clearfix"></div>
                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">

                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>
                                </div>
                            </div>
                            <div id="ImgCont12" class="ImgCCC pt-perspective" style="display: none;">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" data-value="1" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>

                                    <p style="margin-left: 40px; font-size: 18px;">
                                        What could be the risk factor/s for development of actinic keratosis in this patient?
                                    </p>

                                    <div style="padding-top: 10px; padding-left: 20px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QuestionID" value="3" />

                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="History of frequent or intense sun-exposure"
                                                    id="radio8" class="css-checkbox" />
                                                <label for="radio8" class="css-label radGroup1" style="max-width: 91%;">
                                                    History of frequent or intense sun-exposure (patient worked as a construction site
                                                    supervisor)</label>
                                            </p>
                                            <p style="margin-top: 30px;">
                                                <input type="radio" name="radiog_lite" value="Immunosuppressive therapy" id="radio9"
                                                    class="css-checkbox" />
                                                <label for="radio9" class="css-label radGroup1">
                                                    Immunosuppressive therapy</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Age" id="radio10" class="css-checkbox" />
                                                <label for="radio10" class="css-label radGroup1">
                                                    Age</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="All of the above" id="radio11" class="css-checkbox" />
                                                <label for="radio11" class="css-label radGroup1">
                                                    All of the above</label>
                                            </p>
                                        </div>

                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                    <div style="width: 100%; text-align: right;">

                                        <input type="hidden" value="3" class="QID" />
                                        <input id="Button2" onclick="onclickAnswer(this);" class="btn btn-custom" type="button" value="Submit" style="width: 100px; margin-right: 100px;" />

                                    </div>
                                </div>
                                <div id="Content2" class="pt-page" data-value="2" style="text-align:center;">
                                    <p class="headingtxt">
                                        <strong><u>CNI therapy is associated with increased risk of skin cancer:</u></strong>
                                    </p>
                                    <img src="img/table3.png" style="margin-top: 20px;" />
                                </div>
                                 <div id="Content3" class="pt-page" data-value="2" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>
                                    <p style="text-align:center; margin-top:150px;">The patient has..</p>
                                    <ul style="width:320px; margin:0 auto;"><li>CNI toxicity</li>
                                    <li>A diagnosed pre-malignant condition</li>
                                    </ul>
                                    <p style="text-align:center; margin-top: 20px;">Would everolimus be an appropriate treatment option..</p>
                                </div>
                                <div id="Content4" class="pt-page" data-value="3" style="text-align:center;">
                                    <p class="headingtxt" style="margin-left:0px;">
                                        <strong><u style="">Relevance of everolimus:</u></strong>
                                    </p>
                                    <img src="img/Relevance-of-everolimus.png" style="margin-top: 30px; " />

                                    <p style="font-size: 10px;
text-align: left;
margin: 0 auto;
width: 345px;
margin-top: 30px; font-size: 10px;">
                                        1. Langer RM, et al. Transpl Int. 2012;25:592-602.<br />
                                        2. Morales JM et al. Transplant Proc 2005;37:693–6.<br />
                                        3. Zeier M, van der Giet M. Transpl Int 2011;24:30–42.<br />
                                        4. Kauffman HM et al. Transplantation. 2005;80:883–9.
                                    </p>

                                </div>
                                <div id="Content5" class="pt-page" data-value="4" style=" text-align:center">
                                    <p class="headingtxt">
                                        <strong><u>Everolimus with CNI minimization provides similar efficacy to standard CNI
                                            strategies:</u></strong>
                                    </p>
                                    <img src="img/graph29frame.png"/>
                                    <p style="text-align:center; margin-top: 100px; font-size: 10px;">Campistol JM et al. Transplantation. 2011 Aug 15;92(3 Suppl):S3-26.</p>
                                </div>
                                <div id="Content6" class="pt-page" data-value="5" style="text-align:center;">
                                    <p class="headingtxt">
                                        <strong><u>De novo EVR + CNI minimization: Renal benefits in kidney transplantation</u></strong>
                                    </p>
                                    <img src="img/graph30frame.png" style="margin-top: 20px; " />
                                    <p style="text-align:center; font-size: 10px;"> Tedesco Silva H et al. Am J Transplant. 2010;10:1401–13; 2. Langer RM, et al. Transpl Int. 2012;25:592-602</p>
                                </div>
                               <%-- <div id="Content6" class="pt-page" data-value="6" style="float: left;">
                                    <p style="color: #1388ab; margin-left: 30px; font-size: 21px;">
                                        <strong><u>De Novo everolimus with tacrolimus minimization demonstrated no compromise
                                            in efficacy (ASSET trial):</u></strong>
                                    </p>
                                    <img src="img/table31frame.png" style="margin-top: 20px; margin-left: 200px;" />
                                </div>--%>
                                <div id="Content7" class="pt-page" data-value="7" style="text-align:center;">
                                    <p class="headingtxt">
                                        <strong><u>Reduced incidence of neoplasms with everolimus and low CNI compared with
                                            MPA and standard CNI:</u></strong>
                                    </p>
                                    <img src="img/graph32frame.png" style="margin-top: 20px;" />
                                    <p style="margin-left:100px;  font-size: 10px;">
                                        EVR, everolimus; MPA, mycophenolate acid.<br />
                                        1. Tedesco Silva H et al. Am J Transplant. 2010;10:1401–13; 2. Cibrik D et al. Transplantation. 2013;95:933-942
                                    </p>
                                </div>

                                <div id="Content8" class="pt-page" data-value="8" style="float: left;">

                                    <p class="headingtxt">
                                        <strong><u>EVR is associated with decrease in CMV infections compared to MMF:</u></strong>
                                    </p>
                                    <img src="img/graph33frame.png" style="margin-top: 20px; " />
                                    <p style="text-align:center; margin-top: 60px; font-size: 10px;">
                                        EVR, everolimus; MPA, mycophenolic acid; CMV, cytomegalovirus.<br />
                                        Brennan DC, et al. Am J Transplant. 2011;11;2453–2462
                                    </p>
                                </div>

                                <div id="Content9" class="pt-page" data-value="9" style="text-align:center;">

                                    <p class="headingtxt">
                                        <strong><u>Everolimus and low CNI significantly reduced the incidence of BK virus compared with MPA and standard CNI:</u></strong>
                                    </p>
                                    <img src="img/graph34frame.png" style="margin-top: 20px; " />
                                    <p style="text-align:center; font-size:10px;"> CsA, Cyclosporine; MPA, mycophenolate acid. <br />
Campistol JM et al. Transplantation. 2011 Aug 15;92(3 Suppl):S3-26.</p>
                                </div>
                                <div id="Content10" class="pt-page" data-value="10" style="text-align:center;;">
                                    <p class="headingtxt">
                                        <strong><u>Pleiotropic effects of everolimus :</u></strong>
                                    </p>
                                    <img src="img/flowchart35frame.png" style="width:740px; " />
                                    <p style="text-align:center; margin-top: 40px; font-size: 10px;">Adapted from Campistol JM, et al. Transplantation. 2011 Aug 15;92(3 Suppl):S3 26</p>
                                </div>

                                <div class="clearfix"></div>
                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">

                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>
                                </div>
                            </div>

                            <div id="ImgCont13" class="ImgCCC pt-perspective" style="display: none;">

                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" data-value="1" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>

                                    <p style="margin-left: 40px; font-size: 18px;">
                                        What characteristics need to be evaluated in this patient before initiating treatment
                                        with everolimus?
                                    </p>

                                    <div style="padding-top: 10px; padding-left: 20px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QusetionID" value="4" />


                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Immunologic risk" id="radio12" class="css-checkbox" />
                                                <label for="radio12" class="css-label radGroup1" style="max-width: 91%;">
                                                    Immunologic risk</label>
                                            </p>
                                            <p style="margin-top: 30px;">
                                                <input type="radio" name="radiog_lite" value="Lipid profile" id="radio13" class="css-checkbox" />
                                                <label for="radio13" class="css-label radGroup1">
                                                    Lipid profile</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Evaluation of malignancy" id="radio14"
                                                    class="css-checkbox" />
                                                <label for="radio14" class="css-label radGroup1">
                                                    Evaluation of malignancy</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="All of the above" id="radio15" class="css-checkbox" />
                                                <label for="radio15" class="css-label radGroup1">
                                                    All of the above</label>
                                            </p>

                                        </div>

                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div style="width: 100%; text-align: right;">

                                        <input type="hidden" value="4" class="QID" />

                                        <input id="Button3" onclick="onclickAnswer(this);" class="btn btn-custom" type="button" value="Submit" style="width: 100px; margin-right: 100px;" />
                                    </div>

                                </div>
                                <div id="Content2" class="pt-page" data-value="2" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>The everolimus patient:</u></strong>
                                    </p>
                                    <div style="width: 100%;">
                                        <div style="width: 65%; width: 400px; margin-left:140px; position: relative; margin-top: 20px;">
                                            <div style="margin-top: 40px; margin-left: 60px;">
                                                <p>Adult over the age of 18 years</p>
                                                <p>Primary renal transplant or secondary if not lost due to immunological reasons</p>
                                                <p>Multi-organ transplant recipient or received a kidney from a non-heart beating donor</p>
                                                <p>Low to moderate immunological risk</p>
                                                <p>High immunological risk (PRA >20%)</p>
                                                <p>Severe, uncontrolled hyperlipidemia</p>
                                            </div>
                                        </div>
                                        <div style="width: 30%; margin-top: -10px; float: right; margin-top: -210px;">
                                            <table border="0" style="margin-top:-35px;">
                                                <tr>
                                                    <td>
                                                        Yes
                                                    </td>
                                                    <td>
                                                        No
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:8px;">
                                                          <input type="radio" name="radiog_lite"  id="radio111" class="css-checkbox" />
                                                <label for="radio111" data-question="8"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                      
                                                    </td>
                                                    <td style="padding-top:8px;">
                                                          <input type="radio" name="radiog_lite"  id="radio112" class="css-checkbox" />
                                                <label for="radio112" data-question="8"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                      
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:8px;">
                                                        <input type="radio" name="radiog_lite"  id="radio113" class="css-checkbox" />
                                                <label for="radio113" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                    <td style="padding-top:10px;">
                                                       <input type="radio" name="radiog_lite"  id="radio114" class="css-checkbox" />
                                                <label for="radio114" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:42px;">
                                                        <input type="radio" name="radiog_lite"  id="radio115" class="css-checkbox" />
                                                            <label for="radio115" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                    <td style="padding-top:42px;">
                                                        <input type="radio" name="radiog_lite"  id="radio116" class="css-checkbox" />
                                                            <label for="radio116" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:15px;">
                                                        <input type="radio" name="radiog_lite"  id="radio117" class="css-checkbox" />
                                                            <label for="radio117" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                        </label>
                                                    </td>
                                                    <td style="padding-top:15px;">
                                                            <input type="radio" name="radiog_lite"  id="radio118" class="css-checkbox" />
                                                             <label for="radio118" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:10px;">
                                                         <input type="radio" name="radiog_lite"  id="radio119" class="css-checkbox" />
                                                             <label for="radio119" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                    <td style="padding-top:10px;">
                                                         <input type="radio" name="radiog_lite"  id="radio120" class="css-checkbox" />
                                                             <label for="radio120" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td style="padding-top:10px;">
                                                         <input type="radio" name="radiog_lite"  id="radio121" class="css-checkbox" />
                                                             <label for="radio121" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                    <td style="padding-top:10px;">
                                                         <input type="radio" name="radiog_lite"  id="radio122" class="css-checkbox" />
                                                             <label for="radio122" data-question="9"  onchange="onclickYesNo(this)" class="css-label radGroup1" style="max-width: 91%;">
                                                    </label>
                                                    </td>
                                                </tr>
                                                
                                            </table>
                                        </div>
                                    </div>
                                </div>
                               
                                <div id="Content3" class="pt-page" data-value="4" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Discussion Point:</u></strong>
                                    </p>

                                    <ul style="margin-top: 40px; margin-left: 60px;">
                                        <li>The everolimus Patient – does this patient qualify?
                                            <ul>
                                                <li>Elevated lipids from baseline – controlled with statin</li>
                                                
                                                <li>Patient diagnosed with premalignant condition actinic keratosis; no prior history
                                                    of malignancies</li>
                                            </ul>
                                        </li>
                                    </ul>

                                </div>
                                <div id="Content4" class="pt-page" data-value="5" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Conversion to everolimus</u></strong>
                                    </p>

                                    <ul style="margin-top: 40px; width: 570px;
margin: 0 auto; margin-top:40px;">
                                        <li>Management
                                            <ul>
                                                <li>Cyclospsorine dose was reduced to 25 mg BD</li>
                                                <li>Everolimus, initiated at 1.5 mg/day (target trough level 3-8 ng/mL)</li>
                                                <li>Prednisone 10 mg/day; tapered off</li>
                                                <li>Continued on antihypertensives and statins</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul style="margin-top: 20px; width: 570px;
margin: 0 auto;">
                                        <li>After 6 months
                                            <ul>
                                                <li>Serum creatinine level was 1.9 mg/dL</li>
                                                <li>Hypertension and hyperlipidemeia controlled</li>
                                                <li>No recurrence of actinic keratosis</li>


                                            </ul>
                                        </li>
                                    </ul>

                                </div>
                                <div id="Content5" class="pt-page" data-value="6" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Algorithm for early conversion to everolimus with CNI minimization:</u></strong>
                                    </p>

                                    <img src="img/image42frame.png" style="margin-top: 20px; margin-left: 100px;" />
                                    <p style="text-align:center; margin-top: 60px; font-size: 10px;">Campistol JM, et al. Transplantation. 2011 Aug 15;92(3 Suppl):S3 26</p>
                                </div>
                                <div class="clearfix"></div>
                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">


                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>






            </div>
        </div>
         <div style="width:139px; height:167px; background-image:url(img/Layer4.png); position:absolute; bottom:15px; right:0px; float:left;"></div>
    </div>

   



    <div class="btn-group dropup" style="position: absolute; right: 0; bottom: 0;">
        <button type="button"  id="ActivateBtnMod" class="btn btn-primary cusBtn"
            style="background-color: #8dc63f; margin-top: -3px; display:none" onclick="onClickActivateCase();" >
            <span class="glyphicon glyphicon-cog"></span>
        </button>
    </div>
    <div style="display: none;">
    </div>


    <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div id="ImgContent">
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-top: 0px;">
                        Close</button>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;</button>
                    <h4 class="modal-title" id="myModalLabel">Page Settings</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-bordered" style="margin-bottom: 0px;">
                        <thead>
                            <tr>
                                <th>Page Name</th>
                                <th style="width: 180px;">Status</th>
                            </tr>
                        </thead>
                    </table>
                    <div class="table-responsive" style="height: 300px; overflow: auto;">
                        <table class="table table-bordered">
                            <tbody id="pageDatatable">
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" onclick="location.reload();" data-dismiss="modal"
                        style="margin-top: 0px;">
                        Close</button>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="modal fade" id="myModalCase" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" style="width: 70%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;</button>
                    <h4 class="modal-title" id="H1">Case Settings</h4>
                </div>
                <div class="modal-body">

                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home" data-toggle="tab">Case 1</a></li>
                        <li><a href="#profile" data-toggle="tab">Case 2</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <table class="table table-bordered" style="margin-bottom: 0px;">
                                <thead>
                                </thead>
                            </table>
                            <div class="table-responsive" style="height: 350px; overflow: auto;">
                                <table class="table table-bordered">
                                    <tbody id="caseSetting1">
                                        <tr>
                                            <th>Image ID</th>
                                            <th style="">Jan 2013</th>
                                            <th style="">May 2013</th>
                                            <th style="">Jun 2013</th>
                                        </tr>
                                        <tr class="Presentation">
                                            <td>Presentation</td>
                                            <td class="Jan2013"></td>
                                            <td class="May2013"></td>
                                            <td class="Jun2013"></td>
                                        </tr>
                                        <tr class="Relevant History">
                                            <td>Relevant History</td>
                                            <td class="Jan2013"></td>
                                            <td class="May2013"></td>
                                            <td class="Jun2013"></td>
                                        </tr>
                                        <tr class="Examination">
                                            <td>Examination</td>
                                            <td class="Jan2013"></td>
                                            <td class="May2013"></td>
                                            <td class="Jun2013"></td>
                                        </tr>
                                        <tr class="Laboratory findings">
                                            <td>Laboratory findings</td>
                                            <td class="Jan2013"></td>
                                            <td class="May2013"></td>
                                            <td class="Jun2013"></td>
                                        </tr>
                                        <tr class="Management">
                                            <td>Management</td>
                                            <td class="Jan2013"></td>
                                            <td class="May2013"></td>
                                            <td class="Jun2013"></td>
                                        </tr>
                                        <tr class="Question">
                                            <td>Question</td>
                                            <td class="Jan2013"></td>
                                            <td class="May2013"></td>
                                            <td class="Jun2013"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="profile">
                            <table class="table table-bordered" style="margin-bottom: 0px;">
                                <thead>
                                </thead>
                            </table>
                            <div class="table-responsive" style="height: 350px; overflow: auto;">
                                <table class="table table-bordered">
                                    <tbody id="caseSetting2">
                                        <tr>
                                            <th>Image ID</th>
                                            <th style="">Apr 2012</th>
                                            <th style="">Jun 2013</th>
                                            <th style="">Aug 2013</th>
                                            <th style="">Oct 2013</th>
                                            <th style="">Apr 2014</th>
                                        </tr>
                                        <tr class="Presentation">
                                            <td>Presentation</td>
                                            <td class="Apr2012"></td>
                                            <td class="Jun2013"></td>
                                            <td class="Aug2013"></td>
                                            <td class="Oct2013"></td>
                                            <td class="Apr2014"></td>
                                        </tr>
                                        <tr class="Relevant History">
                                            <td>Relevant History</td>
                                            <td class="Apr2012"></td>
                                            <td class="Jun2013"></td>
                                            <td class="Aug2013"></td>
                                            <td class="Oct2013"></td>
                                            <td class="Apr2014"></td>
                                        </tr>
                                        <tr class="Examination">
                                            <td>Examination</td>
                                            <td class="Apr2012"></td>
                                            <td class="Jun2013"></td>
                                            <td class="Aug2013"></td>
                                            <td class="Oct2013"></td>
                                            <td class="Apr2014"></td>
                                        </tr>
                                        <tr class="Laboratory findings">
                                            <td>Laboratory findings</td>
                                            <td class="Apr2012"></td>
                                            <td class="Jun2013"></td>
                                            <td class="Aug2013"></td>
                                            <td class="Oct2013"></td>
                                            <td class="Apr2014"></td>
                                        </tr>
                                        <tr class="Management">
                                            <td>Management</td>
                                            <td class="Apr2012"></td>
                                            <td class="Jun2013"></td>
                                            <td class="Aug2013"></td>
                                            <td class="Oct2013"></td>
                                            <td class="Apr2014"></td>
                                        </tr>
                                        <tr class="Question">
                                            <td>Question</td>
                                            <td class="Apr2012"></td>
                                            <td class="Jun2013"></td>
                                            <td class="Aug2013"></td>
                                            <td class="Oct2013"></td>
                                            <td class="Apr2014"></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" onclick="UpdateImageStatus();" data-dismiss="modal"
                        style="margin-top: 0px;">
                        Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <style type="text/css">
        .RoadImg {
            transition: ease-out;
            transition-duration: 1s;
        }
    </style>

    <script type="text/javascript" src="js/jquery.touchSwipe.js"></script>

    <script src="js/touch.timeline.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/bootstrap-switch.min.js"></script>

    <script src="js/jquery.dlmenu.js"></script>

    <script src="js/pagetransitions.js"></script>

    <script type="text/javascript">



        $(document).ready(function () {

            if (getParameterByName("type") == "2") {
                sessionStorage.Moderator = true;
            }
            if (getParameterByName("show") == "1") {
                $('#StartContent').show();
            }
            else {
                $('#TitleContent').show();
            }


            if (sessionStorage.Moderator != undefined && sessionStorage.Moderator) {
                $("#ActivateBtnMod").show();
            }

            positionLogo();
            $(".li_menu").click(function (event) {
                if ($(this).hasClass("disabled"))
                    return

                $(".li_menu").removeClass("active");
                $(this).addClass("active");
            });
            $('input[name="my-checkbox"]').bootstrapSwitch();
        });

        function onclickprev(ele) {
            //var currentContent = $(ele).parent().find("#currentContent").val();
            //var totalElements = $(ele).parent().find(".conClass");
            //if (parseInt(currentContent) > 1) {
            //    //if (parseInt(currentContent) == totalElements.length) {
            //    //    $(ele).parent().find("#btnnext").attr("class", "");
            //    //}

            //    //$(ele).parent().find(".conClass").hide();
            //    //$(ele).parent().find("#Content" + (parseInt(currentContent) - 1)).fadeIn("slow");
            //    $(ele).parent().find("#currentContent").val((parseInt(currentContent) - 1));

            //}
            //if ((parseInt(currentContent) - 1) == 1) {
            //    $(ele).parent().find("#btnprev").attr("class", "colorGray");
            //}

        }


        function onclicknext(ele) {
            //var currentContent = $(ele).parent().find("#currentContent").val();
            //var totalElements = $(ele).parent().find(".conClass");
            //if (parseInt(currentContent) < totalElements.length) {
            //    //$(ele).parent().find(".conClass").hide();
            //    //$(ele).parent().find("#Content" + (parseInt(currentContent) + 1)).fadeIn("slow");
            //    $(ele).parent().find("#currentContent").val((parseInt(currentContent) + 1));
            //    $(ele).parent().find("#btnprev").removeClass("colorGray");
            //    if ((parseInt(currentContent) + 1) == totalElements.length) {
            //        $(ele).parent().find("#btnnext").attr("class", "colorGray");
            //    }
            //}
        }


        function positionLogo() {
            document.getElementById("logo").style.left = (window.innerWidth) - 239 + "px";
        }
        function changecontent(ele, step) {
            var currentID = 1;
            var nextID = 1;
            var elements = $(ele).parent().parent().find(".content");
            for (var i = 0; i < elements.length; i++) {
                if ($(elements[i]).css('display') != 'none')
                    currentID = $(elements[i]).data("value");
            }

            if (step == 'next') {
                if (currentID < elements.length)
                    nextID = parseInt(currentID) + 1;
                else
                    return;
            }
            else {
                if (currentID > 1)
                    nextID = parseInt(currentID) - 1;
                else
                    return;
            }

            $(ele).parent().parent().find('#content' + currentID).fadeOut("slow", function () {
                $(ele).parent().parent().find('#content' + nextID).css('display', 'block');
            });

        }
    </script>

    <script src="js/raphael-min.js"></script>

    <script src="js/raphael-guides.js"></script>

    <script>
        var img1, img2, img3, img4;
        var imgArray = new Array();
        var pathArray = new Array();
        var path1, path2, path3, path4, path;
        var line;
        var lineArray = new Array();
        $(function () {




            LoadXml();
            //img1 = p.image("img/logo.png", -10, 0, 56, 58);
            //$(img1.node).attr("id", "img");
            //$(img1.node).attr("class", "imgDisabled");
            //img1.attr({ guide: path1, along: 0.2 });
            //img1.click(function () { $('#myModal').modal('show'); $('#ImgContent').html($("#ImgCont1").html()); });


            ////img1.mouseover(function (e) {
            ////    img1.animate({ scale: 1.0 }, 1000, "ease-out");
            ////});
            ////img1.mouseout(function (e) {
            ////    img1.animate({ scale: img1.lastScale }, 1000, "ease-out");
            ////});

            //img2 = p.image("img/logo.png", 0, 0, 56, 58);
            //img2.attr({ guide: path2, along: 0.2 });
            //img2.click(function () { $('#myModal').modal('show'); $('#ImgContent').html($("#ImgCont2").html()); });

            //img3 = p.image("img/logo.png", 0, 0, 56, 58);
            //img3.attr({ guide: path3, along: 0.2 });
            //img3.click(function () { $('#myModal').modal('show'); $('#ImgContent').html($("#ImgCont3").html()); });

            //img4 = p.image("img/logo.png", 0, 0, 56, 58);
            //img4.attr({ guide: path4, along: 0.2 });
            //img4.click(function () { $('#myModal').modal('show'); $('#ImgContent').html($("#ImgCont4").html()); });

            //var circ1 = p.circle(0, 0, 10).attr(black);

            //var circ2 = p.circle(0, 0, 10).attr(black);
            //var circ3 = p.circle(0, 0, 10).attr(black);
            //var circ4 = p.circle(0, 0, 10).attr(black);

            //var circ2 = p.circle(0, 0, 10).attr(black);

            //$(document).on("click", function () {
            //    // animate along a path


            //    //circ2.attr({ guide: path3, along: 1 })
            //    //  .animate({ along: 0 }, 3000, "ease-out");
            //});



        });

        window.onload = function () {
            onLoadDisablePage();
            document.getElementById("range").addEventListener("change", function (e) {
                //document.querySelector(".range").textContent = e.currentTarget.value;

                var time = 1000;
                var length = (parseInt(e.currentTarget.value)) * 25;
                //                console.log(length);

                for (var i = 0; i < imgArray.length; i++) {
                    imgArray[i].animate({ along: length }, time, "ease-out");

                }
                for (var j = 0; j < lineArray.length; j++) {
                    lineArray[j].animate({ along: length }, time, "ease-out");
                }

                //timeline 
                UpdateTimeLine(parseInt(e.currentTarget.value));
            });
        }

        function SlideSlider(value) {
            var time = 1000;
            var length = (parseInt(value)) * 25;
            //                console.log(length);

            //imgArray[0].animate({ along: length }, time, "ease-out");

            for (var i = 0; i < imgArray.length; i++) {
                imgArray[i].animate({ along: length }, time, "ease-out");

            }
            for (var j = 0; j < lineArray.length; j++) {
                lineArray[j].animate({ along: length }, time, "ease-out");
            }

            //timeline 
            UpdateTimeLine(value);

        }

        function UpdateTimeLine(value) {
            $("#timeline-event-node-1").parent().parent().find('.timeline-title').css('margin-left', '0px');
            $("#range").val(value);
            if (parseInt(value) > 24 && parseInt(value) <= 40) {
                $("#timeline-event-node-1").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-1").addClass('selected-event');

                $("#timeline-event-node-1").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-1").parent().find('.timeline-title').addClass('arrow_box');

                $("#timeline-event-node-1").parent().find('.arrow_box').css('margin-left', '-12px');
                $(".timeline-draggable").css("left", "348px");
            }
            else if (parseInt(value) <= 24) {
                $("#timeline-event-node-0").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-0").addClass('selected-event');

                $("#timeline-event-node-0").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-0").parent().find('.timeline-title').addClass('arrow_box');

                $("#timeline-event-node-0").parent().find('.arrow_box').css('margin-left', '-32px');
                $(".timeline-draggable").css("left", "0px");

            }
            else {
                $("#timeline-event-node-2").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-2").addClass('selected-event');

                $("#timeline-event-node-2").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-2").parent().find('.timeline-title').addClass('arrow_box');
                $("#timeline-event-node-2").parent().find('.arrow_box').css('margin-left', '0px');
                $(".timeline-draggable").css("left", "697px");
            }
        }

        $(".ImgCCC").swipe({
            //Generic swipe handler for all directions
            swipe: function (event, direction, distance, duration, fingerCount, fingerData) {
                if (direction == "left")
                    $(event.currentTarget).find(".btnnext").click();
                else if (direction == "right")
                    $(event.currentTarget).find(".btnprev").click();


            },
            //Default is 75px, set to 0 for demo so any distance triggers swipe
            threshold: 30
        });



        $("#animationHolder").swipe({
            //Generic swipe handler for all directions
            swipe: function (event, direction, distance, duration, fingerCount, fingerData) {
                if (direction == "up")
                    $("#range").val(parseInt($("#range").val()) - 5);
                else if (direction == "down")
                    $("#range").val(parseInt($("#range").val()) + 5);

                SlideSlider($("#range").val());
            },
            //Default is 75px, set to 0 for demo so any distance triggers swipe
            threshold: 20
        });


        function LoadXml() {
            $.ajax({
                type: "GET",
                url: "data.xml",
                dataType: "xml",
                success: function (xml) {
                    loadImageData(xml);
                }
            });
        }


        var _gitems;

        function loadImageData(xml) {
            var holder = document.getElementById("animationHolder");
            var p = new Raphael("animationHolder", "100%", "100%");

            // give raphael guide and along custom attributes
            p.addGuides();

            var white = { stroke: "none" };
            var black = { stroke: "none" };

            var path;

            //var path1 = p.path("M 100 100 Q 200 500 300 100").attr(white);

            /*var path2 = p.path("M 300 100 \
                           R 350 150 \
                           400 50 \
                           450 100 \
                           500 40 \
                           550 100").attr(white);*/
            pathArray[7] = p.path("M 850 750 \
                                   L 850 487 \
                                   Q 550 380 468 0\
                                   L 478 -150 \
                           ").attr(black);

            pathArray[6] = p.path("M 703 750 \
                                   L 703 487 \
                                   Q 480 320 448 0\
                                   L 448 -150 \
                           ").attr(black);

            pathArray[5] = p.path("M 613 750 \
                                   L 613 487 \
                                   Q 450 330 414 0\
                                   L 414 -150 \
                           ").attr(black);
            pathArray[4] = p.path("M 465 750 \
                                   L 465 487 \
                                   Q 400 330 384 0\
                                   L 384 -150 \
                           ").attr(black);

            pathArray[3] = p.path("M 320 750\
                                   L 320 487 \
                                   Q 355 330 350 0\
                                   L 350 -150 \
                           ").attr(black);

            pathArray[2] = p.path("M 160 750 \
                                   L 160 487 \
                                   Q 325 305 320 0\
                                   L 320 -150\
                           ").attr(black);
            pathArray[1] = p.path(" M 0 750 \
                                    L 0 487 \
                                    Q 270 330 290 0\
                                    L 290 -150\
                           ").attr(white);
            pathArray[0] = p.path("M 357 550 \
                           L 375 -150\
                           ").attr(black);


            var pathName = ["path0", "path1", "path2", "path3", "path4", "path5", "path6", "path7"];

            var items = $(xml).find('element');
            _gitems = items;
            var request = new GetImageData();
            var result = DoService(request);
            var html = "";

            for (var i = 0; i < items.length; i++) {
                var element = items[i];
                if (element.getAttribute("type") == "image") {
                    var Imgpath = element.getAttribute("path");
                    var point = pathArray[Imgpath].getPointAtLength(0);
                    //                    console.log(point.x + "," + point.y);
                    var image = p.image(element.getAttribute("source"), 0, 0, 47, 64);

                    var ImageID = element.getAttribute("id");
                    $(image.node).attr("id", ImageID);
                    $(image.node).attr("class", "RoadImg");
                    for (var index = 0; index < result.length; index++) {
                        if (result[index].ImageID == ImageID && !result[index].Status) {
                            $(image.node).attr("class", "disabled");
                            $(image.node).attr("href", element.getAttribute("dsource"));
                        }
                    }

                    image.attr({ guideLength: pathArray[Imgpath].getTotalLength(), guideName: pathName[Imgpath], guide: pathArray[Imgpath], along: parseFloat(element.getAttribute("along")), distance: parseInt(element.getAttribute("distance")), type: "img" });
                    $(image.node).attr("onclick", "onImageClick(this, '" + element.getAttribute("dataID") + "')");
                    $(image.node).attr("onmousemove", "onImageOver(this," + element.getAttribute("path") + ")");
                    $(image.node).attr("onmouseout", "onImageOut(this," + element.getAttribute("path") + ")");

                    imgArray.push(image);
                }
                else if (element.getAttribute("type") == "line") {
                    var Imgpath = element.getAttribute("path");
                    var line = p.rect(element.getAttribute("x"), element.getAttribute("y"), element.getAttribute("a"), element.getAttribute("b"));
                    var text = p.text(element.getAttribute("x"), element.getAttribute("y"), element.getAttribute("text"));
                    text.attr({ leftlane: pathArray[1], rightlane: pathArray[6], along: parseFloat(element.getAttribute("along")), distance: parseInt(element.getAttribute("distance")), type: "text" });
                    text.attr({ "font-size": 16 });
                    line.attr({ fill: "black" });
                    line.attr({ leftlaneName: pathName[1], rightlaneName: pathName[6], leftlaneLength: pathArray[1].getTotalLength(), rightlaneLength: pathArray[6].getTotalLength(), leftlane: pathArray[1], rightlane: pathArray[6], along: parseFloat(element.getAttribute("along")), distance: parseInt(element.getAttribute("distance")), type: "line" });

                    lineArray.push(line);
                    lineArray.push(text);
                }

            }
        }

        setInterval(function () { UpdateImageStatus(); }, 15000);

        function UpdateImageStatus() {
            var request = new GetImageData();
            var result = DoService(request);

            var items = _gitems;
            for (var i = 0; i < items.length; i++) {
                var element = items[i];
                if (element.getAttribute("type") == "image") {

                    var ImageID = element.getAttribute("id");
                    for (var index = 0; index < result.length; index++) {
                        if (result[index].ImageID == ImageID && !result[index].Status) {
                            $("#" + ImageID).attr("class", "disabled");
                            $("#" + ImageID).attr("href", element.getAttribute("dsource"));
                        }
                        else if (result[index].ImageID == ImageID && result[index].Status) {
                            $("#" + ImageID).attr("class", "RoadImg");
                            $("#" + ImageID).attr("href", element.getAttribute("source"));
                        }
                    }
                }
            }

        }



        function onImageOut(ele, id) {
            if (!$(ele).is(".disabled")) {
                var element = $(document).find(".roadMnu");
                $(element).removeClass("gray");
            }
        }

        function onImageOver(ele, id) {
            if (!$(ele).is(".disabled")) {
                var element = $(document).find(".roadMnu");
                var pathID = parseInt(id) - 1;
                for (j = 0; j < element.length; j++) {
                    if (j == pathID)
                        $(element[j]).removeClass("gray");
                    else
                        $(element[j]).addClass("gray");
                }

            }
        }

        function onImageClick(ele, id) {
            if (!$(ele).is(".disabled")) {
                $('.ImgCCC').hide();
                $('#ShowDiv').show();
                $('#' + id).fadeIn('show');
            }
        }

        function onclickClose() {
            $('#ShowDiv').fadeOut('slow', function () {
                var elements = $(document).find(".ImgCCC");
                for (var i = 0; i < elements.length; i++) {
                    if ($(elements[i]).css("display") == "block") {
                        $(elements[i]).find('.pt-page-current').removeClass('pt-page-current');
                        $(elements[i]).find('#Content1').addClass('pt-page-current');
                        $(elements[i]).find('#currentContent').val(1);
                        $(elements[i]).find("#btnnext").find("span").css("background-color", "rgba(169, 169, 169, 0.99)");

                        $(elements[i]).find("#btnnext").find("span").css("color", "black");
                        $(elements[i]).find("#btnprev").find("span").css("background-color", "transparent");
                        $(elements[i]).find("#btnprev").find("span").css("color", "transparent");
                    }
                }
            });



        }
    </script>

</body>
</html>
