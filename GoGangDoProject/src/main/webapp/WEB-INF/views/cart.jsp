<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
        .main_container{
            width: 1200px;
            text-align: center;
            margin: 0px auto;
            display: flex;
            flex-direction: column;
            border-top: solid 1px gray;
        }
        .sub_header{
            width: 1200px;
            margin: 20px auto;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            border-bottom: solid 1px gray;
        }
        #step{
            font-size: 14px;
            display: flex;
            flex-direction: row;
            margin-top: 20px;
        }
        #step p{
            margin: 0px 5px;
        }
        .cart_list{
            width: 1200px;
            border-collapse: collapse;
        }
        /*.cart_list thead{
            background-color: lightgray;
        }*/
        .cart_list tr{
            border-bottom: solid 1px lightgray;
        }
        /*.cart_list td{
            border: solid 1px lightgray;
        }*/
        .cart_list img{
            width: 40px;
            height: 40px;
        }
        .cart_total{
            width: 1200px;
            margin: 10px auto;
        }
        .total{
            width: 1200px;
            margin: 10px auto;
            background-color: #e9e9e9;
        }
        .total img{
            width: 25px;
            height: 25px;
            margin-bottom: 15px;
        }
        .total td{
            width: 20%;
            text-align: center;
        }
        #price td{
            font-weight: bold;
        }
        #choose{
        	float: left;
            margin: 20px 10px;
        }
        #choose button{
            width: 150px;
            height: 30px;
            font-size: 14px;
            background-color: gray;
            color: white;
            border: none;
        }
        #continue{
            text-align: center;
            margin: 20px;
        }
        #continue button{
            width: 200px;
            height: 50px;
            font-size: 20px;
            border: none;
            background-color: black;
        }
        #continue button a{
        	text-decoration: none;
            color: white;
        }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
    $("#check_all").click(function() {
       if($("#check_all").is(":checked")) $("input[name=check]").prop("checked", true);
       else $("input[name=check]").prop("checked", false);
    });
    $("input[name=check]").click(function() {
       var total = $("input[name=check]").length;
       var checked = $("input[name=check]:checked").length;
       
       if(total != checked) $("#check_all").prop("checked", false);
       else $("#check_all").prop("checked", true); 
    });
    $("#choose_all").click(function(){
    	$("input[type=checkbox]").prop("checked",true);
    });
    
    $("#delete_choose").click(function(){
    	
    });
 });
</script>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>
	<div class="main_container">
        <div class="sub_header">
            <h3>????????????</h3>
            <div id="step">
                <p style="font-weight:bold">01.????????????</p>
                <p>>></p>
                <p>02.????????? ??????/??????</p>
                <p>>></p>
                <p>03.????????????</p>
            </div>
        </div>
        <table class="cart_list">
            <thead style="height:30px">
                <th><input type="checkbox" name="check_all" value="check" id="check_all"></th>
                <th>????????????</th>
                <th>??????</th>
                <th>?????? ??????</th>
                <th>?????? ??????</th>
                <th>?????????</th>
            </thead>
            <tr style="height:70px">
                <td><input type="checkbox" name="check"></td>
                <td><img alt="" src="img/dog-food.jpg">?????????OOOO</td>
                <td>1???</td>
                <td>4,000???</td>
                <td>4,000???</td>
                <td rowspan="2">3,000???</td>
            </tr>
            <tr style="height:70px">
                <td><input type="checkbox" name="check"></td>
                <td><img alt="" src="img/dog-food.jpg">?????????OOOO</td>
                <td>1???</td>
                <td>4,000???</td>
                <td>4,000???</td>
                <!--<td>3,000???</td>-->
            </tr>
        </table>
        <form action="#" class="cart_total">
            <div id="choose">
                <button id="choose_all">?????? ??????</button>
                <button id="delete_choose">?????? ?????? ??????</button>
            </div>
                <table class="total">
                    <tr>
                        <td></td>
                        <td></td>
                        <td>??? ????????????</td>
                        <td>?????????</td>
                        <td>??????</td>
                    </tr>
                    <tr >
                        <td></td>
                        <td></td>
                        <td>4,000???</td>
                        <td> 3,000???</td>
                        <td>7,000???</td>
                    </tr>
                </table>   
            <div id="continue">
                <button><a href="productList.do">?????? ????????????</a></button>
                <button><a href="purchase.do">????????????</a></button>
            </div>
        </form>
    </div>
<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>