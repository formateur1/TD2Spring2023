package com.inti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.inti.model.Produit;
import com.inti.service.IProduitService;

@Controller
@RequestMapping("produit")
public class ProduitController {
	
	@Autowired
	IProduitService ips;
	
	@GetMapping("affichage")
	public String affichageNomProduit(@RequestParam(value = "nom", required = false, defaultValue = "Iphone 14") String nom, Model m)
	{
		m.addAttribute("nom", nom);
		
		return "affichageNomProduit";
	}
	
	@GetMapping("prix")
	public String affichagePrixProduit(@RequestParam(value = "prix", defaultValue = "1299.99") double prix, Model m)
	{
		m.addAttribute("prix", prix);
		
		return "affichagePrixProduit";
	}
	
	@GetMapping("calcule")
	public String affichageCalculProduit(@RequestParam(value = "nom", required = false, defaultValue = "Iphone 14") String nom,
			@RequestParam(value = "prix", defaultValue = "1299.99") double prix, Model m)
	{
		m.addAttribute("nom", nom);
		m.addAttribute("prixHT", prix);
		m.addAttribute("prixTTC", 1.186 * prix);
		
		return "affichageCalculProduit";
	}
	
	@GetMapping("ajoutProduit")
	public String ajoutProduit()
	{
		return "ajoutProduit";
	}
	
	@PostMapping("ajoutProduit")
	public String ajoutProduit(@ModelAttribute("produit") Produit p)
	{
		ips.saveProduit(p);
		
		return "redirect:ajoutProduit";
	}
	
	@GetMapping("produits")
	public String getProduits(Model m)
	{
		m.addAttribute("listeP", ips.getProduits());
		
		return "produits";
	}
	
	@GetMapping("deleteProduit/{id}")
	public String deleteP(@PathVariable("id") int id)
	{
		ips.deleteProduit(id);
		
		return "redirect:/produit/produits";
	}
	
	@GetMapping("modifierProduit/{id}")
	public String modifierProduit(Model m, @PathVariable("id") int id)
	{
		m.addAttribute("p1", ips.getProduit(id));
		
		return "modifierProduit";
	}
	
	@PostMapping("modifierProduit")
	public String modifierProduit(@ModelAttribute("produit") Produit p)
	{
		ips.updateProduit(p);
		
		return "redirect:/produit/produits";
	}

}
