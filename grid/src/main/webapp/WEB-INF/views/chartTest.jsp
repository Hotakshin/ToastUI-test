<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://uicdn.toast.com/chart/latest/toastui-chart.min.css" />
<script src="https://uicdn.toast.com/chart/latest/toastui-chart.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Tui chart test</title>
<script>
$(document).ready(function() {
    var el = document.getElementById('chart');
    var data = {
      categories: ['Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
      series: [
        {
          name: 'Budget',
          data: [5000, 3000, 5000, 7000, 6000, 4000, 1000],
        },
        {
          name: 'Income',
          data: [8000, 4000, 7000, 2000, 6000, 3000, 5000],
        },
        {
          name: 'micol',
          data: [6000, 3000, 6000, 7000, 6000, 4000, 6000],
        },
        {
          name: 'Hotak',
          data: [10000, 6000, 7000, 2000, 6000, 6000, 5000],
        },
      ],
    }; 
     var options = {
        chart: { width: 800, height: 800 },
     };
    var chart = toastui.Chart.barChart({ el, data, options });
    
     var el = document.getElementById('linechart');
     var data = {
     categories: [
           'Jan',
           'Feb',
           'Mar',
           'Apr',
           'May',
           'Jun',
           'Jul',
           'Aug',
           'Sep',
           'Oct',
           'Nov',
           'Dec',
         ],
         series: [
           {
             name: 'Seoul',
             data: [20, 40, 25, 50, 15, 45, 33, 34, 20, 30, 22, 13],
           },
           {
             name: 'Sydney',
             data: [5, 30, 21, 18, 59, 50, 28, 33, 7, 20, 10, 30],
           },
           {
             name: 'Moscow',
             data: [30, 5, 18, 21, 33, 41, 29, 15, 30, 10, 33, 5],
           },
         ],
       };
     

     var options = {
    	        chart: { title: 'Average Temperature', width: 900, height: 400 },
    	        xAxis: { pointOnColumn: false, title: { text: 'Month' } },
    	        yAxis: { title: 'Temperature (Celsius)' },
    	        series: { showDot: true, dataLabels: { visible: true, offsetY: 10 } },
    	      };
     
    var linechart = toastui.Chart.areaChart({el, data, options});
   
    
    var el = document.getElementById('piechart');
    var data = {
    		  categories: ['Browser'],
    		  series: [
    		    {
    		      name: '이담',
    		      data: 46.02,
    		    },
    		    {
    		      name: '동영',
    		      data: 20.47,
    		    },
    		    {
    		      name: '진호',
    		      data: 17.71,
    		    },
    		    {
    		      name: '반야',
    		      data: 5.45,
    		    },
    		    {
    		      name: '수민',
    		      data: 3.1,
    		    },
    		    {
    		      name: '태광',
    		      data: 7.25,
    		    }
    		  ]
    		}
    var options = {
            chart: { title: 'Usage share of web browsers', width: 600, height: 400 },
            series: { selectable: true },
          };

    
    
    var piechart = toastui.Chart.pieChart({el, data, options});
 });
</script>
</head>
<body>
<div align="center">
<div><h1>차트</h1></div>
<div id="chart"></div>
<div id="linechart"></div>
<div><h1>파이</h1></div>
<div id="piechart"></div>
</div>
</body>
</html>