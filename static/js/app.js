var $ = new BaseJS();

$.ready(function() {
	var result = $.select("#result");
	result.html("");
	$.select("#message").on("focus").call(function() {
		$.select("#wrap").css({
			border: "2px solid #0D2935"
		});
		$.select("#title").css({
			backgroundColor: "#0D2935",
			color: "#EEE"
		});
		$.select("#message").css({
			borderTop: "2px solid #0D2935"
		});
	});
	$.select("#message").on("keyup").call(function(e) {
		if (e.keyCode == 13 && this.value.trim() !== "") {
			$.http("/" + encodeURI(this.value)).get().ready(function(res) {
				if (res.readyState === 4 && res.status == 200) {
					txt = res.responseText;
					if (txt.trim() === "") {
						txt = "?";
					}
					result.append("<div class='bot'><span>" + txt + "</span></div>");
					result[0].scrollTop = result[0].scrollHeight;
				}
			});

			result.append("<div class='you'><span>" + this.value + "</span></div>");
			this.value = "";
			result[0].scrollTop = result[0].scrollHeight;
		}
	});
});