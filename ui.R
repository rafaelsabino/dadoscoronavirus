# ************************************************************************* ----
# UI                                                                        ----
# ************************************************************************* ----

fluidPage(
 
  # Titulo do App ==============================================================
  
  #title = "Projeto Dados Coronavírus",
  
  # Funcionalidades ============================================================
  
  # Allow to use functions from 'shinydashboard' into a classic 'shiny' app
  useShinydashboard(),
  
  # CSS ========================================================================

  #overallCSS,       # See global.R
  # footerCSS,        # See global.R
  
 # Navegacao ===================================================================
  navbarPage(
    
    # \__ Titulo ---------------------------------------------------------------
    
    #title = "Coronavírus: Casos Observados e Previsões para Estados e Brasil",
    title = "Projeto Dados Coronavírus: Casos de COVID-19 nos Estados e no Brasil",
    collapsible = FALSE,
    fluid = FALSE
  ),
 wellPanel( 
 #shinyWidgets::panel(
 tabsetPanel(
    type = "pills",
  
    # \__ Painel - Resumo ------------------------------------------------------
    tabPanel(title = "Resumo", pagina_resumo, value = "pagina-resumo"),
    
    
    # \__ Painel - Sobre ------------------------------------------------
    tabPanel(title = "Sobre o Projeto", uiOutput("markdown_sobre") %>% withSpinner(type = 8) , value = "sobre"),
    
    tabPanel(title = "Sugestões de Políticas Públicas", uiOutput("markdown_questoes") %>% withSpinner(type = 8) , value = "questoes"),
    
    # \__ Painel - Previsao ----------------------------------------------------
    #tabPanel(title = "Previsões", previsao, value = "previsao"),
    
    # \__ Painel - Fontes ------------------------------------------------------
    tabPanel(title = "Fontes", fontes, value = "fontes"),
    
    # \__ Painel - Dados Brutos ------------------------------------------------
    tabPanel(title = "Dados Brutos", dados_brutos, value = "dados-brutos")
    
    
    
  )
 ),
  
 # Footer ======================================================================
  hr(),
  div(
    class = "footer", 
    id = "myFooter",
    div(
      class = "container",
      fluidRow(
        # \__ Desenvolvimento --------------------------------------------------
        column(
          width = 6,
          a("Desenvolvido por: Gustavo Varela-Alvarenga - ",
            href = "https://www.ogustavo.com/pt/"),
          a("www.ogustavo.com", href = "https://www.ogustavo.com/pt/"),
          p("Versão Open Beta - v04.02")
        ),
        # \__ Comunicacao ------------------------------------------------------
        column(
          width = 6,
          p("Viu algum erro ou problema? Me mande uma mensagem:"),
          a("Twitter: @ogustavo_com", 
            href = "https://twitter.com/ogustavo_com"),
          br(),
          a("GitHub: gu-stat/dadoscoronavirus", 
            href = "https://github.com/gu-stat/dadoscoronavirus"),
          br(),
          p("E-mail: falecom at ogustavo.com")
        )
      )
    )
  )
  
)

# ************************************************************************* ####
# FIM                                                                       ####
# **************************************************************************** #