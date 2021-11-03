<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Page 1</title>
	<link rel="stylesheet" href="resources/css/chart.css" media="screen">
	<link rel="stylesheet" href="resources/css/bmiPage.css" media="screen">
	<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.29.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Acme:400">
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Page 1">
    <meta property="og:type" content="website">   
  </head>
  <body class="u-body">
         <jsp:include page="nav.jsp"/>
      <section class="u-clearfix u-section-1" id="sec-0a6a">
        <%--*************bmi 계산 폼 ******************** 히든으로 닉보내야함 --%>
      <div class="u-clearfix u-sheet u-sheet-1">
        <h3 class="u-text u-text-1">BMI계산기</h3>
        <p class="u-large-text u-text u-text-grey-50 u-text-variant u-text-2">건강한 체중, 제대로 알기</p>
        <div class="u-container-style u-group u-palette-1-dark-3 u-group-1">
          <div class="u-container-layout u-container-layout-1">
			<fieldset>
	                 <legend>BMI검색</legend>
	                 <div class="bmi-search">
	                     <div class="col-3">
	                         <h3>성별정보</h3>
	                         <dl>
	                             <dt>
	                                 <label for="searchSexFlagM">성별</label>
	                             </dt>
	                             <dd>
<!-- 	                                 <div class="btn-group" data-toggle="buttons"> -->
	                                 <div class="btn-group">
	                                     <label for="searchSexFlagM" class="btn active">
	                                         <input type="radio" title="성별" name="searchSexFlag" id="searchSexFlagM" checked="">
	                                         남자</label>
	                                     <label for="searchSexFlagF" class="btn">
	                                         <input type="radio" title="성별" name="searchSexFlag" id="searchSexFlagF">
	                                         여자</label>
	                                 </div>
	                             </dd>
	                         </dl>
	                     </div>
	                     <div class="col-3">
	                         <h3>신체정보</h3>
	                         <dl>
	                             <dt>
	                                 <label for="searchHeight">키(cm)</label>
	                             </dt>
	                             <dd>
	                                 <input type="text" name="searchHeight" size="10" maxlength="5" value="" id="searchHeight" title="키" style="ime-mode:disabled;" onkeypress="return fn_onlyNumber();">
	                             </dd>
	                             <dt>
	                                 <label for="searchWeight">몸무게(kg)</label>
	                             </dt>
	                             <dd>
	                                 <input type="text" name="searchWeight" size="10" maxlength="5" value="" id="searchWeight" title="몸무게" style="ime-mode:disabled;" onkeypress="return fn_onlyNumber();">
	                             </dd>
	                             <dt>
	                                 <label for="searchAge">나이(세)</label>
	                             </dt>
	                             <dd>
	                                 <input type="text" name="searchAge" size="7" maxlength="5" value="" id="searchAge" title="나이" style="ime-mode:disabled;" onkeypress="return fn_onlyNumber();">
	                             </dd>
	                         </dl>
	                     </div>
	                     <div class="col-3">
	                         <h3>비만도결과</h3>
	                         <dl>
	                             <dt>
	                                 <label for="bmi">체질량지수</label>
	                             </dt>
	                             <dd>
	                                 <input type="text" name="bmi" size="25" maxlength="100" value="" id="bmi" title="체질량지수를 입력해주세요" readonly="">
	                             </dd>
	                             <dd class="ddfull">
	                                 <input type="text" name="bmiTxt" size="25" maxlength="100" value="" id="bmiTxt" title="검색결과를 입력해주세요" readonly="">
	                             </dd>
	                             <dd class="ddfull">
	                                 <a href="javascript:;" class="btn btn-default btn-block" onclick="javascript:fn_reset();">초기화</a>
	                             </dd>
	                         </dl>
	                     </div>
	                 </div>
	                 <a href="javascript:fn_calBMI();" class="btn btn-lightgray btn-block" role="button">계산하기</a>
	             </fieldset>
            
          </div>
        </div>
      </div>
      <%-- **************************************계산폼끝 --%>
    </section>
    <section class="u-clearfix u-section-1" id="sec-0a6a">
      <div class="chart_panel u-clearfix u-sheet u-sheet-1">
      	<div id="chart">
		  <canvas id="myChart"></canvas>
		</div>
		<div id="chart">
		  <canvas id="myChart2"></canvas>
		</div>
		<div id="chart">
		  <canvas id="myChart3"></canvas>
		</div>
		<div id="chart">
		  <canvas id="myChart4"></canvas>
		</div>
		<div id="chart">
		  <canvas id="myChart5"></canvas>
		</div>	
      </div>
    </section>
    <jsp:include page="foot.jsp"/>
    
    
    <%-- *********** chart.js cdn ******************** --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js" 
integrity="sha512-GMGzUEevhWh8Tc/njS0bDpwgxdCJLQBWG3Z2Ct+JGOpVnEmjvNx6ts4v6A2XJf1HOrtOsfhv3hBKpK9kE5z8AQ==" 
crossorigin="anonymous" 
referrerpolicy="no-referrer">
</script>
    <script>
  //차트가져오기
	const ctx = document.getElementById("myChart").getContext("2d");




	//그라디언트만들기
	let gradient = ctx.createLinearGradient(0,0,0,400);
    gradient.addColorStop(0,'rgba(58,123,213,1)');
	gradient.addColorStop(1,'rgba(0,210,255,0.3)');


	//차트에 들어갈 변수생성
	const labels = ["2012","2013","2014","2015","2016","2017","2018","2019","2020"];
	
	const data = {
			labels,
			datasets: [
				{
				//여기서 labels배열에 담긴 순서대로 데이터가담긴다. 배열갯수를 맞춰야함
				data: [211, 326, 165, 350, 420, 370, 500, 375, 415],
				label: "마인크래프트 판매량",
				fill: true,
				backgroundColor: gradient,
                borderColor: "#fff",
                pointBackgroundColor: "rgb(189,195,199)",
                tension: 0.1,
			},
		],
	};
	
	const config = {
			type: "line",
			data: data,
			options: {
                radius:5,
                hitRadius:30,
                hoverRadius:12,
				responsive: true,
                animation:{
                    onComplete: () =>{
                        delayed =true;
                    },
                    delay : (context) =>{
                        let delay = 0;
                        if(context.type === "data" && context.mode === "default"){
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
				scales: {
					y:{ // 왼쪽 좌표에서 표현하고 싶은값을 여기서 구현해야 됨
						ticks: {
							callback: function(value, index){
								return '$' + value + "m";
							},
						},
					},
				},
			},
	};
	
	const myChart = new Chart(ctx, config);
	// *****************************************************
	//차트가져오기
	const ctx2 = document.getElementById("myChart2").getContext("2d");


	const config2 = {
			type: "polarArea",
			data: data,
			options: {
                radius:5,
                hitRadius:30,
                hoverRadius:12,
				responsive: true,
                animation:{
                    onComplete: () =>{
                        delayed =true;
                    },
                    delay : (context) =>{
                        let delay = 0;
                        if(context.type === "data" && context.mode === "default"){
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
				scales: {
					y:{ // 왼쪽 좌표에서 표현하고 싶은값을 여기서 구현해야 됨
						ticks: {
							callback: function(value, index){
								return '$' + value + "m";
							},
						},
					},
				},
			},
	};
	
	const myChart2 = new Chart(ctx2, config2);
	
	// *****************************************************
	//차트가져오기
	const ctx3 = document.getElementById("myChart3").getContext("2d");


	const config3 = {
			type: "bar",
			data: data,
			options: {
                radius:5,
                hitRadius:30,
                hoverRadius:12,
				responsive: true,
                animation:{
                    onComplete: () =>{
                        delayed =true;
                    },
                    delay : (context) =>{
                        let delay = 0;
                        if(context.type === "data" && context.mode === "default"){
                            delay = context.dataIndex * 300 + context.datasetIndex * 100;
                        }
                        return delay;
                    },
                },
				scales: {
					y:{ // 왼쪽 좌표에서 표현하고 싶은값을 여기서 구현해야 됨
						ticks: {
							callback: function(value, index){
								return '$' + value + "m";
							},
						},
					},
				},
			},
	};
	
	const myChart3 = new Chart(ctx3, config3);
	/* ************************************************** */
            var context = document
                .getElementById('myChart4')
                .getContext('2d');
            var myChart4 = new Chart(context, {
                type: 'doughnut', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                        //x 축
                        '1','2','3','4','5','6','7'
                    ],
                    datasets: [
                        { //데이터
                            label: '나죽어..', //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [
                                21,19,25,20,23,26,25 //x축 label에 대응되는 데이터 값
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                //경계선 색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1 //경계선 굵기
                        } ,
                        {
                            label: 'test2',
                            fill: false,
                            data: [
                                8, 34, 12, 24
                            ],
                            backgroundColor: 'rgb(157, 109, 12)',
                            borderColor: 'rgb(157, 109, 12)'
                        } 
                    ]
                },
                options: {
                    scales: {
                        yAxes: [
                            {
                                ticks: {
                                    beginAtZero: true
                                }
                            }
                        ]
                    }
                }
            });
            
            /*********************다르게해보자잉..************************  */
        
    </script>
  </body>
</html>