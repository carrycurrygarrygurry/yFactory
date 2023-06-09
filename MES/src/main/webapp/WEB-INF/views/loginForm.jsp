<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
 

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- CSS -->
  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
  
  <!-- END CSS -->
  
	
	
   
</head>


<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              

              <div class="card mb-3">

                <div class="card-body">
				<div style="text-align: center;">
                    <a href="home.do"><span class="loginTitle">YAFS</span>
                    </a>
                    <p class="loginSubTitle">Yedam Automize Factory System</p>
                  </div>
                  <form action="userLogin" method="post" class="row g-3 needs-validation" onsubmit="return frm_check();" novalidate>
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">이메일</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" name="emp_email" class="form-control" id="id" required>
                        <div class="invalid-feedback">이메일을 입력해주세요.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="pw" class="form-control" id="pw" required>
                      <div class="invalid-feedback">비밀번호를 입력해주세요!</div>
                    </div>
                    <div class="col-12">
					<input type="checkbox" class="save_id" name="checkId" id="saveId" >
    				<label for="saveId">아이디 저장</label>
                    </div>
                    <div class="col-12">
                      <button id="loginBtn" class="btn btn-primary w-100" type="submit" style="background-color:#ff8000; border-color:#ff8000;">로그인</button>
                    </div>                    
                  

				</form>            
                </div>
              </div>

              

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  
  <script src="${pageContext.request.contextPath}/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/chart.js/chart.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/echarts/echarts.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/quill/quill.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script>
if('${message}' != ''){
	alert('${message}');
	location.href ='loginForm.do';
	
}

/* 아이디 저장 */
 $(function() {
         
           fnInit();
         
     });
     
 function frm_check(){
     saveid();
 }
 
 function fnInit(){
     var cookieid = getCookie("saveid");
     console.log(cookieid);
     if(cookieid !=""){
         $("input:checkbox[id='saveId']").prop("checked", true);
         $('#id').val(cookieid);
     }
     
 }// end of fnInit()
 
 function setCookie(name, value, expiredays) {
     var todayDate = new Date();
     todayDate.setTime(todayDate.getTime() + 0);
     if(todayDate > expiredays){
         document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
     }else if(todayDate < expiredays){
         todayDate.setDate(todayDate.getDate() + expiredays);
         document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
     }
     
     
     console.log(document.cookie);
 }
 
 function getCookie(Name) {
     var search = Name + "=";
     console.log("search : " + search);
     
     if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
         offset = document.cookie.indexOf(search);
         console.log("offset : " + offset);
         if (offset != -1) { // 쿠키가 존재하면 
             offset += search.length;
             // set index of beginning of value
             end = document.cookie.indexOf(";", offset);
             console.log("end : " + end);
             // 쿠키 값의 마지막 위치 인덱스 번호 설정 
             if (end == -1)
                 end = document.cookie.length;
             console.log("end위치  : " + end);
             
             return unescape(document.cookie.substring(offset, end));
         }
     }
     return "";
 }

 function saveid() {
     var expdate = new Date();
     if ($("#saveId").is(":checked")){
         expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
         setCookie("saveid", $("#id").val(), expdate);
         }else{
        expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
         setCookie("saveid", $("#id").val(), expdate);
          
     }
 }
 
</script>
</body>

</html>