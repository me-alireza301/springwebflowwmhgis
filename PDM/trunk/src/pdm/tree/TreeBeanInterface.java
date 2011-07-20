package pdm.tree;

import java.io.Serializable;

import org.richfaces.event.NodeSelectedEvent;
import org.richfaces.model.TreeNodeImpl;
import pdm.beans.TaxElement;
import pdm.dao.SearchResultDAO;
import pdm.dao.TaxElementDAO;

/**
 * Interfejs warstwy po�rednia mi�dzy widokiem GUI, a warstw� danych (DAO)
 * 
 * @author pkonstanczuk
 */
public interface TreeBeanInterface extends Serializable {

	/**
	 * Przetwarzanie zdarzenia zaznaczenia w�z�a na drzewie taksonomii
	 * 
	 * @param event
	 *            zdarzenie zaznaczenia w�z�a
	 */
	public abstract void processSelection(NodeSelectedEvent event);

	/**
	 * Funkcja zwracaj�ca drzewo taksonomii, wywolywana przez GUI aplikacji
	 */
	public abstract TreeNodeImpl<TaxElement> getRootNode();

	/**
	 * Funkcja ustawiaj�ca drzewo taksonomii
	 */
	public abstract void setRootNode(TreeNodeImpl<TaxElement> rootNode);

	/**
	 * Setter TaxElementDAO
	 */
	public abstract void setTaxElementDAO(TaxElementDAO taxElementDAO);

	/**
	 * Getter TaxElementDAO
	 */
	public abstract TaxElementDAO getTaxElementDAO();

	/**
	 * Setter SearchResultDAO
	 */
	public abstract void setSearchResultDAO(SearchResultDAO searchResultDAO);

	/**
	 * Getter SearchResultDAO
	 */
	public abstract SearchResultDAO getSearchResultDAO();

	/**
	 * Setter SelectedNode(wybranej ga��zi drzewa taksonomii - obs�uga GUI)
	 */
	public abstract void setSelectedNode(TaxElement selectedNode);

	/**
	 * Getter SelectedNode(wybranej ga��zi drzewa taksonomii - obs�uga GUI)
	 */
	public abstract TaxElement getSelectedNode();

}