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
        <img src="img/Header.jpg" style="height: 100px; width: 1024px; top: 0px; z-index: 1; float: left;" />
        <img src="img/Transexpert-logo.png" id="logo" style="height: 72px; float: left; width: 239px; top: 15px; z-index: 1; left: 650px; position: absolute;" />
    </div>
    <div class="container" id="content" style="height: 100%; width: 100%; top: 100px; position: fixed; background-image: url('img/background.jpg'); background-size: 100% 100%;">
        <div style="width: 717px; margin: 0 auto;">
            <div id="timeSlider" style="width: 717px; position: fixed; z-index: 111; display: none;">
                <div class="timeline-wrap">
                    <div class="timeline-event" data-value="25" data-margin="-32px">
                        <div class="timeline-title arrow_box">Apr 2013</div>

                    </div>
                    <div class="timeline-event" data-value="40" data-margin="-12px">
                        <div class="timeline-title">May 2013</div>

                    </div>
                    <div class="timeline-event" data-value="55" data-margin="0px">
                        <div class="timeline-title">Aug 2013</div>

                    </div>

                    <div class="timeline-event" data-value="67" data-margin="0px">
                        <div class="timeline-title">Oct 2013</div>

                    </div>
                    <div class="timeline-event" data-value="76" data-margin="0px">
                        <div class="timeline-title">Apr 2014</div>

                    </div>

                </div>

            </div>
        </div>
        <div id="" class="">
            <div style="width: 100%; height: 100%;">
                <!--<h1><span>A collection of</span><strong>Page</strong> Transitions</h1>-->
                <%--  <div id="StartContent" style="text-align: center; margin-top: 160px;">
                    <button type="button" class="casebtn" onclick="$('#StartContent').hide(); $('#MainContent').show();  $('#timeSlider').show(); startTimeline();">
                        Case study 1
                    </button>
                    <button type="button" class="casebtn" onclick="$('#StartContent').hide(); $('#Maincontent2').show();  $('#timeSlider').show(); startTimeline();">
                        Case study 2
                    </button>
                </div>--%>
                <div id="Objective" style="padding: 20px; margin-top: 50px;">
                    <h2>Objectives
                    </h2>
                    <ul style="font-size: 19px;">
                        <li>Understand the role of everolimus in de novo kidney transplantation

                        </li>
                        <li>Examine the safety profile of everolimus

                        </li>
                        <li>Understand the pathophysiology and management of some potential adverse events

                        </li>
                    </ul>

                    <button type="button" style="position: fixed; right: 0; bottom: 0; margin-right: 100px; margin-bottom: 100px;"
                        onclick="$('#Objective').hide(); $('#Maincontent2').show(); $('#timeSlider').show();       startTimeline();   " class="btn btn-custom">
                        Continue</button>
                </div>

                <div id="Maincontent2" style="display: none;">
                    <img src="img/home.png" style="width: 44px; position: fixed; right: 0; margin-right: 25px; cursor: pointer;" onclick="location.href='default.aspx?show=1'" />
                    <%--<div style="position:absolute;background-image: url(img/legendbuttont.png); width:323px; height:152px; margin-top:50px; margin-left:5px;">           
                            <div style="max-width:300px;">
                            <img src="img/legend.png" style="height:50px; width:40px; margin-left: 25px; margin-top:20px;z-index:1;" />
                                <p style="font-size:12px; margin-left:80px; margin-top:-45px;z-index:1;">Enabled icon you can view the presentation</p>
                            <img src="img/legend_disable.png" style="height:50px; width:40px; margin-left: 25px; margin-top:15px;z-index:1;" />
                                <p style="font-size:12px; margin-left:80px; margin-top:-45px;z-index:1;">Disabled icon only speaker can able to enable</p>
                           </div>
                       </div>--%>

                    <div id="animationHolder" style="width: 717px; height: 489px; background-image: url('img/road.png'); margin: 0 auto; margin-top: 25px;">
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
                    <input id="range" type="range" min="20" max="80" value="20" style="display: none;" />

                    <div id="ShowDiv" style="width: 100%; height: 100%; z-index: 9999999; background-color: rgba(85, 85, 85, 0.76); position: absolute; top: 0; display: none;">
                        <div style="margin: 0 auto; overflow-x: hidden; overflow-y: auto; background-color: rgba(241, 241, 241, 1); box-shadow: 1px 2px 7px -1px black; width: 90%; margin-top: 50px; height: 75%;">
                            <div style="text-align: right;">
                                <span class="glyphicon glyphicon-remove" style="margin: 10px; cursor: pointer;" onclick="onclickClose();"></span>
                            </div>
                            <div id="ImgCont2c1" class="ImgCCC" style="display: none;">
                                <p class="headingtxt">
                                    <strong><u>Presentation:</u></strong>
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>A 56 year old female is referred for evaluation of increased serum creatinine and
                                        transplantation </li>
                                </ul>
                            </div>
                            <div id="ImgCont2c2" class="ImgCCC pt-perspective" style="">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Past history:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Hypertension; diagnosed 10 years ago</li>
                                        <li>Membranoproliferative glomerulonephritis diagnosed in 2009</li>
                                        <li>Peritoneal dialysis since 2010</li>
                                    </ul>
                                </div>
                                <div id="Content2" class="pt-page" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Other relevant history:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li><strong><u>Family/ Occupational/ Social History:</u></strong>
                                            <ul>
                                                <li>Father and mother had hypertension; died age 50 and 70 years respectively</li>
                                                <li>Never smoked or consumed alcohol</li>
                                                <li>Retired bank employee</li>
                                            </ul>
                                        </li>
                                        <li><strong><u>Current Medications:</u></strong>
                                            <ul>
                                                <li>Telmisartan 40 mg once daily</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>

                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">
                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>

                                </div>
                            </div>
                            <div id="ImgCont2c3" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Examination:</u></strong>
                                </p>
                                <ul style="width: 270px; margin: 0 auto; margin-top: 26px;">
                                    <li>Height: 5’ 4“ </li>
                                    <li>Weight: 82 kg</li>
                                    <li>BMI: 31 </li>

                                    <li>Blood pressure: 135/90 mm Hg</li>
                                    <li>Cardiac exam: normal </li>
                                    <li>Peripheral pulses: normal</li>
                                    <li>No organomegaly</li>
                                    <li>Bilateral pedal edema</li>
                                </ul>
                            </div>
                            <div id="ImgCont2c4" class="ImgCCC" style="">
                                <div>
                                    <p class="headingtxt">
                                        <strong><u>Laboratory findings:</u></strong>
                                    </p>
                                    <div style="width: 39%; position: relative; margin-left: 100px;">

                                        <ul style="margin-left: 60px;">
                                            <li>HB: 8g/dL</li>
                                            <li>Serum creatinine: 4.9 mg/dL</li>
                                            <li>Blood Urea Nitrogen: 120 mg/dL</li>
                                            <li>Serum pottassium: 7.6 mmol/L</li>
                                            <li>Serum calcium: 1.6 mmol/L</li>
                                            <li>eGFR: 10 mL/min/1.73 m2</li>
                                            <li>Total urinary protein: 0.7 g/24 hr</li>
                                            <li>Resting ECG: left axis deviation, otherwise normal</li>
                                            <li>FSG: 100 mg/dL</li>

                                            <li>HbA1C: 6.5%</li>

                                        </ul>
                                    </div>
                                    <div style="width: 47%; float: right; position: relative; margin-top: -325px;">
                                        <ul style="margin-left: 60px; margin-top: 42px;">
                                            <li style="font-size: 14px;">Lipid panel: 
                                                <ul>
                                                    <li>TC: 153 mg/dL</li>
                                                    <li>TG: 220 mg/dL</li>
                                                    <li>HDL-C: 31 mg/dL</li>
                                                    <li>LDL-C: 80 mg/dL </li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <p style="margin-left: 60px; margin-top: 120px; font-size: 10px;">FSG, fasting serum glucose; BUN, blood urea nitrogen; eGFR, estimated glomerular filtration rate; ALT, Alanine transaminase; HbA1C, glycosylated hemoglobin; UA, urinalysis; TSH, thyroid stimulating hormone; ECG, electrocardiography; TC, total cholesterol; TG, triglycerides; HDL-C, high density lipoprotein cholesterol; LDL-C, low density lipoprotein cholesterol; PRA, panel reactive antibody  </p>
                                </div>
                            </div>
                            <div id="ImgCont2c5" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Kidney transplantation:</u></strong>
                                </p>
                                <ul style="width: 420px; margin: 0 auto;">
                                    <li>Deceased donor (brain dead, 64-yr-old) KT</li>
                                    <li>Immediate function</li>
                                    <li>Serum Creatinine reduced and stable at 2.0 mg/dl </li>
                                    <li>Patient discharged on day 9 after surgery</li>
                                    <li style="margin-top: 20px;">Basiliximab on day 0 and day 4</li>
                                    <li>Cyclosporine trough level 100-200 ng/mL </li>
                                    <li>Everolimus (Certican®) 0.75 mg/12 h since day 1;</li>
                                    <li>Steroids</li>
                                </ul>
                                <p style="text-align: center; margin-top: 200px; font-size: 10px;">Zortress® Prescribing Information (updated Feb 2013). Available at: http://www.pharma.us.novartis.com/products/zortress.shtml</p>
                            </div>
                            <div id="ImgCont2c6" class="ImgCCC pt-perspective" style="">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this)" id="btnprev" class="colorGray btnprev">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" data-value="1" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>
                                    <p style="margin-left: 40px; font-size: 18px;">
                                        The recommended therapeutic range for cyclosporine when administered along with
                                        everolimus beyond 1 month of transplantation is?
                                    </p>
                                    <div style="padding-top: 10px; padding-left: 20px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QuestionID" value="5" />
                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Acute graft rejection" id="radio16"
                                                    class="css-checkbox" />
                                                <label for="radio16" class="css-label radGroup1">
                                                    100-200 ng/mL</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Delayed graft functioning (DGF)" id="radio17"
                                                    class="css-checkbox" />
                                                <label for="radio17" class="css-label radGroup1">
                                                    75-150 ng/mL</label><br />
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Infection" id="radio18" class="css-checkbox" />
                                                <label for="radio18" class="css-label radGroup1">
                                                    50-100 ng/mL</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI nephrotoxicity" id="radio19" class="css-checkbox" />
                                                <label for="radio19" class="css-label radGroup1">
                                                    25-50 ng/mL</label>
                                            </p>
                                        </div>

                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                    <div style="width: 100%; text-align: right;">
                                        <input type="hidden" value="1" class="QID" />
                                        <input id="imgcont2c6but1" onclick="onclickAnswer(this);" class="btn btn-custom"
                                            type="button" value="Submit" style="width: 100px; margin-right: 100px;" />
                                    </div>
                                </div>
                                <div id="Content2" class="pt-page" data-value="1" style="float: left; text-align: center;">
                                    <p class="headingtxt" style="margin-left: 0px;">
                                        <strong><u>Recommended therapeutic ranges of cyclosporine when administered with everolimus:</u></strong>
                                    </p>

                                    <img src="img/CaseStudy2/Picture1.png" style="margin-top: 30px;" />
                                    <p style="margin-top: 120px; font-size: 10px;">Zortress® Prescribing Information (updated Feb 2013). Available at: http://www.pharma.us.novartis.com/products/zortress.shtml.</p>

                                </div>

                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">
                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>

                                </div>
                            </div>
                            <div id="ImgCont2c7" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Wound complications:</u></strong>
                                </p>
                                <ul style="margin-left: 60px;">
                                    <li>4 weeks after the transplant the patient presented with dehiscence of the wound
                                        and clear discharge</li>
                                    <li>Examination revealed superficial wound dehiscence</li>
                                    <li>Mild oedema, redness and induration of incision site</li>
                                </ul>
                            </div>
                            <div id="ImgCont2c8" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Lab tests:</u></strong>
                                </p>
                                <ul style="margin-left: 60px; width: 314px; margin: 0 auto; margin-top: 24px;">
                                    <li>CBC normal</li>
                                    <li>Blood culture and wound culture did not reveal any infection</li>
                                </ul>
                            </div>
                            <div id="ImgCont2c9" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Management:</u></strong>
                                </p>
                                <ul style="margin-left: 60px; width: 460px; margin: 0 auto; margin-top: 30px;">
                                    <li>Surgical repair of the dehiscence</li>
                                    <li>Steroids tapered and stopped after 1 week</li>
                                    <li>Everolimus dose maintained at 0.75 mg.dL</li>
                                    <li>Cyclosporine dose adjusted for trough level 75-150 ng/mL</li>
                                </ul>
                            </div>
                            <div id="ImgCont2c10" class="ImgCCC pt-perspective" style="">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                        <p>
                                            Which factors could influence wound healing in general in this population?
                                        </p>
                                    </p>
                                    <div style="padding-top: 10px; padding-left: 20px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QuestionID" value="6" />
                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Acute graft rejection" id="radio20"
                                                    class="css-checkbox" />
                                                <label for="radio20" class="css-label radGroup1">
                                                    Age</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Delayed graft functioning (DGF)" id="radio21"
                                                    class="css-checkbox" />
                                                <label for="radio21" class="css-label radGroup1">
                                                    BMI</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Infection" id="radio22" class="css-checkbox" />
                                                <label for="radio22" class="css-label radGroup1">
                                                    Immunosuppressive agents</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI nephrotoxicity" id="radio23" class="css-checkbox" />
                                                <label for="radio23" class="css-label radGroup1">
                                                    Steroids</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI nephrotoxicity" id="radio24" class="css-checkbox" />
                                                <label for="radio24" class="css-label radGroup1">
                                                    Technical factors</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="CNI nephrotoxicity" id="radio25" class="css-checkbox" />
                                                <label for="radio25" class="css-label radGroup1">
                                                    All of the above</label>
                                            </p>
                                        </div>
                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                    <div style="width: 100%; text-align: right;">
                                        <input type="hidden" value="1" class="QID" />
                                        <input id="imgcont2c10but1" onclick="onclickAnswer(this);" class="btn btn-custom"
                                            type="button" value="Submit" style="width: 100px; margin-right: 100px;" />
                                    </div>
                                </div>
                                <div id="Content2" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Pathophysiology of mTORi associated delayed wound healing:</u></strong>
                                    </p>

                                    <img src="img/CaseStudy2/Picture2.png" style="" />
                                    <p style="margin-top: 60px; font-size: 10px;">
                                        mTORI: Mammalian target of rapamycin inhibitors
                                        <br />
                                        Benhadou F et al. EWMA Journal 2013;13(1):20-22
                                    </p>
                                </div>
                                <div id="Content3" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>MMF is a risk factor for wound-healing complications: </u></strong>
                                    </p>
                                    <p style="">
                                        Multivariate analysis of risk factors for a fascial dehiscence or
                                        <br />
                                        incisional hernia after kidney transplant in 2013 patients, 1984–1998
                                    </p>
                                    <img src="img/CaseStudy2/Picture3.png" style="" />
                                    <p style="text-align: center; font-size: 10px;">
                                        Aza, azathioprine; BMI, body mass index; MMF, mycophenolate mofetil; NS, not significant; RR, relative risk.
                                        <br />
                                        Humar A, et al. Transplantation 2001;72:1920–1923.
                                    </p>

                                </div>
                                <div id="Content4" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>CALLISTO: similar incidence of wound-healing events with immediate vs delayed
                                            EVR:</u></strong>
                                    </p>

                                    <img src="img/CaseStudy2/Picture4.png" style="margin-top: 30px;" />
                                    <p style="text-align: center; font-size: 10px;">
                                        *Immediate EVR , Day 1; **Delayed EVR , Week 5. EVR, everolimus.
                                        <br />
                                        Dantal J, et al. Transpl Int. 2010;23:1084–1093.
                                    </p>
                                </div>
                                <div id="Content5" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>A2309: similar incidence of wound-healing events with de novo everolimus
                                            1.5 mg and MPA:</u></strong>
                                    </p>

                                    <img src="img/CaseStudy2/Picture5.png" style="" />
                                    <ul style="text-align: left;">
                                        <li style="margin-top: 30px;">The approved dose of everolimus in combination with cyclosporine for the prophylaxis of organ rejection in adult patients at low to moderate immunological risk receiving an allogeneic renal transplant is 1.5 mg</li>
                                    </ul>
                                    <p style="margin-top: 60px; font-size: 10px;">
                                        EVR, everolimus; MPA, mycophenolic acid.
                                            <br />
                                        Tedesco-Silva Jr H et al. Am J Transplant 2010;10:1401–13.
                                    </p>
                                </div>
                                <div id="Content6" class="pt-page" style="">
                                    <p class="headingtxt">
                                        <strong><u>Wound events/lymphocele formation with de novo EVR:</u></strong>
                                    </p>
                                    <p style="text-align: center; color: #4B84C2; font-size: 16px;">Pooled data from 3 randomized controlled trials</p>
                                    <img src="img/CaseStudy2/Picture6.png" style="margin-top: -20px;" />

                                </div>
                                <div id="Content7" class="pt-page" style="">
                                    <p class="headingtxt">
                                        <strong><u>Safety profile of everolimus:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px; width: 500px; margin: 0 auto; margin-top: 30px;">
                                        <li>Other adverse events reported with use of everolimus include<sup>1</sup>
                                            <ul>
                                                <li>Peripheral edema</li>
                                                <li>Hyperlipidemia</li>
                                                <li>Stomatits/mouth ulceration</li>
                                                <li>Proteinuria</li>
                                            </ul>
                                        </li>
                                        <li>Most adverse events are present for a short time after the introduction of everolimus,
                                            and are manageable<sup>2</sup></li>
                                    </ul>
                                    <p style="font-size: 10px; width: 600px; text-align: left; margin: 0 auto; margin-top: 140px;">
                                        1. Zortress® Prescribing Information (updated Feb 2013). Available at: http://www.pharma.us.novartis.com/products/zortress.shtml.
                                        <br />
                                        2. Holdaas H1, Midtvedt K, Åsberg A. A drug safety evaluation of everolimus in kidney
                                            transplantation. Expert Opin Drug Saf. 2012 Nov;11(6):1013-22.
                                    </p>
                                </div>
                                <div id="Content8" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt" style="margin-left: 0px;">
                                        <strong><u>Proteinuria in kidney transplantation:</u></strong>
                                    </p>
                                    <p style="">Proteinuria is a common finding in the post-transplant setting</p>

                                    <img src="img/CaseStudy2/s21table1.png" style="width: 580px;" />
                                </div>
                                <div id="Content9" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Proteinuria and everolimus:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/s22graph1.png" style="width: 580px;" />
                                    <p style="text-align: center; margin-top: -10px; font-size: 10px;">
                                        aHR for proteinuria >300 mg/g.<br />
                                        BMI, body mass index; Cr, creatinine; EVR, everolimus; HR, hazard ratio; MPA, mycophenolic acid; Pr, protein.<br />
                                        Wiseman AC, et al. Am J Transplant. 2013;13:442–449.
                                    </p>
                                </div>
                                <div id="Content10" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Proposed mechanisms involved in mTORi mediated proteinuria:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/s23flowchart1.png" style="width: 580px; margin-top: 30px;" />
                                    <p style="margin-top: 20px; font-size: 10px;">
                                        B. Kaplan et al. Transplantation Reviews  2014;28:126–133.
                                    </p>
                                </div>
                                <div id="Content11" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Proteinuria with everolimus is dose dependent:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/s24table1.png" style="width: 580px; margin-top: 30px;" />
                                    <ul style="margin-left: 60px; text-align: left;">
                                        <li>Everolimus associated with risk of proteinuria compared to MPA</li>
                                        <li>Higher trough concentrations associated with a 1.8 fold increase in hazard</li>
                                        <li>1.5 mg/day and trough levels adjusted to 3-8 ng/mL associated with a non-significant 1.2 fold increase in risk</li>
                                    </ul>
                                    <p style="margin-top: 60px; font-size: 10px;">
                                        Wiseman AC, et al. Am J Transplant. 2013;13:442–449.
                                    </p>
                                </div>
                                <div id="Content12" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Proteinuria and everolimus:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/s25table1.png" style="width: 580px; margin-top: 30px;" />
                                    <p style="text-align: center; margin-top: 20px; font-size: 10px;">
                                        Wiseman AC, et al. Am J Transplant. 2013;13:442–449.
                                    </p>
                                </div>
                                <div id="Content13" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Proteinuria during EVR use:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/s26table1.png" style="width: 580px; margin-top: 15px;" />
                                    <p style="margin-top: 20px; font-size: 10px; text-align: left; margin-left: 30px;">
                                        CAD, chronic allograft dysfunction; CNI, calcineurin inhibitor; EVR, everolimus; mTORi, mammalian target of rapamycin inhibitor.<br />
                                        1.Zortress® Prescribing Information (updated Feb 2013). Available at: http://www.pharma.us.novartis.com/products/zortress.shtml;
                                        <br />
                                        2. Diekmann F, et al.
                                        Transplant Rev (Orlando). 2012;26:27-9;
                                        <br />
                                        3. Diekmann F, et al. Am J Transplant. 2004;4:1869-75;
                                        <br />
                                        4. Cibrik D et al. Transplantation. 2013;95:933-942
                                    </p>
                                </div>
                                <div id="Content14" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>A2309: Tolerability with everolimus + low CNI was comparable to that seen
                                            with standard CNI:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/Picture7.png" style="" />
                                    <p style="text-align: center; font-size: 10px;">
                                        CNI, calcineurin inhibitor; CsA, cyclosporine; MPA, mycophenolic acid.<br />
                                        Tedesco-Silva H et al. ATC 2011
                                    </p>
                                </div>
                                <div id="Content15" class="pt-page" style="">
                                    <p class="headingtxt">
                                        <strong><u>Risk-benefit outcome:</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Strategy for best risk-benefit outcome
                                            <ul>
                                                <li>Everolimus adjusted to maintain a blood concentration of 3-8 ng/mL with</li>
                                                <li>60% reduction in the usual doses of cyclosporine</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <p style="margin-left: 60px; margin-top: 360px; font-size: 10px;">Tedesco-Silva et al. Transplant Research and Risk Management. 2011;3:9–29.</p>
                                </div>

                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">
                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>

                                </div>
                            </div>
                            <div id="ImgCont2c11" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Examination and lab values:</u></strong>
                                </p>
                                <ul style="width: 275px; margin: 0 auto; margin-top: 30px;">


                                    <li>Wound healed completely</li>
                                    <li>Serum creatinine 1.6 mg/dL</li>
                                    <li>Total cholesterol 300 mg/dL</li>
                                    <li>LDL cholesterol 190 mg/dL</li>


                                </ul>
                            </div>
                            <div id="ImgCont2c12" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Management:</u></strong>
                                </p>
                                <ul style="width: 455px; margin: 0 auto; margin-top: 30px;">
                                    <li>Everolimus dose maintained at 0.75 mg/12 hrs</li>
                                    <li>Cyclosporine dose adjusted for trough level 50-100 ng/mL</li>
                                    <li>Atorvastatin 20 mg/day</li>
                                </ul>
                            </div>
                            <div id="ImgCont2c13" class="ImgCCC pt-perspective" style="">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev" style="">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u></u></strong>
                                    </p>
                                    <p>
                                        What could be the cause of hyperlipedemia?
                                    </p>
                                    <div style="padding-top: 10px; padding-left: 20px; float: left;">
                                        <input type="hidden" id="Answer" value="2" />
                                        <input type="hidden" id="QuestionID" value="7" />
                                        <div style="margin-left: 60px;">
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Acute graft rejection" id="radio26"
                                                    class="css-checkbox" />
                                                <label for="radio26" class="css-label radGroup1">
                                                    Common complication following kidney transplantation</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Delayed graft functioning (DGF)" id="radio27"
                                                    class="css-checkbox" />
                                                <label for="radio27" class="css-label radGroup1">
                                                    Use of mTORi</label>
                                            </p>
                                            <p style="margin-top: 20px;">
                                                <input type="radio" name="radiog_lite" value="Infection" id="radio28" class="css-checkbox" />
                                                <label for="radio28" class="css-label radGroup1">
                                                    Both</label>
                                            </p>

                                        </div>
                                    </div>
                                    <div id="AnswerDisp" style="display: none; width: 350px; float: left; height: 350px; padding: 10px; border: 2px solid rgba(0, 0, 0, 0.1); border-radius: 10px; background-color: rgba(255, 255, 255, 0.41); box-shadow: 2px 1px 12px -3px rgba(0, 0, 0, 0.33);">
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                    <div style="width: 100%; text-align: right;">
                                        <input type="hidden" value="1" class="QID" />
                                        <input id="Button1" onclick="onclickAnswer(this);" class="btn btn-custom"
                                            type="button" value="Submit" style="width: 100px; margin-right: 100px;" />
                                    </div>

                                </div>
                                <div id="Content2" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Pathophysiology of mTORi associated hyperlipidemia: </u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/Picture8.png" style="margin-top: 30px;" />
                                    <p style="margin-top: 120px; font-size: 10px;">Busaidy et al. J Clin Oncol. 2012 Aug 10;30(23):2919-28.</p>
                                </div>
                                <div id="Content3" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt">
                                        <strong><u>Hyperlipidemia during everolimus use:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/Picture9.png" style="margin-top: 30px;" />
                                    <p style="margin-top: 120px; font-size: 10px; text-align: left; margin-left: 80px;">
                                        CV, cardiovascular; EVR, everolimus; MACE, major adverse cardiac events; MPA, mycophenolic acid.<br />
                                        1. Badiou S, et al. Curr Diab Rep. 2009;9:30511; 2. Zortress® Prescribing information (updated Feb 2013). Available at:<br />
                                        http://www.pharma.us.novartis.com/products/zortress.shtml. 3. Fischer L, et<br />
                                        al. Am J Transplant. 2012;12:1855–65; 4. Tedesco Silva H Jr, et al. Am J Transplant. 2010;10:1401–13. 
                                    </p>
                                </div>
                                <div id="Content4" class="pt-page" style="text-align: center;">
                                    <p class="headingtxt" style="margin-left:0px;">
                                        <strong><u>Hyperlipidemia during everolimus use:</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/Picture10.png" style="margin-top: 30px;" />
                                    <p style="margin-top: 90px; font-size: 10px;">
                                        1. Tedesco Silva H Jr, et al. Am J Transplant. 2010;10:1401–13. 
                                            <br />
                                        2. Eisen H. Nephrol Dial Transplant. 2006;21(Suppl 3):iii9–13.
                                    </p>
                                </div>

                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">
                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>

                                </div>
                            </div>
                            <div id="ImgCont2c14" class="ImgCCC" style="">
                                <p class="headingtxt">
                                    <strong><u>Month 6:</u></strong>
                                </p>
                                <ul style="margin: 0 auto; width: 425px; margin-top: 30px;">
                                    <li>Examination and lab values
                                        <ul>
                                            <li>Serum creatinine 1.2 mg/dL</li>
                                            <li>LDL cholesterol 110 mg/dL</li>
                                        </ul>
                                    </li>
                                    <li>Management
                                        <ul>
                                            <li>Everolimus 0.75 mg/12 hrs</li>
                                            <li>Cyclosporine dose adjusted for trough level 25-50 ng/mL</li>
                                            <li>Atorvastatin 20 mg/day continued</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div id="ImgCont2c15" class="ImgCCC pt-perspective">
                                <input type="hidden" value="1" id="currentContent" />
                                <div onclick="onclickprev(this);" id="btnprev" class="colorGray btnprev">
                                    <span style="margin-top: 276px;" class="glyphicon glyphicon-chevron-left"></span>
                                </div>
                                <div id="Content1" class="pt-page pt-page-current" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Month 12:</u></strong>
                                    </p>
                                    <ul type='A' style="width: 400px; margin: 0 auto; margin-top: 30px;">
                                        <li>Serum creatinine 1.1 mg/dL</li>
                                        <li>LDL cholesterol 108 mg/dL</li>
                                        <li>Everolimus 0.75 mg/12 hrs</li>
                                        <li>Cyclosporine dose adjusted for trough level 25-50 ng/mL</li>
                                        <li>Atorvastatin 20 mg/day continued
                                            <ul>
                                                <li>No anti HLA antibodies</li>
                                                <li>Serum creatinine stable</li>
                                                <li>No proteinuria</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div id="Content2" class="pt-page" style="text-align: center;">
                                    <p style="color: #1388ab; margin-left: 75px; font-size: 21px;">
                                        <strong><u>EVR: a multifaceted drug with the potential to improve long-term outcomes</u></strong>
                                    </p>
                                    <img src="img/CaseStudy2/Picture11.png" style="" />
                                    <p style="margin-left: 210px; font-size: 10px; text-align: left;">
                                        CNI, calcineurin inhibitor; CMV, cytomegalovirus. EVR, everolimus.<br />
                                        1. Pascual J. Transplantation. 2005;79(Suppl 9):S76–S79;
                                        <br />
                                        2. Eisen H, et al. N Engl J Med. 2003;349:847–858;
                                        <br />
                                        3. Vitko S, et al. Am J Transplant. 2005;5:2521–2530;<br />
                                        4. Tedesco-Silva H, et al. Transpl Int. 2007;20:27–36;
                                        <br />
                                        5. Nashan B, et al. Transplantation. 2004;78:1332–1340;
                                        <br />
                                        6. Nashan B. Transplant Proc. 2001;33:3215–3220;
                                        <br />
                                        7. Majewski M, et al. Transplantation. 2003;75:1710–1717;
                                        <br />
                                        8. Schuler W, et al. Transplantation. 1997;64:36–
                                        42;
                                        <br />
                                        9. Viklicky O, et al. Transplantation. 2000;96:497–502;
                                        <br />
                                        10. Koch M, et al. Transplantation. 2007;83:498–505;<br />
                                        11. Andrés V, et al. Nephrol Dial Transplant. 2006;21(Suppl 3):iii14–17;
                                        <br />
                                        12. Pascual J, et al. Nephrol Dial Transplant. 2006;21(Suppl 3):iii38–41.
                                    </p>
                                </div>
                                <div id="Content3" class="pt-page" style="float: left;">
                                    <p class="headingtxt">
                                        <strong><u>Summary</u></strong>
                                    </p>
                                    <ul style="margin-left: 60px;">
                                        <li>Administer everolimus in combination with basiliximab, reduced dose cyclosporine
                                            or tacrolimus* and corticosteroids as soon as possible after kidney transplantation
                                        </li>
                                        <li>The initial dose of everolimus is 0.75 mg twice daily with CsA
                                            <ul>
                                                <li>The initial dose of cyclosporine to achieve a trough level of 100-200 ng/mL</li>
                                                <li>The initial dose with TAC is 1.5 mg twice daily*</li>
                                            </ul>
                                        </li>
                                        <li>Therapeutic monitoring of both everolimus and CsA is recommended 4-5 days after
                                            initiating treatment or dose change</li>
                                        <li>Everolimus trough concentrations should be in the range of 3-8 ng/mL</li>
                                        <li>Most AEs associated with everolimus can be adequately managed while on therapy and
                                            only a few cases require discontinuation of everolimus</li>
                                    </ul>
                                    <p style="margin-left: 150px; margin-top: 150px; font-size: 10px;">
                                        *Off-label use: Everolimus in combination with TAC is not approved in kidney transplantation patients.
                                    <br />
                                        AE, adverse events; CsA, cyclosporine A; TAC, tacrolimus.
                                    </p>
                                </div>

                                <div onclick="onclicknext(this);" id="btnnext" class="btnnext" style="">
                                    <span style="" class="glyphicon glyphicon-chevron-right"></span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--<h1><span>A collection of</span><strong>Page</strong> Transitions</h1>-->





            </div>
        </div>
        <div style="width: 139px; height: 167px; background-image: url(img/Layer4.png); position: absolute; bottom: 15px; right: 0px;"></div>
    </div>





    <div class="btn-group dropup" style="position: absolute; right: 0; bottom: 0;">
        <button type="button" id="ActivateBtnMod" class="btn btn-primary cusBtn"
            style="background-color: #8dc63f; margin-top: -3px; display: none" onclick="onClickActivateCase();">
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
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
    </div>
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
                        <li><a href="#home" data-toggle="tab">Case 1</a></li>
                        <li class="active"><a href="#profile" data-toggle="tab">Case 2</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane" id="home">
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
                        <div class="tab-pane active" id="profile">
                            <table class="table table-bordered" style="margin-bottom: 0px;">
                                <thead>
                                </thead>
                            </table>
                            <div class="table-responsive" style="height: 350px; overflow: auto;">
                                <table class="table table-bordered">
                                    <tbody id="caseSetting2">
                                        <tr>
                                            <th>Image ID</th>
                                            <th style="">Apr 2013</th>
                                            <th style="">May 2013</th>
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

    <script type="text/javascript" src="js/jquery.touchSwipe.js"></script>

    <script src="js/touch.timeline.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/bootstrap-switch.min.js"></script>

    <script src="js/jquery.dlmenu.js"></script>

    <script src="js/pagetransitions.js"></script>

    <script type="text/javascript">




        $(document).ready(function () {
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
            if (parseInt(value) >= 40 && parseInt(value) < 55) {
                $("#timeline-event-node-1").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-1").addClass('selected-event');

                $("#timeline-event-node-1").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-1").parent().find('.timeline-title').addClass('arrow_box');

                $("#timeline-event-node-1").parent().find('.arrow_box').css('margin-left', '-15px');
                $(".timeline-draggable").css("left", "167px"); // 167 526
            }
            else if (parseInt(value) <= 40) {
                $("#timeline-event-node-0").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-0").addClass('selected-event');

                $("#timeline-event-node-0").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-0").parent().find('.timeline-title').addClass('arrow_box');

                $("#timeline-event-node-0").parent().find('.arrow_box').css('margin-left', '-32px');
                $(".timeline-draggable").css("left", "0px");

            }
            else if (parseInt(value) >= 55 && parseInt(value) < 65) {
                $("#timeline-event-node-2").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-2").addClass('selected-event');

                $("#timeline-event-node-2").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-2").parent().find('.timeline-title').addClass('arrow_box');
                $("#timeline-event-node-2").parent().find('.arrow_box').css('margin-left', '-12px');
                $(".timeline-draggable").css("left", "348px");
            }
            else if (parseInt(value) >= 65 && parseInt(value) < 75) {
                $("#timeline-event-node-3").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-3").addClass('selected-event');

                $("#timeline-event-node-3").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-3").parent().find('.timeline-title').addClass('arrow_box');
                $("#timeline-event-node-3").parent().find('.arrow_box').css('margin-left', '-14px');
                $(".timeline-draggable").css("left", "526px");
            }
            else {
                $("#timeline-event-node-4").parent().parent().find('.selected-event').removeClass('selected-event');
                $("#timeline-event-node-4").addClass('selected-event');

                $("#timeline-event-node-4").parent().parent().find('.arrow_box').removeClass('arrow_box');
                $("#timeline-event-node-4").parent().find('.timeline-title').addClass('arrow_box');
                $("#timeline-event-node-4").parent().find('.arrow_box').css('margin-left', '5px');
                $(".timeline-draggable").css("left", "696px");
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
                url: "datac2.xml",
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
                    image.attr({ guide: pathArray[Imgpath], along: parseFloat(element.getAttribute("along")), distance: parseInt(element.getAttribute("distance")), type: "img" });
                    $(image.node).attr("onclick", "onImageClick(this, '" + element.getAttribute("dataID") + "')");
                    $(image.node).attr("onmousemove", "onImageOver(this," + element.getAttribute("path") + ")");
                    $(image.node).attr("onmouseout", "onImageOut(this," + element.getAttribute("path") + ")");
                    imgArray.push(image);
                }
                else if (element.getAttribute("type") == "line") {
                    var Imgpath = element.getAttribute("path");
                    //  var line = p.rect(element.getAttribute("x"), element.getAttribute("y"), element.getAttribute("a"), element.getAttribute("b"));
                    var text = p.text(element.getAttribute("x"), element.getAttribute("y"), element.getAttribute("text"));
                    text.attr({ leftlane: pathArray[1], rightlane: pathArray[6], along: parseFloat(element.getAttribute("along")), distance: parseInt(element.getAttribute("distance")), type: "text" });
                    text.attr({ "font-size": 16 });
                    var line = p.rect(element.getAttribute("x"), element.getAttribute("y"), element.getAttribute("a"), element.getAttribute("b"));
                    line.attr({ fill: "black" });
                    line.attr({ leftlane: pathArray[1], rightlane: pathArray[6], along: parseFloat(element.getAttribute("along")), distance: parseInt(element.getAttribute("distance")), type: "line" });

                    lineArray.push(line);
                    lineArray.push(text);
                }

            }

            //SlideSlider(20);
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

