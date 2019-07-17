Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A1A6B613
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 07:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmiZ8G8qSoek/EfFNEswy81Oj/2MLrsn6ANW3SIELxg=; b=pvJ+LJUQ8Jp+jS
	+g7Ux9rUSYHvvHh0pESNkf97jDV616Lqask162N19ywVKKLL+ECxZEJEPpmKXqxeJZDXZNB6qq4Q3
	76Z+Q0YOFm7kIScwtNB4X9ZEOFlB/I7rJpYofNhwMQsxWzM2rK/1x73gjjWVlS00AnTSld83s+fO3
	zNE1L9Kkth0KXO2wpAiRQ6w4+Pb5EBkLOj3rk19q0Weu6xrsbGgY927abazsnZiZV5+sy/gvTob1Z
	Erj+BDLr1Tg2jVWVAoF2wLbGMDcmOZe4zYNhD6MtIyivCmnc0Bk8m2gUIBfZMl+KxgZr1Ho5k1X72
	/FgUllwkOBinNnVGJbOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncm9-0001se-Tz; Wed, 17 Jul 2019 05:46:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncls-0001ro-CG; Wed, 17 Jul 2019 05:46:34 +0000
X-UUID: 534b279ea9c14c43b4cb305d3649627d-20190716
X-UUID: 534b279ea9c14c43b4cb305d3649627d-20190716
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1556648691; Tue, 16 Jul 2019 21:46:29 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 22:46:28 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 13:46:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 13:46:24 +0800
Message-ID: <1563342384.29169.17.camel@mtksdaap41>
Subject: Re: [PATCH v4, 13/33] drm/mediatek: add mmsys private data for ddp
 path config
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 13:46:24 +0800
In-Reply-To: <1562625253-29254-14-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-14-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CD108A1D498F834BBDB07C583BC6D74ECB33048701C53901EC83317A091C174A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_224632_430637_FFCD20B4 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Tue, 2019-07-09 at 06:33 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add mmsys private data for ddp path config
> all these register offset and value will be different in future SOC
> add these define into mmsys private data
> 	u32 ovl0_mout_en;
> 	u32 rdma0_sout_sel_in;
> 	u32 rdma0_sout_color0;
> 	u32 rdma1_sout_sel_in;
> 	u32 rdma1_sout_dpi0;
> 	u32 rdma1_sout_dsi0;
> 	u32 dpi0_sel_in;
> 	u32 dpi0_sel_in_rdma1;
> 	u32 dsi0_sel_in;
> 	u32 dsi0_sel_in_rdma1;
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 ++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 89 ++++++++++++++++++++++++---------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  5 ++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  3 ++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  3 ++
>  5 files changed, 79 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index e520b56..5eac376 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -49,6 +49,7 @@ struct mtk_drm_crtc {
>  	bool				pending_planes;
>  
>  	void __iomem			*config_regs;
> +	const struct mtk_mmsys_reg_data *mmsys_reg_data;
>  	struct mtk_disp_mutex		*mutex;
>  	unsigned int			ddp_comp_nr;
>  	struct mtk_ddp_comp		**ddp_comp;
> @@ -270,6 +271,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  	DRM_DEBUG_DRIVER("mediatek_ddp_ddp_path_setup\n");
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
>  		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
> +					 mtk_crtc->mmsys_reg_data,
>  					 mtk_crtc->ddp_comp[i]->id,
>  					 mtk_crtc->ddp_comp[i + 1]->id);
>  		mtk_disp_mutex_add_comp(mtk_crtc->mutex,
> @@ -318,6 +320,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	mtk_disp_mutex_disable(mtk_crtc->mutex);
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
>  		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
> +					      mtk_crtc->mmsys_reg_data,
>  					      mtk_crtc->ddp_comp[i]->id,
>  					      mtk_crtc->ddp_comp[i + 1]->id);
>  		mtk_disp_mutex_remove_comp(mtk_crtc->mutex,
> @@ -549,6 +552,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  		return -ENOMEM;
>  
>  	mtk_crtc->config_regs = priv->config_regs;
> +	mtk_crtc->mmsys_reg_data = priv->data->reg_data;
>  	mtk_crtc->ddp_comp_nr = path_len;
>  	mtk_crtc->ddp_comp = devm_kmalloc_array(dev, mtk_crtc->ddp_comp_nr,
>  						sizeof(*mtk_crtc->ddp_comp),
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 47b3e35..7819fd31 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -175,6 +175,19 @@ struct mtk_ddp {
>  	const struct mtk_ddp_data	*data;
>  };
>  
> +struct mtk_mmsys_reg_data {
> +	u32 ovl0_mout_en;
> +	u32 rdma0_sout_sel_in;
> +	u32 rdma0_sout_color0;
> +	u32 rdma1_sout_sel_in;
> +	u32 rdma1_sout_dpi0;
> +	u32 rdma1_sout_dsi0;
> +	u32 dpi0_sel_in;
> +	u32 dpi0_sel_in_rdma1;
> +	u32 dsi0_sel_in;
> +	u32 dsi0_sel_in_rdma1;
> +};

rdma0_sout_sel_in, rdma0_sout_color0, and rdma1_sout_dsi0 are not used
in this patch, so remove from this patch.

> +
>  static const unsigned int mt2701_mutex_mod[DDP_COMPONENT_ID_MAX] = {
>  	[DDP_COMPONENT_BLS] = MT2701_MUTEX_MOD_DISP_BLS,
>  	[DDP_COMPONENT_COLOR0] = MT2701_MUTEX_MOD_DISP_COLOR,
> @@ -253,17 +266,34 @@ struct mtk_ddp {
>  	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
>  };
>  
> -static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
> +const struct mtk_mmsys_reg_data mt2701_mmsys_reg_data = {
> +	.ovl0_mout_en = DISP_REG_CONFIG_DISP_OVL_MOUT_EN,
> +	.dsi0_sel_in = DISP_REG_CONFIG_DSI_SEL,
> +	.dsi0_sel_in_rdma1 = DSI_SEL_IN_RDMA,
> +};
> +
> +const struct mtk_mmsys_reg_data mt8173_mmsys_reg_data = {
> +	.ovl0_mout_en = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN,
> +	.rdma1_sout_sel_in = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN,
> +	.rdma1_sout_dpi0 = RDMA1_SOUT_DPI0,
> +	.dpi0_sel_in = DISP_REG_CONFIG_DPI_SEL_IN,
> +	.dpi0_sel_in_rdma1 = DPI0_SEL_IN_RDMA1,
> +	.dsi0_sel_in = DISP_REG_CONFIG_DSIE_SEL_IN,
> +	.dsi0_sel_in_rdma1 = DSI0_SEL_IN_RDMA1,
> +};
> +
> +static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
> +				    enum mtk_ddp_comp_id cur,
>  				    enum mtk_ddp_comp_id next,
>  				    unsigned int *addr)
>  {
>  	unsigned int value;
>  
>  	if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
> -		*addr = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN;
> +		*addr = data->ovl0_mout_en;
>  		value = OVL0_MOUT_EN_COLOR0;
>  	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
> -		*addr = DISP_REG_CONFIG_DISP_OVL_MOUT_EN;
> +		*addr = data->ovl0_mout_en;
>  		value = OVL_MOUT_EN_RDMA;
>  	} else if (cur == DDP_COMPONENT_OD0 && next == DDP_COMPONENT_RDMA0) {
>  		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
> @@ -305,8 +335,8 @@ static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
>  		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
>  		value = RDMA1_SOUT_DSI3;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> -		value = RDMA1_SOUT_DPI0;
> +		*addr = data->rdma1_sout_sel_in;
> +		value = data->rdma1_sout_dpi0;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
>  		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
>  		value = RDMA1_SOUT_DPI1;
> @@ -332,7 +362,8 @@ static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
>  	return value;
>  }
>  
> -static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
> +static unsigned int mtk_ddp_sel_in(const struct mtk_mmsys_reg_data *data,
> +				   enum mtk_ddp_comp_id cur,
>  				   enum mtk_ddp_comp_id next,
>  				   unsigned int *addr)
>  {
> @@ -342,14 +373,14 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
>  		*addr = DISP_REG_CONFIG_DISP_COLOR0_SEL_IN;
>  		value = COLOR0_SEL_IN_OVL0;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> -		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> -		value = DPI0_SEL_IN_RDMA1;
> +		*addr = data->dpi0_sel_in;
> +		value = data->dpi0_sel_in_rdma1;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
>  		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
>  		value = DPI1_SEL_IN_RDMA1;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> -		value = DSI0_SEL_IN_RDMA1;
> +		*addr = data->dsi0_sel_in;
> +		value = data->dsi0_sel_in_rdma1;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
>  		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
>  		value = DSI1_SEL_IN_RDMA1;
> @@ -390,37 +421,44 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
>  	return value;
>  }
>  
> -static void mtk_ddp_sout_sel(void __iomem *config_regs,
> -			     enum mtk_ddp_comp_id cur,
> -			     enum mtk_ddp_comp_id next)
> +static unsigned int mtk_ddp_sout_sel(const struct mtk_mmsys_reg_data *data,
> +				     enum mtk_ddp_comp_id cur,
> +				     enum mtk_ddp_comp_id next,
> +				     unsigned int *addr)
>  {
> +	unsigned int value;
> +
>  	if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> -		writel_relaxed(BLS_TO_DSI_RDMA1_TO_DPI1,
> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> +		*addr = DISP_REG_CONFIG_OUT_SEL;
> +		value = BLS_TO_DSI_RDMA1_TO_DPI1;
>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> -		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> -		writel_relaxed(DSI_SEL_IN_RDMA,
> -			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> +		*addr = DISP_REG_CONFIG_OUT_SEL;
> +		value = BLS_TO_DPI_RDMA1_TO_DSI;
> +	} else {
> +		value = 0;
>  	}
> +
> +	return value;
>  }
>  
>  void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> +			      const struct mtk_mmsys_reg_data *reg_data,
>  			      enum mtk_ddp_comp_id cur,
>  			      enum mtk_ddp_comp_id next)
>  {
>  	unsigned int addr, value, reg;
>  
> -	value = mtk_ddp_mout_en(cur, next, &addr);
> +	value = mtk_ddp_mout_en(reg_data, cur, next, &addr);
>  	if (value) {
>  		reg = readl_relaxed(config_regs + addr) | value;
>  		writel_relaxed(reg, config_regs + addr);
>  	}
>  
> -	mtk_ddp_sout_sel(config_regs, cur, next);
> +	value = mtk_ddp_sout_sel(reg_data, cur, next, &addr);
> +	if (value)
> +		writel_relaxed(value, config_regs + addr);

I think the register could be written inside mtk_ddp_sout_sel(), why do
you move out of that function?

Regards,
CK

>  
> -	value = mtk_ddp_sel_in(cur, next, &addr);
> +	value = mtk_ddp_sel_in(reg_data, cur, next, &addr);
>  	if (value) {
>  		reg = readl_relaxed(config_regs + addr) | value;
>  		writel_relaxed(reg, config_regs + addr);
> @@ -428,18 +466,19 @@ void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
>  }
>  
>  void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> +				   const struct mtk_mmsys_reg_data *reg_data,
>  				   enum mtk_ddp_comp_id cur,
>  				   enum mtk_ddp_comp_id next)
>  {
>  	unsigned int addr, value, reg;
>  
> -	value = mtk_ddp_mout_en(cur, next, &addr);
> +	value = mtk_ddp_mout_en(reg_data, cur, next, &addr);
>  	if (value) {
>  		reg = readl_relaxed(config_regs + addr) & ~value;
>  		writel_relaxed(reg, config_regs + addr);
>  	}
>  
> -	value = mtk_ddp_sel_in(cur, next, &addr);
> +	value = mtk_ddp_sel_in(reg_data, cur, next, &addr);
>  	if (value) {
>  		reg = readl_relaxed(config_regs + addr) & ~value;
>  		writel_relaxed(reg, config_regs + addr);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> index f9a7991..43dabb6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> @@ -19,11 +19,16 @@
>  struct regmap;
>  struct device;
>  struct mtk_disp_mutex;
> +struct mtk_mmsys_reg_data;
>  
> +extern const struct mtk_mmsys_reg_data mt2701_mmsys_reg_data;
> +extern const struct mtk_mmsys_reg_data mt8173_mmsys_reg_data;
>  void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> +			      const struct mtk_mmsys_reg_data *reg_data,
>  			      enum mtk_ddp_comp_id cur,
>  			      enum mtk_ddp_comp_id next);
>  void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> +				   const struct mtk_mmsys_reg_data *reg_data,
>  				   enum mtk_ddp_comp_id cur,
>  				   enum mtk_ddp_comp_id next);
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 57ce470..5f94259 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -197,6 +197,7 @@ static int mtk_atomic_commit(struct drm_device *drm,
>  	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
>  	.ext_path = mt2701_mtk_ddp_ext,
>  	.ext_len = ARRAY_SIZE(mt2701_mtk_ddp_ext),
> +	.reg_data = &mt2701_mmsys_reg_data,
>  	.shadow_register = true,
>  };
>  
> @@ -207,6 +208,7 @@ static int mtk_atomic_commit(struct drm_device *drm,
>  	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
>  	.third_path = mt2712_mtk_ddp_third,
>  	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
> +	.reg_data = &mt8173_mmsys_reg_data,
>  };
>  
>  static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
> @@ -214,6 +216,7 @@ static int mtk_atomic_commit(struct drm_device *drm,
>  	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
>  	.ext_path = mt8173_mtk_ddp_ext,
>  	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
> +	.reg_data = &mt8173_mmsys_reg_data,
>  };
>  
>  static int mtk_drm_kms_init(struct drm_device *drm)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index ecc00ca..1e6d74b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -15,6 +15,7 @@
>  #define MTK_DRM_DRV_H
>  
>  #include <linux/io.h>
> +#include "mtk_drm_ddp.h"
>  #include "mtk_drm_ddp_comp.h"
>  
>  #define MAX_CRTC	3
> @@ -36,6 +37,8 @@ struct mtk_mmsys_driver_data {
>  	const enum mtk_ddp_comp_id *third_path;
>  	unsigned int third_len;
>  
> +	const struct mtk_mmsys_reg_data *reg_data;
> +
>  	bool shadow_register;
>  };
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
