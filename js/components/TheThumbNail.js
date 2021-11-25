export default {
    name: "TheThumbnailComponent",

    props: ["piece"],

    template: `
    <div @click="showmydata" class="bio-panel">
        <div class="p_avatar">
        <img :src='"images/" + piece.image' :alt="piece.name">
        </div>

        <h2 class="p_name">{{ piece.model}}</h2>
       
    </div>
    `,

    methods: {
        showmydata() {
            debugger;
            this.$emit("showdata", this.piece);
        }
    }
}