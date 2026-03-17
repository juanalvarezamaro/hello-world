defmodule HelloWorldWeb.PageLive do
  use HelloWorldWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, connected: connected?(socket))}
  end

  def render(assigns) do
    ~H"""
    <div class="min-h-screen bg-gradient-to-br from-slate-50 to-indigo-50 flex items-center justify-center p-4">
      <div
        id="welcome-card"
        phx-hook="FadeIn"
        class="bg-white rounded-3xl shadow-2xl p-8 md:p-12 max-w-2xl w-full border border-slate-100 transition-all duration-1000 opacity-0"
      >
        <div class="flex flex-col items-center text-center space-y-8">
          <!-- Status Badge -->
          <div class="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-slate-50 border border-slate-100 text-xs font-medium text-slate-600">
            <span class="relative flex h-2 w-2">
              <span class="animate-pulse absolute inline-flex h-full w-full rounded-full bg-green-400 opacity-75">
              </span>
              <span class="relative inline-flex rounded-full h-2 w-2 bg-green-500"></span>
            </span>
            System Online
          </div>
          
    <!-- Hero Unit -->
          <div class="space-y-4">
            <h1 class="text-6xl md:text-7xl font-extrabold tracking-tight text-slate-900">
              Hello <span class="text-indigo-600">World</span>
            </h1>
            <p class="text-slate-500 text-lg md:text-xl max-w-md mx-auto">
              Bienvenido a la nueva era del desarrollo. Potenciado por Elixir, Phoenix y LiveView.
            </p>
          </div>
          
    <!-- CTA -->
          <button
            phx-click={JS.push("start")}
            class="group relative inline-flex items-center justify-center px-8 py-4 font-bold text-white transition-all duration-200 bg-indigo-600 font-pj rounded-xl focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-600 hover:scale-105 active:scale-95"
          >
            Comenzar
          </button>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("start", _params, socket) do
    {:noreply, put_flash(socket, :info, "¡Iniciando sistema!")}
  end
end
