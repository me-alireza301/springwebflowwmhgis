package pdm.dao;

import java.util.Iterator;
import java.util.List;

import java.util.Vector;


import org.richfaces.model.TreeNodeImpl;

import pdm.Utils.PdmLog;
import pdm.beans.TaxElement;

/**
 * DAO dla TaxElement
 * 
 * @author pkonstanczuk
 * 
 */
public class TaxElementDAO extends DAO<TaxElement> {
/**
 * Funkcja zwraca obiekt TaxElement o podanym Id
 * @param id
 * @return
 */
	public TaxElement get(Integer id) {
		
		for ( TaxElement t : getObjects())
			if (t.getId() == id)
				return t;
		// nie powinno nigdy sie zdarzyc
		PdmLog.getLogger().error("tax element DAO get zwrocilo null");
		return null;

	}

	private static final long serialVersionUID = -8287601353701236138L;

	/**
	 * Funkcja zwraca cala zawartosc tabeli DAO
	 * 
	 * @return
	 */

	@Override
	public List<TaxElement> getObjects() {
		// PdmLog.getLogger().info("Trying to connect to DB");
		try {
			if (objects == null || objects.isEmpty()) {

				objects = hibernateTemplate.loadAll(TaxElement.class);
				hibernateTemplate.flush();
			}
			return objects;
		} catch (Exception e) {
			e.printStackTrace();
			PdmLog.getLogger().error(
					"Error in Hibernate, TaxElementDAO.getObjects "
							+ e.getStackTrace());
			return null;
		}
	}

	/**
	 * Funkcja zwraca taksonomie w postaci zrozumialej dla GUI
	 * 
	 * @return
	 */
	public Vector<TreeNodeImpl<TaxElement>> getTreeObjects() {
		Vector<TreeNodeImpl<TaxElement>> treeObjects = new Vector<TreeNodeImpl<TaxElement>>();
		for (int i = 0; i < getObjects().size(); i++) {
			TreeNodeImpl<TaxElement> tmp = new TreeNodeImpl<TaxElement>();
			getObjects().get(i).setTreeHolder(tmp);
			tmp.setData(getObjects().get(i));
			treeObjects.add(tmp);

		}

		return treeObjects;
	}

	/**
	 * Funkcja wymusza, ponowne pobranie danych z bazy(czyszczenie cache)
	 */
	public void reset() {
		objects = null;
	}

	/**
	 * Funkcja zwraca liczbe taksonomii
	 * 
	 * @return
	 */
	public int taxonomiesCount() {
		// hibernateTemplate.find("from test.Product product where product.category=?",
		// category);

		String sql = " select t.id from TaxElement t  where t.parent is null";
		Integer size = hibernateTemplate.find(sql).size();
		// hibernateTemplate.findByCriteria(criteria)
		return size;

		// return results;
	}

	/**
	 * Funkcja zwraca Id instancji taksonomii bedacej podtaksonomiami podanej
	 * 
	 * @param a
	 * @return
	 */
	public Vector<Integer> taxonomyAll(int a) {
		boolean added = true;
		Vector<Integer> all = new Vector<Integer>();
		all.add(a);

		while (added) {
			added = false;
			for (int i = 0; i < all.size(); i++) {

				String sql = "t.id  from TAXELEMENT t where t.parentid =  "
						+ all.get(i);
				@SuppressWarnings("unchecked")
				List<Object> tmp = hibernateTemplate.find(sql);
				Iterator<Object> tmpIt = tmp.iterator();
				while (tmpIt.hasNext()) {
					Integer tmpInteger = (Integer) tmpIt.next();
					if (!all.contains(tmpInteger)) {
						all.add(tmpInteger);
						added = true;
					}

				}
			}
		}

		return all;
	}

}
