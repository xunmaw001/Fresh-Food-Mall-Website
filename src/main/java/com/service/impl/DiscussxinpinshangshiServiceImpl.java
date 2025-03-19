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


import com.dao.DiscussxinpinshangshiDao;
import com.entity.DiscussxinpinshangshiEntity;
import com.service.DiscussxinpinshangshiService;
import com.entity.vo.DiscussxinpinshangshiVO;
import com.entity.view.DiscussxinpinshangshiView;

@Service("discussxinpinshangshiService")
public class DiscussxinpinshangshiServiceImpl extends ServiceImpl<DiscussxinpinshangshiDao, DiscussxinpinshangshiEntity> implements DiscussxinpinshangshiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxinpinshangshiEntity> page = this.selectPage(
                new Query<DiscussxinpinshangshiEntity>(params).getPage(),
                new EntityWrapper<DiscussxinpinshangshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxinpinshangshiEntity> wrapper) {
		  Page<DiscussxinpinshangshiView> page =new Query<DiscussxinpinshangshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxinpinshangshiVO> selectListVO(Wrapper<DiscussxinpinshangshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxinpinshangshiVO selectVO(Wrapper<DiscussxinpinshangshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxinpinshangshiView> selectListView(Wrapper<DiscussxinpinshangshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxinpinshangshiView selectView(Wrapper<DiscussxinpinshangshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
