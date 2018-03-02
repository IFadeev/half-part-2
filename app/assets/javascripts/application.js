// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require_tree .
//= require 'icheck'
//= require 'vendor/select2.min.js'

$(document).ready(function() {

	$('input').on('ifCreated', function(event){
		if ($(this).attr('value')=='true') {
			$(this).iCheck('check'); 
			$('#todo_text_'+$(this).attr('id')).addClass('checked');}
	});

	$('input').iCheck({checkboxClass: 'icheckbox_square-blue'});

	$('input').on('ifChecked', function(event){
		$(this).children('label').children('.todo-text').addClass('checked');
	});

    $('input').on('ifUnchecked', function(event){
     	$(this).children('label').children('.todo-text').removeClass('checked');
    });

	$('input').on('ifClicked', function(event){
		$('#submit_'+$(this).attr('id')).click();
	});

	$("#link_create").click(function(event) {
		$("#create_todo_form").submit();
	});

	$('#todo_icon, #link_close').click(function(event){
		$('.background').toggle();
	});

	$("#selection").select2({
		minimumResultsForSearch: -1
	});
});



