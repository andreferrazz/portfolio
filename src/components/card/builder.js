/** @type {HTMLTemplateElement} */
const template = document.getElementById("card").content

export default function create(project) {
    const clone = template.cloneNode(true)
    const root = clone.firstElementChild
    const title = clone.querySelector("h4")
    const description = clone.querySelector("p")

    title.textContent = project.title
    description.textContent = project.description

    for (const icon of project.icons) {
        const i = document.createElement("i")
        i.className = icon.name
        root.insertBefore(i, root.firstChild)
    }

    for (const link of project.links) {
        const a = document.createElement("a")
        a.href = link.url
        a.textContent = link.label
        root.appendChild(a)
    }

    return clone
}
