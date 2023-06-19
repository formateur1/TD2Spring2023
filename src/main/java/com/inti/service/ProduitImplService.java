package com.inti.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.inti.model.Produit;
import com.inti.util.HibernateUtil;

@Service
public class ProduitImplService implements IProduitService {
	
	private Session session;
	
	public ProduitImplService() {
		session = HibernateUtil.getSessionFactory().openSession();
	}

	@Override
	public List<Produit> getProduits() {
		List<Produit> listeP = new ArrayList<>();
		try {
			session.beginTransaction();
			
			listeP = session.createNativeQuery("select * from produit", Produit.class).list();
			
			session.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().commit();
		}
		return listeP;
	}

	@Override
	public void saveProduit(Produit p) {
		try {
			session.beginTransaction();
			
			session.save(p);
			
			session.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().commit();
		}		
	}

	@Override
	public Produit getProduit(int id) {
		Produit p = null;
		try {
			session.beginTransaction();
			
			p = session.get(Produit.class, id);
			
			session.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().commit();
		}
		return p;
	}

	@Override
	public void deleteProduit(int id) {
		try {
			session.beginTransaction();
			
			session.delete(session.get(Produit.class, id));
			
			session.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().commit();
		}		
	}
	
	@Override
	public void updateProduit(Produit p) {
		try {
			session.beginTransaction();
			
			session.update(p);
			
			session.getTransaction().commit();			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().commit();
		}		
	}

}
