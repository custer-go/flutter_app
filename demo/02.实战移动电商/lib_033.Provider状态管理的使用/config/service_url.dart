// const serviceUrl = 'http://test.baixingliangfan.cn/baixing/';
// const serviceUrl= 'http://v.jspang.com:8088/baixing/';
const serviceUrl = 'https://wxmini.baixingliangfan.cn/baixing/';

const servicePath = {
  'homePageContent': serviceUrl + 'wxmini/homePageContent', //商店首页信息
  //  'homePageContent':serviceUrl+'wxmini/getHomePage',//商店首页信息
  'homePageBelowContent': serviceUrl + 'wxmini/homePageBelowConten', //商店首页火爆推荐
  'getCategory': serviceUrl + 'wxmini/getCategory', //商品类别信息
  'getMallGoods': serviceUrl + 'wxmini/getMallGoods', //商品分类商品列表
  'getGoodDetailById': serviceUrl + 'wxmini/getGoodDetailById', //商品详情
};
