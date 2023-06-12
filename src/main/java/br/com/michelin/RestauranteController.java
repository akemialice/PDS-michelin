package br.com.michelin;

import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
public class RestauranteController {

    private RestauranteRepository restauranteRepository;

    public RestauranteController(RestauranteRepository restauranteRepository) {
        this.restauranteRepository = restauranteRepository;
    }

    @GetMapping("/restaurantes")
    public String lista(Model model) {
        model.addAttribute("rapidas", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.REFEICOES_RAPIDAS)).toList()));
        model.addAttribute("bares", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.BARES_E_POPULARES)).toList()));
        model.addAttribute("cafeterias", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.CAFETERIAS)).toList()));
        model.addAttribute("hamburguerias", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.HAMBURGUERIAS)).toList()));
        model.addAttribute("veganos", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.VEGANOS_E_VEGETARIANOS)).toList()));
        model.addAttribute("frutos", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.FRUTOS_DO_MAR)).toList()));
        model.addAttribute("outras", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.OUTRAS_CULINARIAS)).toList()));
        model.addAttribute("alta", restauranteRepository.filtraPorTipo(Arrays.stream(Tipo.values()).filter(t -> t.equals(Tipo.ALTA_GASTRONOMIA)).toList()));
        model.addAttribute("favorito", new RestauranteFavoritoForm());
        return "restaurantesLista";
    }

    @Transactional
    @PostMapping("/restaurantes")
    public String editFavorito(RestauranteFavoritoForm form){
        Optional<Restaurante> restaurante = restauranteRepository.findById(form.getId());

        form.update(restaurante.get(), restauranteRepository);
        return "redirect:/restaurantes";
    }


    @GetMapping("/cadastraRestaurante")
    public String novo(Model model) {
        model.addAttribute("restauranteForm", new RestauranteForm());
        model.addAttribute("tipo", Tipo.values());
        return "restauranteForm";
    }

    @Transactional
    @PostMapping("/cadastraRestaurante")
    public String novo(@Valid RestauranteForm form, Model model, BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            return novo(model);
        }
        restauranteRepository.save(form.toModel());

            return "redirect:/cadastraRestaurante";
    }

}
