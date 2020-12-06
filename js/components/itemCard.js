export default {
    name: "itemCard",

    props: ["card"],

    template: 
    `<div class="listImg"  @click="logClicked(card)">
					<img :src="'images/'+card.Cover"/>
					<div class="listimgTitle">
						<p>{{card.Title}}</p>
						<p>{{card.Subtitle}}</p>
					</div>
				</div>
		`,

    created: function () {
        console.log(`created ${this.card.Title}'s card`);
    },

    methods: {
        logClicked(card) {
            this.$emit('check',card)
            // console.log(`fired from inside ${this.showView}'s component!`);
        }
    }
}