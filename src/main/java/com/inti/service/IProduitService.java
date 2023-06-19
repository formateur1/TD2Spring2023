package com.inti.service;

import java.util.List;

import com.inti.model.Produit;

public interface IProduitService {
	
	List<Produit> getProduits();
	void saveProduit(Produit p);
	Produit getProduit(int id);
	void deleteProduit(int id);
	void updateProduit(Produit p);

}
