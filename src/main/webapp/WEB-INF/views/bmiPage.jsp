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
    <style type="text/css">
    .img{
    	transform:rotate(90deg);
	   -moz-transform: scaleX(-1); 
	     -o-transform: scaleX(-1); 
	-webkit-transform: scaleX(-1); 
	        transform: scaleX(-1);   
	       filter: FlipH;
	  -ms-filter: "FlipH";
    }
    </style>
	<link rel="stylesheet" href="resources/css/chart.css" media="screen">
	<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="resources/css/bmipage.css" media="screen">
	
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
      <div class="u-clearfix u-sheet u-sheet-1">
        <h3 class="u-text u-text-1">BMI계산기</h3>
        <p class="u-large-text u-text u-text-grey-50 u-text-variant u-text-2">건강한 체중, 제대로 알기</p>
        <div class="u-container-style u-group u-palette-1-dark-3 u-group-1">
          <div class="u-container-layout u-container-layout-1" style="padding: 15px;">
        <%--*************bmi 계산 폼 ******************** 히든으로 닉보내야함 --%>
        	<fieldset style="width: 100%;margin: 0 auto; " >
        		<legend style="font-size: 16px; font-weight: 300px;">bmi계산하기</legend>
	                <div class="bmi-search" style="text-align: center; margin: 0 auto; padding: 15px;">
			          <form action="bmi.my" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px;">
			            <div class="u-form-group u-form-name" style="width: 40%;">
			              <input placeholder="몸무게를 입력해주세요!" id="b_kg" name="b_kg" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" >
			            </div>
			            <div class="u-form-email u-form-group" style="width: 40%;">
			              <input placeholder="키를 입력해주세요!" id="b_cm" name="b_cm" class="u-border-1 u-border-grey-30 u-input u-input-rectangle">
			            </div>
			            <input type="hidden" name="m_nick" value="${sessionScope.log }">
			          </form>
			            <div style="width: 100px; height: 45px; display:inline-block;">
			              	<button type="submit" id="res_bt" style="width: 100%; height: 100%; font-size: 13px; color: black;
			              			border: 1px solid #efefef; border-radius: 35px" onclick="send()">계산하기</button>
			            </div>
	                </div>
        	</fieldset>
      <%-- **************************************계산폼끝 --%>
          </div>
        </div>
      </div>
    </section>
    <div style="margin: 80px 15px 40px; width: 100%; display: inline-block;">
    	<div style="width: 100%; text-align: center; ">
			<span style="color: #008f7a; font-size: 3em; font-weight: 600;">${sessionScope.log }</span><br/>
			<span style="font-size: 2.2em; font-weight: 600; margin-right: 50px;">bmi지수 : 계산하기를 누르는 순간!~😀😀${sessionScope.bmi }"</span>
			<div id="img_box" style="display: inline-block ; width: 80px; height: 80px;">
				<img class="img" alt="화살표 이미지" src="resources/images/ta2.png" style="width: 100%; height: 100%;">
			</div>
    	</div>
	</div>
    
    
    <section class="u-section-1" id="ch" style="margin-top: 50px; ">
    	<div style="width:100%; display: inline-block;">
			<div style="text-align: center;">
			<span style="color:#008f7a; font-size: 1.6em; font-weight: 600;">그래프로 확인하기</span><br/><br/><br/>
			</div>
    	</div>
      <div style="width: 55%; margin: 0 auto; margin-bottom: 300px;">
      	<div id="chart" style="width: 100%">
		  <canvas id="myChart"></canvas>
		</div>
		<!-- <div id="chart">
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
		</div> -->	
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
    
    function send(){
    	document.forms[0].submit();
    }
    
    
  //차트가져오기
	const ctx = document.getElementById("myChart").getContext("2d");


	//그라디언트만들기
	let gradient = ctx.createLinearGradient(0,0,0,400);
    gradient.addColorStop(0,'rgba(58,123,213,1)');
	gradient.addColorStop(1,'rgba(0,210,255,0.3)');


	//차트에 들어갈 변수생성
	const labels = ["19~24세","25~29세","30~34세","35~39세","40~44세","45~49세","50~54세","55~59세","60~64세"];
	
	const data = {
			labels,
			datasets: [
				{
				//여기서 labels배열에 담긴 순서대로 데이터가담긴다. 배열갯수를 맞춰야함
				data: [23.3, 23.7, 24.9, 25.2, 24, 24.9, 24.5, 24.6, 24],
				label: "연령별 bmi평균 지수",
				fill: true,
				backgroundColor: gradient,
                borderColor: "#fff",
                pointBackgroundColor: "rgb(189,195,199)",
                tension: 0.1,
			},{ 
		        data: /* [28.2,21.29] */${chart},
		        label: "Asia",
		        borderColor: "#8e5ea2",
		        fill: false
		      }
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
							beginAtZero:true
							/* callback: function(value, index){
								return '$' + value + "m"; 
							}, */
						},
					},
				},
			},
		};
	
	const myChart = new Chart(ctx, config);
	/* // *****************************************************
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
            /* var context = document
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
            }); */
            
        
    </script>
  </body>
</html>