<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
    <script>
function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
    var a = prompt("지역을 선택하세요", "서울,부산")
    if (a == "서울") {
        alert("구찌 플래그쉽 청담점\n1577-1921\n 서울 강남구 압구정로 462");
    }
    else if(a =="부산") {
        alert("구찌 신세계백화점센텀시티점\n051-745-2223\n부산광역시 해운대구 센텀남대로 35 신세계백화점센텀시티점 1F")
    }
}
    </script>
    <style>
        #div1, #div2 {
            width: 160px;
            height: 160px;
            border: 1px solid #999;
            float: left;
        }
    </style>
</head>


</head>
<body style="font-family: GillSans; font-size: 14px; font-weight: 400;">
    <center>
        <table cellpadding="50px">
            <tr valign="top">
                <td>
                    <img src="image/Gucci1.JPG"><br><br>
                    <img src="image/Gucci2.jpg" style="margin-right: 50px; width:50px;">
                    <img src="image/Gucci3.jpg" style="margin-right: 50px; width:50px;">
                    <img src="image/Gucci4.jpg" style="margin-right: 50px; width:50px;">
                    <img src="image/Gucci5.jpg" style="margin-right: 50px;width:50px;">
                </td>
                <td>
                    <strong style="font-size: 20px;">GUCCI</strong> <br>GG Marmont small textured-leather tote <br>$2,360
                    <br><br><br><br>
                    <button style="border-radius: 3px;
						        padding: 14px 30px;
							    text-align: center;
							    font-size: 14px;
							    line-height: 15px;
							    text-transform: uppercase;
							    letter-spacing: 1px;
							    cursor: pointer;
							    display: inline-block;
							    box-sizing: border-box;
							    background: #000;
							    color: #FFF;
							    border: 1px solid #000;">
                        구 매 하 기
                    </button>

                    <button style="border-radius: 3px;
						        padding: 14px 30px;
							    text-align: center;
							    font-size: 14px;
							    line-height: 15px;
							    text-transform: uppercase;
							    letter-spacing: 1px;
							    cursor: pointer;
							    display: inline-block;
							    box-sizing: border-box;
							    border: 1px solid #CCC;
							    color: #000;
							    background: 0 0;">
                        포 기 하 기
                    </button>
                    <br>
                    <br><strong>SIZE & FIT INFORMATION</strong>
                    <br>- This item's measurements are:
                    <br>- Depth 13cm
                    <br>- Handle Drop 10.5cm
                    <br>- Height 28cm
                    <br>- Width 38cm
                    <br>
                    <br><strong>EDITORS' NOTES</strong><br>
                    <div style="width: 420px;">
                        Gucci's tote is crafted from the label's signature textured-leather - known for its soft and supple feel. It features a sizable canvas-lined compartment to organize larger everyday essentials, plus a zipped pocket and a pouch for your cell phone. This timeless piece is elegantly finished with the house's interlocking gold plaque.
                    </div>
                </td>
            </tr>

        </table>
        <div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
            <img src="image/카트.jpg" draggable="true" ondragstart="drag(event)" id="drag1" alt="보러가기">
        </div>
        <div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
    </center>
</body>

</html>