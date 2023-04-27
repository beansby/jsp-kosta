<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        body {
            margin: 0 auto;
            
        }

        .container {
            /* padding:10px; */
            border: 1px solid;
            width: 552px;
        }
        .header {
            height: 40px;
        }

        .row {
            height: 30px;
        }

        .title {
            font-weight: bold;
            background-color: lightgrey;
        }
        .colume {
            padding:5px;
            width: 100px;
            float: left;
        }

        .input {
            float: left;
        }

        input[type='submit'] {
            font-weight: bold;
            width:120px;
            background-color: lightgrey;
        }
    </style>
</head>
<body>
    <center>
        <form>
            <div class="header">
                <h3>전체 계좌 조회</h3>
            </div>
            <div class="container" id="container">
                <div class="row">
                    <div class="title colume">계좌번호</div>
                    <div class="title colume">이름</div>
                    <div class="title colume">잔액</div>
                    <div class="title colume">계좌종류</div>
                    <div class="title colume">등급</div>
                </div>
            </div>
        </form>
    </center>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="account.js"></script>
    <script>
        let accs = ['{"id":1001,"name":"hong","balance":100000,"grade":null}',
                    '{"id":1002,"name":"park","balance":200000,"grade":"VIP"}',
                    '{"id":1003,"name":"song","balance":300000,"grade":"Gold"}'];

        let container = $("#container");
        for(let accstr of accs) {
            let acc = JSON.parse(accstr);
            let row = $('<div></div>').addClass('row');
            container.append(row);
            row.append($('<div></div>').addClass('colume').text(acc.id));
            row.append($('<div></div>').addClass('colume').text(acc.name));
            row.append($('<div></div>').addClass('colume').text(acc.balance));
            row.append($('<div></div>').addClass('colume').text(function() {
                if(acc.grade==null) {
                    return '일반계좌';
                } else {
                    return '특수계좌';
                }
            }));
            row.append($('<div></div>').addClass('colume').text(acc.grade));
        }
        
    </script>
</body>
</html>