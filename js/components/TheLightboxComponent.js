import TheAudioComponent from "./TheAudioComponent.js";
import AudioComponent from "./TheAudioComponent.js";
import TheVideoComponent from "./TheVideoComponent.js";
import VideoComponent from "./TheVideoComponent.js";

export default {
    name: "TheLightboxComponent",

    props: ["piece"],

    computed: {
        activeComponent:function() {
            return `${this.piece.mediaType + "Component"}`;
        }
    },
        

    template:`
        <section class="lightboxWrapper">
            <i @click="closeMe" class="fa-solid fa-circle-xmark"></i>
            <component v-if= "piece.mediaType" :is="activeComponent"></component>
            
            <img :src='"images/" + piece.banner' :alt="piece.model">
            <h1>Model: {{piece.model}}</h1>

            <p>{{piece.description}}</p>
            
        </section>
         `
    ,

    methods: {
        closeMe() {
            //document.querySelector(".lightbox").classList.remove('visible');
        this.$emit("closelb")
        }
    },
    components: {
        AudioComponent: TheAudioComponent,
        VideoComponent: TheVideoComponent
    }
}