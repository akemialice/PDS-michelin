package br.com.michelin;

public enum Tipo {

    REFEICOES_RAPIDAS("Refeições rápidas"),
    BARES_E_POPULARES("Bares e populares"),
    CAFETERIAS("Cafeterias"),
    HAMBURGUERIAS("Hamburguerias"),
    VEGANOS_E_VEGETARIANOS("Veganos e vegetarianos"),
    FRUTOS_DO_MAR("Frutos do mar"),
    OUTRAS_CULINARIAS("Outras culinárias"),
    ALTA_GASTRONOMIA("Alta gastronomia");

    private String displayName;

    public String getDisplayName() {
        return displayName;
    }

    Tipo(String displayName) {
        this.displayName = displayName;
    }
}
