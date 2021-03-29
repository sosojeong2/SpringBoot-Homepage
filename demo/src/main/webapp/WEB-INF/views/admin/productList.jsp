<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

    <head> </head>

    <body>
        <jsp:include  page="../common/header-left.jsp" />
        
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
              <h4>Product List</h4>
            </div>
            
            
            <table class="table table-hover">
              <tr height="200">
                  <td width="400">img</td>
                  <td>스펙</td>
              </tr>
              <tr height="200">
                  <td width="400">img</td>
                  <td>스펙</td>
              </tr>
            </table>
                
              
            <canvas class="my-4 w-100 chartjs-render-monitor" id="myChart" width="1538" height="649" style="display: block; width: 1538px; height: 649px;"></canvas>
          </main>

    </div>
</div>
  <footer class="footer mt-auto py-3 bg-light">
    <div class="container">
      <span class="text-muted"></span>

    </div>
  </footer>


</body>
</html>