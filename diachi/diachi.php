<!DOCTYPE html>
<html>
  <body>

    <h1>Bản đồ shop TQT Gò Vấp, Hồ Chí Minh</h1>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4111229606783!2d106.69644397481831!3d10.779790759132087!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f37e6d82451%3A0xe84f59936ced5b45!2zTmjDoCB0aOG7nSDEkOG7qWMgQsOgIFPDoGkgR8Oybg!5e0!3m2!1svi!2s!4v1698242729172!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    <div id="googleMap" style="width:100%;height:400px;"></div>

    <script>
      function myMap() {
        var mapProp = {
          center: new google.maps.LatLng(10.85915956273715, 106.6505091541315), // Tọa độ mới
          zoom: 15,	
        };
        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
      }
    </script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNI_ZWPqvdS6r6gPV05014тlYkfkzdXh8&callback=myMap" async defer></script>

  </body>
</html>
