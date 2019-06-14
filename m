Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A12745303
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jd0WldNfVn1LbwPV5pK+wfrxiow2vYegRYFjb5zqkQE=; b=hfJIb5UtRDl4df
	0faFgdzY1HUNZnkuRTWsXpd62P/4IX37WNhQffobjpEYyOnTudwxWU8j7OiFXRHNqQb+yO/EZpjcV
	1+WPuXXbLnQBuKri5Cgps0yc8sCjIHJoS0aNoPTn1QOZFgA+VLNGXP8JLRj642U3KA0Hysha+CYpp
	0/jMh2dJHzQdmBUhB81UjiVPsj9W3NelrI4WyMiKoIuNyQab2TE+jfssJ4grw9Qcroey8ZjCG71jj
	LVUsHcyWZ4V7kp7IGIWysiv3kyTPXCoes3/qY/oHtNjk+qT7Qh/vsYMLLaBT6JgcPKFRMt2LV48xp
	N55nuY12MWDqTRSNrGIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcxh-0005Of-2N; Fri, 14 Jun 2019 03:33:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbctR-0000bs-NY; Fri, 14 Jun 2019 03:28:49 +0000
X-UUID: dcd5d5c10a7147b0b5c2ac75ece1bb16-20190613
X-UUID: dcd5d5c10a7147b0b5c2ac75ece1bb16-20190613
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 864161393; Thu, 13 Jun 2019 19:28:38 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 20:28:37 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 11:28:34 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 11:28:34 +0800
Message-ID: <1560482914.16718.10.camel@mtksdaap41>
Subject: Re: [PATCH v3, 11/27] drm/mediatek: add mmsys private data for ddp
 path config
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 14 Jun 2019 11:28:34 +0800
In-Reply-To: <1559734986-7379-12-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-12-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_202845_915730_C169781D 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, 2019-06-05 at 19:42 +0800, yongqiang.niu@mediatek.com wrote:
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
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |   4 ++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 100 ++++++++++++++++++++++++--------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |   5 ++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |   5 ++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |   4 ++
>  5 files changed, 93 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index acad088..11e3404 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -50,6 +50,7 @@ struct mtk_drm_crtc {
>  	bool				pending_planes;
>  
>  	void __iomem			*config_regs;
> +	const struct mtk_mmsys_reg_data *mmsys_reg_data;
>  	struct mtk_disp_mutex		*mutex;
>  	unsigned int			ddp_comp_nr;
>  	struct mtk_ddp_comp		**ddp_comp;
> @@ -271,6 +272,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  	DRM_DEBUG_DRIVER("mediatek_ddp_ddp_path_setup\n");
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
>  		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
> +					 mtk_crtc->mmsys_reg_data,
>  					 mtk_crtc->ddp_comp[i]->id,
>  					 mtk_crtc->ddp_comp[i + 1]->id);
>  		mtk_disp_mutex_add_comp(mtk_crtc->mutex,
> @@ -319,6 +321,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	mtk_disp_mutex_disable(mtk_crtc->mutex);
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
>  		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
> +					      mtk_crtc->mmsys_reg_data,
>  					      mtk_crtc->ddp_comp[i]->id,
>  					      mtk_crtc->ddp_comp[i + 1]->id);
>  		mtk_disp_mutex_remove_comp(mtk_crtc->mutex,
> @@ -561,6 +564,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  		return -ENOMEM;
>  
>  	mtk_crtc->config_regs = priv->config_regs;
> +	mtk_crtc->mmsys_reg_data = priv->reg_data;
>  	mtk_crtc->ddp_comp_nr = path_len;
>  	mtk_crtc->ddp_comp = devm_kmalloc_array(dev, mtk_crtc->ddp_comp_nr,
>  						sizeof(*mtk_crtc->ddp_comp),
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 1bbabe6..c8ac892 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -145,6 +145,17 @@
>  #define DPI_SEL_IN_BLS			0x0
>  #define DSI_SEL_IN_RDMA			0x1
>  
> +#define DISP_REG_OVL0_MOUT_EN(data)		((data)->ovl0_mout_en)
> +#define DISP_REG_DPI0_SEL_IN(data)		((data)->dpi0_sel_in)
> +#define DISP_REG_DPI0_SEL_IN_RDMA1(data)	((data)->dpi0_sel_in_rdma1)
> +#define DISP_REG_DSI0_SEL_IN(data)		((data)->dsi0_sel_in)
> +#define DISP_REG_DSI0_SEL_IN_RDMA1(data)	((data)->dsi0_sel_in_rdma1)
> +#define DISP_REG_RDMA0_SOUT_SEL_IN(data)	((data)->rdma0_sout_sel_in)
> +#define DISP_REG_RDMA0_SOUT_COLOR0(data)	((data)->rdma0_sout_color0)
> +#define DISP_REG_RDMA1_SOUT_SEL_IN(data)	((data)->rdma1_sout_sel_in)
> +#define DISP_REG_RDMA1_SOUT_DPI0(data)		((data)->rdma1_sout_dpi0)
> +#define DISP_REG_RDMA1_SOUT_DSI0(data)		((data)->rdma1_sout_dsi0)

I does not see any benefit to invent these macro, caller could directly
use data->xxx.

rdma0_sout_sel_in, rdma0_sout_color0, and rdma1_sout_dsi0 are not used
in this patch, so remove from this patch.

> +
>  struct mtk_disp_mutex {
>  	int id;
>  	bool claimed;
> @@ -176,6 +187,19 @@ struct mtk_ddp {
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
> +
>  static const unsigned int mt2701_mutex_mod[DDP_COMPONENT_ID_MAX] = {
>  	[DDP_COMPONENT_BLS] = MT2701_MUTEX_MOD_DISP_BLS,
>  	[DDP_COMPONENT_COLOR0] = MT2701_MUTEX_MOD_DISP_COLOR,
> @@ -254,17 +278,34 @@ struct mtk_ddp {
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
> +		*addr = DISP_REG_OVL0_MOUT_EN(data);
>  		value = OVL0_MOUT_EN_COLOR0;
>  	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
> -		*addr = DISP_REG_CONFIG_DISP_OVL_MOUT_EN;
> +		*addr = DISP_REG_OVL0_MOUT_EN(data);
>  		value = OVL_MOUT_EN_RDMA;
>  	} else if (cur == DDP_COMPONENT_OD0 && next == DDP_COMPONENT_RDMA0) {
>  		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
> @@ -306,8 +347,8 @@ static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
>  		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
>  		value = RDMA1_SOUT_DSI3;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> -		value = RDMA1_SOUT_DPI0;
> +		*addr = DISP_REG_RDMA1_SOUT_SEL_IN(data);
> +		value = DISP_REG_RDMA1_SOUT_DPI0(data);
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
>  		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
>  		value = RDMA1_SOUT_DPI1;
> @@ -333,7 +374,8 @@ static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
>  	return value;
>  }
>  
> -static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
> +static unsigned int mtk_ddp_sel_in(const struct mtk_mmsys_reg_data *data,
> +				   enum mtk_ddp_comp_id cur,
>  				   enum mtk_ddp_comp_id next,
>  				   unsigned int *addr)
>  {
> @@ -343,14 +385,14 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
>  		*addr = DISP_REG_CONFIG_DISP_COLOR0_SEL_IN;
>  		value = COLOR0_SEL_IN_OVL0;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> -		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> -		value = DPI0_SEL_IN_RDMA1;
> +		*addr = DISP_REG_DPI0_SEL_IN(data);
> +		value = DISP_REG_DPI0_SEL_IN_RDMA1(data);
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
>  		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
>  		value = DPI1_SEL_IN_RDMA1;
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> -		value = DSI0_SEL_IN_RDMA1;
> +		*addr = DISP_REG_DSI0_SEL_IN(data);
> +		value = DISP_REG_DSI0_SEL_IN_RDMA1(data);
>  	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
>  		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
>  		value = DSI1_SEL_IN_RDMA1;
> @@ -391,37 +433,44 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
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

>  
> -	value = mtk_ddp_sel_in(cur, next, &addr);
> +	value = mtk_ddp_sel_in(reg_data, cur, next, &addr);
>  	if (value) {
>  		reg = readl_relaxed(config_regs + addr) | value;
>  		writel_relaxed(reg, config_regs + addr);
> @@ -429,18 +478,19 @@ void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
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
> index 57ce470..f260aa7 100644
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
> @@ -468,6 +471,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  	INIT_WORK(&private->commit.work, mtk_atomic_work);
>  	private->data = of_device_get_match_data(dev);
>  
> +	private->reg_data = private->data->reg_data;
> +
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	private->config_regs = devm_ioremap_resource(dev, mem);
>  	if (IS_ERR(private->config_regs)) {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index ecc00ca..b6544a2 100644
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
> @@ -48,6 +51,7 @@ struct mtk_drm_private {
>  	struct device_node *mutex_node;
>  	struct device *mutex_dev;
>  	void __iomem *config_regs;
> +	const struct mtk_mmsys_reg_data *reg_data;

This is identical to the same one in struct mtk_mmsys_driver_data, so
you need not to create this one.

Regards,
CK

>  	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
>  	struct mtk_ddp_comp *ddp_comp[DDP_COMPONENT_ID_MAX];
>  	const struct mtk_mmsys_driver_data *data;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
