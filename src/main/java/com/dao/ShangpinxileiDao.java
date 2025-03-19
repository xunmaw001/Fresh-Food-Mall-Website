package com.dao;

import com.entity.ShangpinxileiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinxileiVO;
import com.entity.view.ShangpinxileiView;


/**
 * 商品细类
 * 
 * @author 
 * @email 
 * @date 2020-11-13 12:42:37
 */
public interface ShangpinxileiDao extends BaseMapper<ShangpinxileiEntity> {
	
	List<ShangpinxileiVO> selectListVO(@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);
	
	ShangpinxileiVO selectVO(@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);
	
	List<ShangpinxileiView> selectListView(@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);

	List<ShangpinxileiView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);
	
	ShangpinxileiView selectView(@Param("ew") Wrapper<ShangpinxileiEntity> wrapper);
	
}
