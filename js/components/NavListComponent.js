export default {
    name: "VideoComponent",
    props: {
    	name:'',
    	url:''
	},
    template: `
        <p @click="clickClose"> <a :href="url">{{name}}</a> </p>
    `,
    created: function () {
        console.log(  this.name );
    },
    methods: {
        clickClose () {
            document.querySelector('.lineNavWrap').style.display = 'none';
        },
    }
}