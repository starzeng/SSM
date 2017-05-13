//------------- login.js -------------//
$(document).ready(function() {

	//for custom checkboxes
	$('input').not('.noStyle').iCheck({
        checkboxClass: 'icheckbox_flat-green'
    });

	//validate login form 
	$("#login-form").validate({
		ignore: null,
		ignore: 'input[type="hidden"]',
		errorPlacement: function(error, element) {
			wrap = element.parent();
			wrap1 = wrap.parent();
			if (wrap1.hasClass('checkbox')) {
				error.insertAfter(wrap1);
			} else {
				if (element.attr('type')=='file') {
					error.insertAfter(element.next());
				} else {
					error.insertAfter(element);
				}
			}
		}, 
		errorClass: 'help-block',
		rules: {
			username: {
				required: true,
				rangelength:[6,20],
//				lettersonly: true,
				remote: {
			        url: "check-email.php",
			        type: "post",
			        data: {// 传给后台的数据
			        	username:  $("#username").val(),
			        }
			    }
			},
			password: {
				required: true,
				rangelength:[6,20],
//				lettersonly: true,
				
			}
		},
		messages: {
			username: {
		        required: '请输入用户名',
		        rangelength: '请输入6-20个英文字符',
		        lettersonly: '请输入6-20个英文字符',
		        remote: '该用户名已被使用'
		    },
			password: {
				required: '请输入用户名',
				rangelength: '请输入6-20个英文字符',
		        lettersonly: '请输入6-20个英文字符',
			},
		},
		highlight: function(element) {
			if ($(element).offsetParent().parent().hasClass('form-group')) {
				$(element).offsetParent().parent().removeClass('has-success').addClass('has-error');
			} else {
				if ($(element).attr('type')=='file') {
					$(element).parent().parent().removeClass('has-success').addClass('has-error');
				}
				$(element).offsetParent().parent().parent().parent().removeClass('has-success').addClass('has-error');
				
			}
	    },
	    unhighlight: function(element,errorClass) {
	    	if ($(element).offsetParent().parent().hasClass('form-group')) {
	    		$(element).offsetParent().parent().removeClass('has-error').addClass('has-success');
		    	$(element.form).find("label[for=" + element.id + "]").removeClass(errorClass);
	    	} else if ($(element).offsetParent().parent().hasClass('checkbox')) {
	    		$(element).offsetParent().parent().parent().parent().removeClass('has-error').addClass('has-success');
	    		$(element.form).find("label[for=" + element.id + "]").removeClass(errorClass);
	    	} else if ($(element).next().hasClass('bootstrap-filestyle')) {
	    		$(element).parent().parent().removeClass('has-error').addClass('has-success');
	    	}
	    	else {
	    		$(element).offsetParent().parent().parent().removeClass('has-error').addClass('has-success');
	    	}
		}
	});

});