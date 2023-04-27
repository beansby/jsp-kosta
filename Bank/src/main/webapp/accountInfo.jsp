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
            padding: 10px;
            border: 1px solid;
            width: 280px;
        }

        .header {
            height: 40px;
        }

        .row {
            height: 30px;
        }

        .title {
            width: 70px;
            float: left;
            font-weight: bold;
        }

        .input {
            float: left;
        }

        input[type='submit'] {
            font-weight: bold;
            width: 120px;
            background-color: lightgrey;
        }
    </style>
</head>
<body>
    <center>
        <div class="header">
            <h3>계좌조회</h3>
        </div>
        <div class="container" id='query'>
            <form id='form'>
                <div class="row">
                    <div class="title">계좌번호</div>
                    <div class="input"><input type="text" name="id"></div>
                </div>
                <div class="button">
                    <input type="submit" value="조 회">
                </div>
            </form>
        </div>
        <div class="container" id='result' hidden>
            <div class="row">
                <div class="title">계좌번호</div>
                <div class="input"><input type="text" name="id" id='id' disabled></div>
            </div>
            <div class="row">
                <div class="title">이름</div>
                <div class="input"><input type="text" name="name" id='name' disabled></div>
            </div>
            <div class="row">
                <div class="title">입금액</div>
                <div class="input"><input type="text" name="money" id='money' disabled></div>
            </div>
            <div class="row">
                <div class="title">종류</div>
                <div class="input"><input type="text" name="type" id='type' disabled></div>
            </div>
            <div class="row">
                <div class="title">등급</div>
                <div class="input"><input type="text" name="grade" id='grade' disabled></div>
            </div>
        </div>
    </center>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="account.js"></script>
    <script>
        $(function () {
            form.onsubmit = function () {
                $('#query').hide();
                $('#result').show();
                let accstr = '{"id":1001,"name":"park","balance":200000,"grade":"VIP"}';
                let acc = JSON.parse(accstr);
                $('#id').val(acc.id);
                $('#name').val(acc.name);
                $('#money').val(acc.balance);
                $('#grade').val(acc.grade);
                if (acc.grade == 'null') {
                    $('#type').val('일반계좌');
                } else {
                    $('#type').val('특수계좌');
                }
                return false;
            }
        });


    </script>
</body>
</html>