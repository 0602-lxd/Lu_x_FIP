import { fetchData, postData } from "./components/TheDataMiner.js";
import itemCard from "./components/itemCard.js";
import VideoComponent from "./components/VideoComponent.js";
import NavListComponent from "./components/NavListComponent.js";


(() => {

	let vue_vm = new Vue({
		// link Vue to an element in our HTML
		//el: "#app",

		data: {
			portfolio: [],
			msgInfo: [],
			imgList: [], 
			navList: [
				{ name: 'HOME', url: 'index.html' },
				{ name: 'GALLERY', url: 'gallery.html' },
				{ name: 'ABOUT', url: 'about.html' }
			], 
			showView: false, // show the lighebox
			video: "",
			vvvv: "https://www.runoob.com/try/demo_source/movie.mp4",
			videoDisplay: "display:none",
			iframeDisplay: "display:none",
			form: {
				name: "",
				email: "",
				subject: "",
				message: ""
			},
			showpng: [],
		},
		beforeDestroy() {
			
			window.onresize = null
		},

		// this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
		mounted: function () {
			this.changeBlock()
			window.onresize = (e) => {
				this.changeBlock()
			}
			fetchData("./config/index.php")
				.then(data => {

					this.portfolio = []
					data.forEach(item =>
						this.portfolio.push(item)
					);
					this.video = data[10].VideoUrl;
					if (this.video.length > 0) {
						if (this.video.endsWith('mp4')) {
							this.videoDisplay = "display:block";
						} else {
							this.iframeDisplay = "display:block";
						}
					}

				})
				.catch(err => console.error(err));
		},

		// run a method when we change our view (update the DOM with Vue)
		updated: function () {
			console.log('Vue just updated the DOM');
		},
		methods: {
			clickClose() {
				document.querySelector('.lineNavWrap').style.display = 'none';
			},
			getVideoPath(fileName) {
				if (fileName) {
					let vdo = document.getElementById("playVideos")
					vdo.src = "video/" + fileName;
					return "video/" + fileName;
				}
			},
			changeBlock() {
				if (window.visualViewport.width <= 660) {
					document.querySelector('.titleRight').style.display = 'none';
					document.querySelector('.lineNav').style.display = 'inherit';
				} else {
					document.querySelector('.titleRight').style.display = 'inherit';
					document.querySelector('.lineNav').style.display = 'none';
				}
			},
			checkCenter(item) {
				console.log("click");
				this.showView = true
				fetchData("./config/index.php?id=" + item.ID)
					.then(data => {
						console.log(data);
						if (data && data.length > 0) {
							this.msgInfo = data[0]
							this.imgList = data[0].Images.split(',')
						}

					})
					.catch(err => console.error(err));
			},
			checkCard(item) {
				this.msgInfo = item
				this.imgList = item.Images.split(',')
				this.showView = true
				console.log(item);
				console.log(this.msgInfo);
				

				this.showpng = this.msgInfo.ProcessImg.split(',')
			},
			clickLine() {
				document.querySelector('.lineNavWrap').style.display = 'inherit';
			},
			checkSubmit() {
				if (this.form.name.length < 1) {
					alert(" Name cannot be empty!");
					return;
				}
				if (this.form.email.length < 1) {
					alert(" Email cannot be empty!");
					return;
				}
				if (this.form.subject.length < 1) {
					alert("  subject cannot be empty!");
					return;
				}
				if (this.form.message.length < 1) {
					alert("  message cannot be empty!");
					return;
				}

				postData("./config/mail.php", this.form)
					.then(data => {

						if (data.code != 0) {
							alert(data.message);
						} else {
							alert(data.message);
						}

					})
					.catch(err => console.log(err));

			}
		},

		components: {
			"VideoComponent": VideoComponent,
			"NavList": NavListComponent,
			"card": itemCard
		}
	}).$mount("#app"); // also connects Vue to your wrapper in HTML


	// document.getElementById('centerImg').onclick=(e)=>{
	// 	console.log(e.target);
	// }


})();