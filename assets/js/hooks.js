let Hooks = {}

Hooks.FadeIn = {
  mounted() {
    this.el.classList.remove('opacity-0')
  }
}

export default Hooks
