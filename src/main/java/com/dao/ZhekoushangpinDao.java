package com.dao;

import com.entity.ZhekoushangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhekoushangpinVO;
import com.entity.view.ZhekoushangpinView;


/**
 * 折扣商品
 * 
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface ZhekoushangpinDao extends BaseMapper<ZhekoushangpinEntity> {
	
	List<ZhekoushangpinVO> selectListVO(@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);
	
	ZhekoushangpinVO selectVO(@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);
	
	List<ZhekoushangpinView> selectListView(@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);

	List<ZhekoushangpinView> selectListView(Pagination page,@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);
	
	ZhekoushangpinView selectView(@Param("ew") Wrapper<ZhekoushangpinEntity> wrapper);
	
}
