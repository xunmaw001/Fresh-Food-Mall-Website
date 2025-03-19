package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShangpinxileiDao;
import com.entity.ShangpinxileiEntity;
import com.service.ShangpinxileiService;
import com.entity.vo.ShangpinxileiVO;
import com.entity.view.ShangpinxileiView;

@Service("shangpinxileiService")
public class ShangpinxileiServiceImpl extends ServiceImpl<ShangpinxileiDao, ShangpinxileiEntity> implements ShangpinxileiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinxileiEntity> page = this.selectPage(
                new Query<ShangpinxileiEntity>(params).getPage(),
                new EntityWrapper<ShangpinxileiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinxileiEntity> wrapper) {
		  Page<ShangpinxileiView> page =new Query<ShangpinxileiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinxileiVO> selectListVO(Wrapper<ShangpinxileiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinxileiVO selectVO(Wrapper<ShangpinxileiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinxileiView> selectListView(Wrapper<ShangpinxileiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinxileiView selectView(Wrapper<ShangpinxileiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
