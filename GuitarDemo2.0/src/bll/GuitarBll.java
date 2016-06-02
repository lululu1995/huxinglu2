package bll;

import dal.GuitarDal;
import entity.Inventory;

public class GuitarBll {
	public static Inventory inventory()       //初始化inventory 获取所有吉他加载到inventory内
	{
		return GuitarDal.inventory();
	}
}