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


import com.dao.XinpinshangshiDao;
import com.entity.XinpinshangshiEntity;
import com.service.XinpinshangshiService;
import com.entity.vo.XinpinshangshiVO;
import com.entity.view.XinpinshangshiView;

@Service("xinpinshangshiService")
public class XinpinshangshiServiceImpl extends ServiceImpl<XinpinshangshiDao, XinpinshangshiEntity> implements XinpinshangshiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XinpinshangshiEntity> page = this.selectPage(
                new Query<XinpinshangshiEntity>(params).getPage(),
                new EntityWrapper<XinpinshangshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XinpinshangshiEntity> wrapper) {
		  Page<XinpinshangshiView> page =new Query<XinpinshangshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XinpinshangshiVO> selectListVO(Wrapper<XinpinshangshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XinpinshangshiVO selectVO(Wrapper<XinpinshangshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XinpinshangshiView> selectListView(Wrapper<XinpinshangshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XinpinshangshiView selectView(Wrapper<XinpinshangshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
