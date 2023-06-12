package br.com.michelin;

public class RestauranteFavoritoForm {

    private Long id;
    private boolean ehFavorito;

    public void update(Restaurante restaurante, RestauranteRepository restauranteRepository){
       restaurante.setEhFavorito(ehFavorito);
       restauranteRepository.save(restaurante);
    }

    public boolean isEhFavorito() {
        return ehFavorito;
    }

    public void setEhFavorito(boolean ehFavorito) {
        this.ehFavorito = ehFavorito;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
