import "./components/theme-changer/main.js"
import createCard from "./components/card/main.js"
import { projects } from "./db.js"

const cards = projects.map(createCard)
document.querySelector(".grid").append(...cards)
