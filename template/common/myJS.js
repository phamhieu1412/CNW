//sticky:khi scroll menu đóng cứng
$(document).ready(function () {
	//sticky 
	$('.story-area').waypoint(function (direction) {
		if( direction == "down"){
			$('header').addClass('sticky');
		}
		else {
			$('header').removeClass('sticky');
		}
		},{
			offset:'100px'
		}
		)
	}
);