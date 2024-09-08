;(function () {
  const getVersion = () => {
    try {
      const url = new URL(window.location.href)

      const queryParams = new URLSearchParams(url.search)

      if (queryParams.has("v")) {
        const version = queryParams.get("v")

        return version
      }
    } catch (error) {}
  }

  const attachVersion = () => {
    const version = getVersion()

    if (version) {
      const element = document.createElement("p")
      element.innerHTML = `App version: <span class="text-gradient">${version}</span>`

      document.querySelector("main").appendChild(element)

      document.title = `${document.title} - version: ${version}`
    }
  }

  attachVersion()
})()
