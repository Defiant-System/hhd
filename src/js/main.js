
@import "./modules/test.js"


const hhd = {
	init() {
		// fast references
		this.content = window.find("content");

		// render content
		window.render({
			template: "reel",
			match: `//Data/Reel`,
			target: window.find(".reel"),
		});

		// DEV-ONLY-START
		Test.init(this);
		// DEV-ONLY-END
	},
	dispatch(event) {
		let Self = hhd,
			name;
		switch (event.type) {
			// system events
			case "window.init":
				break;
			// custom events
			case "open-help":
				karaqu.shell("fs -u '~/help/index.md'");
				break;
			case "open-app":
				let el = $(event.target);
				karaqu.shell(`win -o ${el.data("ns")}:${el.data("id")}`);
				break;
		}
	}
};


window.exports = hhd;
