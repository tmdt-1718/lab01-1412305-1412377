// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function(){
    $("#btn-collapse").click(function(){
        $("#sidebar").css("display", "none");
    });
    $("#btn-open").click(function(){
        $("#sidebar").css("display", "block");
    });

    $('li > a.nav-link').click(function(){
        $("ul .navbar-nav").find(".active").removeClass("active");
        $(this).parent().addClass("active");
    });

    $('a#article').on('click', function(){
       
        $.ajax({
            url: window.location.origin + $(this).attr('href'),
            beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
            method: 'PUT',
            data: { view: parseInt($(this).attr('data-view'), 10) + 1 },
            success: function(data){
                console.log('done');
            }
        })
    });
});