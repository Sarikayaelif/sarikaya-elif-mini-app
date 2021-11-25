import TheInteriorComponent from "./TheInteriorComponent.js";
import TheExteriorComponent from "./TheExteriorComponent.js";
import TheAccessoriesComponent from "./TheAccessoriesComponent.js";
import InteriorComponent from "./TheInteriorComponent.js";
import ExteriorComponent from "./TheExteriorComponent.js";
import AccessoriesComponent from "./TheAccessoriesComponent.js";

export default {
    name: "TheLightboxComponent",

    props: ["piece"],

    computed: {
        activeComponent:function() {
            return `${this.piece.type + "Component"}`;
        }
    },
        

    template:`
        <section class="lightboxWrapper">
            <i @click="closeMe" class="fa-solid fa-circle-xmark" ></i>
            
            <img :src='"images/" + piece.banner' :alt="piece.model">
            <div id="description">
                <h1>Model: {{piece.model}}</h1>
                <p>{{piece.description}}</p>
            </div>
            <component v-if= "piece.type" :is="activeComponent"></component>
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
        InteriorComponent: TheInteriorComponent,
        ExteriorComponent: TheExteriorComponent,
        AccessoriesComponent: TheAccessoriesComponent
    }
}