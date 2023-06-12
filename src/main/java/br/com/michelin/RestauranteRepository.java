package br.com.michelin;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RestauranteRepository extends JpaRepository<Restaurante, Long> {


    @Query( """ 
                SELECT r FROM Restaurante AS r WHERE r.tipo = :tipo
            """)
    List<Restaurante> filtraPorTipo(@Param("tipo") List<Tipo> tipo);

    List<Restaurante> findAllByTipo(Tipo tipo);
}
