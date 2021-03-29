<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

    <head> </head>

    <body>
        <jsp:include  page="../common/header-left.jsp" />
        
        
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>

            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h4>Product Register</h4>
            </div>

            <!--  enctype="application/x-www-form-urlencoded;charset=UTF-8" -->
            <form id="productAddForm" action="/product/productAddProcess" method="post" enctype="multipart/form-data">
                
                <div class="col-sm-6">
                    <label for="board_name" class="form-label">* 게시글 제목</label>
                    <input type="text" class="form-control" name="board_name" id="board_name">
                </div>
                
                <br><div class="col-sm-6">
                    <label for="prod_type" class="form-label">* 제품 타입</label>
                    <!-- <input type="text" class="form-control" name="prod_type"> -->
                    
                    <select class="form-select" aria-label="Default select example" name="prod_type" id="prod_type">
                    <option selected>제품타입을 선택하세요</option>
                    <option value="tv">TV</option>
                    <option value="notebook">노트북</option>
                    <option value="phone">핸드폰</option>
                    </select>
                </div>
                
                <br><div class="col-sm-6">
                    <label for="prod_name" class="form-label">* 제품명</label>
                    <input type="text" class="form-control" name="prod_name" id="prod_name">
                </div>
                
                <br><div class="col-sm-6">
                    <label for="prod_price" class="form-label">* 가격(원)</label>
                    <input type="text" class="form-control" name="prod_price" id="prod_price">
                </div> 
                
                <br><div class="col-sm-6">
                    <label for="prod_spec" class="form-label">* 사양</label>
                    <!-- <input type="text" class="form-control" name="prod_spec"> -->
                    <textarea class="form-control" rows="7" name="prod_spec" id="prod_spec"></textarea>
                </div>
                

                <br><div class="col-sm-6">
                <label for="prod_img" class="form-label"> 이미지</label><br>
                <input class="form-control" type="file" multiple="multiple" name="prod_img" id="prod_img">
                </div>
            
                <!-- 이미지 추가 버튼 만들 예정 -->
                
                <br><br><div class="col-sm-1">
                    <button class="w-100 btn btn-primary btn-lg" type="button" id="prodAddBtn">추가</button>
                </div>	
            </form>
            
            <br>
            
             <canvas class="my-4 w-100 chartjs-render-monitor" id="myChart" width="1538" height="649" style="display: block; width: 1538px; height: 649px;"></canvas>
        </main>
          
    </div>
</div>


  <footer class="footer mt-auto py-3 bg-light">
    <div class="container">
      <span class="text-muted"></span>

    </div>
  </footer>

  <script type="text/javascript">
      $(document).ready(function(){
        event.preventDefault();

        $('#prodAddBtn').click(function(){

            // 필수값 체크
            if($('#board_name').val() == null || $('#board_name').val() == '' || $('#board_name').val() == undefined){
                alert("board name is null");
                return;
            }
            if($('select[name=prod_type] option:selected').val() == '제품타입을 선택하세요'){
                alert("board type is null");
                return;
            }
            if($('#prod_name').val() == null || $('#prod_name').val() == '' || $('#prod_name').val() == undefined){
                alert("product name is null");
                return;
            }
            if($('#prod_price').val() == null || $('#prod_price').val() == '' || $('#prod_price').val() == undefined){
                alert("product price is null");
                return;
            }
            if($('#prod_spec').val() == null || $('#prod_spec').val() == '' || $('#prod_spec').val() == undefined){
                alert("product spec is null");
                return;
            }
        });
            

    });

  </script>

</body>
</html>