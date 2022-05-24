<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <style>

            /* 외부 DIV */
            #mainOrder {
                float: left;
                
                width: 50%;
            }

            #mainMtrl {
                float: left;
                
                width: 40%;
            }

            #mainProcess{
                float: left;
                
                width: 60%;
            }

            #mainVendor{
                float: left;
                
                width: 30%;
            }

            /* 내부 DIV */
            #mainOrderIn{
                
            }

            #mainMtrlIn1{
                
                float: left;
                margin-right: 1em;
                width: 47%;
            }
            #mainMtrlIn2{
                float: left;
                width: 48%;
            }

            #mainProcessIn{
                background: wheat;
            }

            #mainVendorIn{
                background: greenyellow;
            }


            /* 집합별 */

            #mainOrder, #mainMtrl{
                margin-bottom: 3em;
            }
            #mainOrder, #mainProcess {
                 margin-right: 2%;
            }

            #mainOrderIn, #mainMtrlIn1,#mainMtrlIn2, #mainProcessIn, #mainVendorIn {
                height: 15em;
            }
            
            #inlineMode h2, h4, span{
            	display: inline;
            }


    </style>
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/toast/css/tui-grid.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/toast/css/tui-pagination.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/toast/css/tui-chart.css" />
    
</head>


<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	


    <div id="mainOrder">
        <section id="inlineMode"><h2>주문 정보</h2><span><a href="orderList">&nbsp;	더보기 ></a></span></section>
        <div id="mainOrderIn">
        			
        </div>
    </div>

    <div id="mainMtrl">
    
        <section id="inlineMode"><h2>재고 조회</h2><span><a href="prodLotForm">&nbsp;	완제품 ></a><a href="mtrlLotForm">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	원자재 ></a></span></section>
        <div id="mainMtrlIn1">
        			
        </div>
        <div id="mainMtrlIn2">
        </div>
    </div>

    <div id="mainProcess">
        <section><h2>진행상황</h2></section>
        <div id="mainProcessIn">
            <div>주문 접수 - 생산계획 등록 - 생산 지시 등록 - 생산완료 - 출고 완료</div>
        </div>
    </div>

    <div id="mainVendor">
        <section><h2>업체정보</h2></section>
        <div id="mainVendorIn"><h1>업체 LIST</h1></div>
        
    </div>
    
    
    <!-- script -->
    <script type="text/javascript">
    window.onload = function (){		
    

    	/*========= 주문서 조회 =========*/
    		$.ajax({
    			url : 'mainOrdersList',
    			method : 'GET',
    			dataType : 'JSON'
    		}).done(function(result){
    			console.log(result);
    			for (var i = 0; i < result.length; i++) {
    				mainOrderGrid.appendRow(result[i]);
				}
    		})
    	
    	
    	var mainOrderGrid = new tui.Grid({
    	       el: document.getElementById('mainOrderIn'),
    	       scrollX: false,
    	       scrollY: false,
    	       columns: [
    	         {
    	             header: '업체명',
    	             name: '업체명',
    	           },
    	          {
    	              header: '주문일자',
    	              name: '주문일자',
    	            },
    	            {
    	                header: '납기일자',
    	                name: '납기일자',
    	            },
    	            {
    	                header: '제품코드',
    	                name: '완제품코드',
    	             },
    	             {
    	                 header: '제품명',
    	                 name: '완제품명',
    	              },
    	              {
    	                 header: '수량',
    	                 name: '주문수량',
    	               },
    	               {
    	                  header: '진행상황',
    	                  name: '진행상황',
    	                }],
    	                rowHeaders: ['rowNum'],
          	            pageOptions: {
             	           	 useClient: true,   
             	             perPage: 3
             	            }
							
    	
    	     			});
    		/*========= 주문서 조회  끝=========*/
    		
    		
    		
    		
    		/*========= 완제품 재고 간단 조회=========*/
    			$.ajax({
    			url : 'mainProdList',
    			method : 'GET',
    			dataType : 'JSON'
    		}).done(function(result){
    			console.log(result);
    			for (var i = 0; i < result.length; i++) {
    				mainProdGrid.appendRow(result[i]);
				}
    		})
    		
    		
    		var mainProdGrid = new tui.Grid({
     	       el: document.getElementById('mainMtrlIn1'),
     	       scrollX: false,
     	       scrollY: false,
     	       columns: [
     	         {
     	             header: '제품명',
     	             name: '제품명',
     	           },
     	          {
     	              header: '재고',
     	              name: '재고',
     	            }
     	           ],
     	            rowHeaders: ['rowNum'],

     	
     	     		});
    			/*========= 완제품 재고 간단 조회 끝=========*/
    			
    			
    			
    			/*========= 원자재 재고 간단 조회=========*/
    			$.ajax({
    			url : 'mainMtrlList',
    			method : 'GET',
    			dataType : 'JSON'
    		}).done(function(result){
    			console.log(result);
    			mainMtrlGrid.appendRows(result);
    		})
    		
    		var mainMtrlGrid = new tui.Grid({
      	       el: document.getElementById('mainMtrlIn2'),
      	       scrollX: false,
      	       scrollY: false,
      	       columns: [
      	         {
      	             header: '원자재명',
      	             name: '원자재명',
      	           },
      	          {
      	              header: '재고',
      	              name: '재고',
      	            }
      	           ],
      	            rowHeaders: ['rowNum'],
      	            pageOptions: {
      	           	 useClient: true,   
      	             perPage: 3
      	            }
      	
      	     		});
    			/*========= 원자재 재고 간단 조회 끝=========*/
    }  
    </script>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/toast/js/tui-pagination.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/toast/js/tui-grid.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/toast/data/dummy.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/toast/js/tui-chart.js"></script>
