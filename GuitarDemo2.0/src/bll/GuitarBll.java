package bll;

import dal.GuitarDal;
import entity.Inventory;

public class GuitarBll {
	public static Inventory inventory()       //��ʼ��inventory ��ȡ���м������ص�inventory��
	{
		return GuitarDal.inventory();
	}
}