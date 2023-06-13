package br.com.michelin;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RestauranteRepository extends JpaRepository<Restaurante, Long> {

    @Query( "SELECT r FROM Restaurante AS r WHERE r.tipo = :tipo ")
    List<Restaurante> filtraPorTipo(@Param("tipo") List<Tipo> tipo);
    List<Restaurante> findAllByTipo(Tipo tipo);

    @Modifying
    @Query("UPDATE Restaurante r SET r.ehFavorito = true WHERE r.id = :id")
    void setRestauranteFavorito(@Param("id")Long id);

    @Query("SELECT r FROM Restaurante AS r WHERE r.tipo = :tipo AND r.ehFavorito = true")
    List<Restaurante> trazPorTipoEFavorito(@Param("tipo") List<Tipo> tipo);

    @Modifying
    @Query("UPDATE Restaurante r SET r.ehFavorito = false WHERE r.id = :id")
    void setDesfavoritarRestaurante(@Param("id")Long id);

}
