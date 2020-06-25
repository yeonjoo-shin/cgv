/**
 *		2.글자수 최소 제한(10글자이상)
 * 		만약 글자 수(10자)를 일정이상 채우지 않으면 팝업창o & 클릭x / 10자 이상이면 ajax로 내용 넘겨주고 수동으로 값비우고 닫아주기
 */

/* 만약 글자 수(10자)를 일정이상 채우지 않으면 팝업창o & 클릭x 
	/ 10자 이상이면 ajax로 내용 넘겨주고 수동으로 값비우고 닫아주기 */

	 var g_num = 0;
	 var g_mContents = ""; 
	 var g_charmPoint = 0;
	 var g_emotionPoint = 0;

	
	 $("#popupBtn").click(function(e){

		var mContents = document.getElementById("mContents");
		
		
		if(mContents.value.length>=10){
			
			if(confirm("관람평이 등록되었습니다.\n관람하신 영화의 관람 포인트를\n선택하시겠습니까?")== true){
				document.getElementById("btn2").click();
			}else{
				alert("아니오");
			}
			
			
			$.ajax({

				type:"POST",
				url:"./review_Write",
				data:{
					contents:$('#mContents').val()
					},
				success:function(){
					alert("dd")
					}

				})
			
			//팝업창 닫히고 내용 초기화(mContents, data-dismiss="modal")
			$("#exit").click();

								
		}else{
			alert("문자를 포함하여 10자 이상(공백 제외) 작성하셔야 등록됩니다.");
			e.preventDefault();
			
		}
	
		 });
	 
//	 ------------------------------------------------------------------------------
	 
	 //charmpoint
	 function getCharmPoint() {
		 
		var charmPoint = 0;
		 
		var values = document.getElementsByClassName("charmPoint");
		 
		for(var i=0; i<values.length; i++) {
			if(values[i].checked){
					
			charmPoint += values[i].dataset.charm * 1;
			}					
		}
		
		return charmPoint;
	 }
	 
	 //emotionpoint
	 function getEmotionPoint() {
		 
			var emotionPoint = 0;
			 
			var values = document.getElementsByClassName("emotionPoint");
			 
			for(var i=0; i<values.length; i++) {
				if(values[i].checked){
				emotionPoint += values[i].dataset.emotion * 1;
				}					
			}
			return emotionPoint;
		 }
	 
	 
//	 ------------------------------------------------------------------------------

	 
	 $("#popupBtn2").click(function(e){
		 //null값
		 var charmPoint = getCharmPoint();
		 var emotionPoint = getEmotionPoint();
		 
		if(charmPoint!=null && emotionPoint!=null){
		
			if(charmPoint==0){
				alert("매력포인트를 1개 이상 선택해주세요.")
				
			} else{
				if(emotionPoint==0){
					alert("감정포인트를 1개 이상 선택해주세요.")
					
				}else {
					
					$.ajax({

						type:"POST",
						url:"./review_Write",
						data:{
							charmPoint: charmPoint,
							emotionPoint: emotionPoint
						},
						success:function(data){
							alert("dd")
						}
					})
					
					 $("#exit2").click();
					
					
				}
				
			}
			
		}
	 
	 });
	 
//	 ------------------------------------------------------------------------------
	 
/* 
		//닫기버튼 누르면 내용초기화 & 글자 바이트 초기화
	$("#exit").click(function(){
		document.getElementById("mContents").value ="";
		document.getElementById('bytes').innerText =0;
		
		});
	
	$("#exit2").click(function(){
		$(".charmPoint").prop("checked", false);
		$(".emotionPoint").prop("checked", false);
		});	

*/
	 


	