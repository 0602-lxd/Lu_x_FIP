export default {
    name: "VideoComponent",
    props: {
    	video:'',
    	videoDisplay:''
	},
    template: `
		<video id="playVideos" class="video_" controls preload="auto"  :style="videoDisplay">
			<source id="playVideosss" :src="video" type="video/mp4">
		</video>
    `,
    created: function () {
        console.log(  this.video );
    }, 
}