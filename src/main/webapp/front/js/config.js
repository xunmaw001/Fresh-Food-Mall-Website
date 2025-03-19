
var projectName = '生鲜食品o2o商城系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的订单',
	url: '../order/list.html'
},

{
	name: '我的地址',
	url: '../address/list.html'
},

{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '商品信息',
	url: './pages/shangpinxinxi/list.html'
}, 
{
	name: '折扣商品',
	url: './pages/zhekoushangpin/list.html'
}, 
{
	name: '新品上市',
	url: './pages/xinpinshangshi/list.html'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmz4664/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true
cartFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商品分类","menuJump":"列表","tableName":"shangpinfenlei"}],"menu":"商品分类管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商品细类","menuJump":"列表","tableName":"shangpinxilei"}],"menu":"商品细类管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商品类型","menuJump":"列表","tableName":"shangpinleixing"}],"menu":"商品类型管理"},{"child":[{"buttons":["新增","查看","修改","删除","添加折扣"],"menu":"商品信息","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"折扣商品","menuJump":"列表","tableName":"zhekoushangpin"}],"menu":"折扣商品管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"新品上市","menuJump":"列表","tableName":"xinpinshangshi"}],"menu":"新品上市管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"商品评价","menuJump":"列表","tableName":"shangpinpingjia"}],"menu":"商品评价管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"kefuguanli"}],"menu":"系统管理"},{"child":[{"buttons":["查看"],"menu":"未支付订单","tableName":"weizhifudingdan"},{"buttons":["查看","修改"],"menu":"已支付订单","tableName":"yizhifudingdan"},{"buttons":["查看"],"menu":"已完成订单","tableName":"yiwanchengdingdan"},{"buttons":["查看"],"menu":"已取消订单","tableName":"yiquxiaodingdan"},{"buttons":["查看"],"menu":"已退款订单","tableName":"yituikuandingdan"},{"buttons":["查看"],"menu":"已发货订单","tableName":"yifahuodingdan"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"buttons":["查看"],"menu":"折扣商品列表","menuJump":"列表","tableName":"zhekoushangpin"}],"menu":"折扣商品模块"},{"child":[{"buttons":["查看"],"menu":"新品上市列表","menuJump":"列表","tableName":"xinpinshangshi"}],"menu":"新品上市模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["评价","查看"],"menu":"商品信息","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"商品评价","menuJump":"列表","tableName":"shangpinpingjia"}],"menu":"商品评价管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["查看"],"menu":"未支付订单","tableName":"weizhifudingdan"},{"buttons":["查看"],"menu":"已支付订单","tableName":"yizhifudingdan"},{"buttons":["查看"],"menu":"已完成订单","tableName":"yiwanchengdingdan"},{"buttons":["查看"],"menu":"已取消订单","tableName":"yiquxiaodingdan"},{"buttons":["查看"],"menu":"已退款订单","tableName":"yituikuandingdan"},{"buttons":["查看","修改"],"menu":"已发货订单","tableName":"yifahuodingdan"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"buttons":["查看"],"menu":"折扣商品列表","menuJump":"列表","tableName":"zhekoushangpin"}],"menu":"折扣商品模块"},{"child":[{"buttons":["查看"],"menu":"新品上市列表","menuJump":"列表","tableName":"xinpinshangshi"}],"menu":"新品上市模块"}],"roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
