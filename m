Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7572478A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 05:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/12Xn19tLsEy80pFc34/csSYYdxf7wDrgit7RKWhzI=; b=rvzqQN/igpdigr
	COL6Dt0nc1NH099j1EIZXA/F4XxRBkXkM8K+78rdV3R/ES3XsD86dDRjRZabf/vm6JtcXjanOBrMU
	nvJgoDZ9h0jekHKvicUR0vJqD1sbk2tn48Jd4izIidkiO/k7aLA4ModpoQRhxdIRf9tPAuu+a5B4d
	RpjKARkTXaV+MsJ9ZG5seYok1NZXQzeuhyrWdJp/t/YKMek/HEOEqcgs82oCTxcQrdWdp8bMlS7rL
	iKfY/t9IjFtT4j/quSS9cAiDuRiuEenhE1uwrxRwEJygd1k+gjZZTPC+EXOpWn7ShwXj2VR/+67eJ
	1KHxJbPFomvFBrdJbnGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hciM3-0004QH-O1; Mon, 17 Jun 2019 03:30:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hciLm-0004Po-Jl; Mon, 17 Jun 2019 03:30:33 +0000
X-UUID: ac8553cd9aeb4cab9955f3e9b8157015-20190616
X-UUID: ac8553cd9aeb4cab9955f3e9b8157015-20190616
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1487087286; Sun, 16 Jun 2019 19:30:14 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Jun 2019 20:30:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 11:30:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 11:30:09 +0800
Message-ID: <1560742209.25168.8.camel@mtksdaap41>
Subject: Re: [PATCH v3, 27/27] drm/mediatek: add support for mediatek SOC
 MT8183
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Mon, 17 Jun 2019 11:30:09 +0800
In-Reply-To: <1559734986-7379-28-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-28-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_203030_665792_C72C4ABC 
X-CRM114-Status: GOOD (  19.36  )
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

On Wed, 2019-06-05 at 19:43 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add support for mediatek SOC MT8183
> 1.ovl_2l share driver with ovl
> 2.rdma1 share drive with rdma0, but fifo size is different
> 3.add mt8183 mutex private data, and mmsys private data
> 4.add mt8183 main and external path module for crtc create
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  18 +++++
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  12 ++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c      | 107 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h      |   1 +
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |   1 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c      |  47 ++++++++++++
>  6 files changed, 186 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 63072d1..efd41aa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -382,11 +382,29 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
>  	.fmt_rgb565_is_0 = true,
>  };
>  
> +static const struct mtk_disp_ovl_data mt8183_ovl_driver_data = {
> +	.addr = DISP_REG_OVL_ADDR_MT8173,
> +	.gmc_bits = 10,
> +	.layer_nr = 4,
> +	.fmt_rgb565_is_0 = true,
> +};
> +
> +static const struct mtk_disp_ovl_data mt8183_ovl_2l_driver_data = {
> +	.addr = DISP_REG_OVL_ADDR_MT8173,
> +	.gmc_bits = 10,
> +	.layer_nr = 2,
> +	.fmt_rgb565_is_0 = true,
> +};
> +
>  static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
>  	{ .compatible = "mediatek,mt2701-disp-ovl",
>  	  .data = &mt2701_ovl_driver_data},
>  	{ .compatible = "mediatek,mt8173-disp-ovl",
>  	  .data = &mt8173_ovl_driver_data},
> +	{ .compatible = "mediatek,mt8183-disp-ovl",
> +	  .data = &mt8183_ovl_driver_data},
> +	{ .compatible = "mediatek,mt8183-disp-ovl-2l",
> +	  .data = &mt8183_ovl_2l_driver_data},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, mtk_disp_ovl_driver_dt_match);
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index b0a5cff..5d62588 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -336,11 +336,23 @@ static int mtk_disp_rdma_remove(struct platform_device *pdev)
>  	.fifo_size = SZ_8K,
>  };
>  
> +static const struct mtk_disp_rdma_data mt8183_rdma_driver_data = {
> +	.fifo_size = 5 * SZ_1K,
> +};
> +
> +static const struct mtk_disp_rdma_data mt8183_rdma1_driver_data = {
> +	.fifo_size = SZ_2K,
> +};
> +
>  static const struct of_device_id mtk_disp_rdma_driver_dt_match[] = {
>  	{ .compatible = "mediatek,mt2701-disp-rdma",
>  	  .data = &mt2701_rdma_driver_data},
>  	{ .compatible = "mediatek,mt8173-disp-rdma",
>  	  .data = &mt8173_rdma_driver_data},
> +	{ .compatible = "mediatek,mt8183-disp-rdma",
> +	  .data = &mt8183_rdma_driver_data},
> +	{ .compatible = "mediatek,mt8183-disp-rdma1",

"mediatek,mt8183-disp-rdma1" does not exist in binding document.

> +	  .data = &mt8183_rdma1_driver_data},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, mtk_disp_rdma_driver_dt_match);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 28274d2..eaf2351 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -41,8 +41,36 @@
>  #define DISP_REG_CONFIG_DSI_SEL			0x050
>  #define DISP_REG_CONFIG_DPI_SEL			0x064
>  
> +#define MT8183_DISP_OVL0_MOUT_EN		0xF00
> +#define OVL0_MOUT_EN_DISP_PATH0				BIT(0)
> +#define OVL0_MOUT_EN_OVL0_2L				BIT(4)
> +#define MT8183_DISP_OVL0_2L_MOUT_EN		0xF04
> +#define OVL0_2L_MOUT_EN_DISP_PATH0			BIT(0)
> +#define MT8183_DISP_OVL1_2L_MOUT_EN		0xF08
> +#define OVL1_2L_MOUT_EN_RDMA1				BIT(4)
> +#define MT8183_DISP_DITHER0_MOUT_EN		0xF0C
> +#define DITHER0_MOUT_IN_DSI0				BIT(0)
> +#define MT8183_DISP_PATH0_SEL_IN		0xF24
> +#define DISP_PATH0_SEL_IN_OVL0				0x0
> +#define DISP_PATH0_SEL_IN_OVL0_2L			0x1
> +#define MT8183_DISP_DSI0_SEL_IN			0xF2C
> +#define DSI0_SEL_IN_DITHER				0x0
> +#define DSI0_SEL_IN_RDMA0				0x1
> +#define MT8183_DSI0_SEL_IN_RDMA1			0x3
> +#define MT8183_DISP_DPI0_SEL_IN			0xF30
> +#define MT8183_DPI0_SEL_IN_RDMA0			0x1
> +#define MT8183_DPI0_SEL_IN_RDMA1			0x2
> +#define MT8183_DISP_RDMA0_SOUT_SEL_IN		0xF50
> +#define MT8183_RDMA0_SOUT_DSI0				0x0
> +#define MT8183_RDMA0_SOUT_COLOR0			0x1
> +#define MT8183_DISP_RDMA1_SOUT_SEL_IN		0xF54
> +#define MT8183_RDMA1_SOUT_DPI0				0x0
> +#define MT8183_RDMA1_SOUT_DSI0				0x1
> +
>  #define MT2701_DISP_MUTEX0_MOD0			0x2c
>  #define MT2701_DISP_MUTEX0_SOF0			0x2c
> +#define MT8183_DISP_MUTEX0_MOD0			0x30
> +#define MT8183_DISP_MUTEX0_SOF0			0x2c
>  
>  #define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
>  #define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
> @@ -53,6 +81,18 @@
>  
>  #define INT_MUTEX				BIT(1)
>  
> +#define MT8183_MUTEX_MOD_DISP_RDMA0		0
> +#define MT8183_MUTEX_MOD_DISP_RDMA1		1
> +#define MT8183_MUTEX_MOD_DISP_OVL0		9
> +#define MT8183_MUTEX_MOD_DISP_OVL0_2L		10
> +#define MT8183_MUTEX_MOD_DISP_OVL1_2L		11
> +#define MT8183_MUTEX_MOD_DISP_WDMA0		12
> +#define MT8183_MUTEX_MOD_DISP_COLOR0		13
> +#define MT8183_MUTEX_MOD_DISP_CCORR0		14
> +#define MT8183_MUTEX_MOD_DISP_AAL0		15
> +#define MT8183_MUTEX_MOD_DISP_GAMMA0		16
> +#define MT8183_MUTEX_MOD_DISP_DITHER0		17
> +
>  #define MT8173_MUTEX_MOD_DISP_OVL0		11
>  #define MT8173_MUTEX_MOD_DISP_OVL1		12
>  #define MT8173_MUTEX_MOD_DISP_RDMA0		13
> @@ -102,6 +142,10 @@
>  #define MUTEX_SOF_DSI2			5
>  #define MUTEX_SOF_DSI3			6
>  
> +#define MT8183_MUTEX_SOF_DPI0			2
> +#define MT8183_MUTEX_EOF_DSI0			(MUTEX_SOF_DSI0 << 6)
> +#define MT8183_MUTEX_EOF_DPI0			(MT8183_MUTEX_SOF_DPI0 << 6)
> +
>  #define OVL0_MOUT_EN_COLOR0		0x1
>  #define OD_MOUT_EN_RDMA0		0x1
>  #define OD1_MOUT_EN_RDMA1		BIT(16)
> @@ -247,6 +291,20 @@ struct mtk_mmsys_reg_data {
>  	[DDP_COMPONENT_WDMA1] = MT8173_MUTEX_MOD_DISP_WDMA1,
>  };
>  
> +static const unsigned int mt8183_mutex_mod[DDP_COMPONENT_ID_MAX] = {
> +	[DDP_COMPONENT_AAL0] = MT8183_MUTEX_MOD_DISP_AAL0,
> +	[DDP_COMPONENT_CCORR] = MT8183_MUTEX_MOD_DISP_CCORR0,
> +	[DDP_COMPONENT_COLOR0] = MT8183_MUTEX_MOD_DISP_COLOR0,
> +	[DDP_COMPONENT_DITHER] = MT8183_MUTEX_MOD_DISP_DITHER0,
> +	[DDP_COMPONENT_GAMMA] = MT8183_MUTEX_MOD_DISP_GAMMA0,
> +	[DDP_COMPONENT_OVL0] = MT8183_MUTEX_MOD_DISP_OVL0,
> +	[DDP_COMPONENT_OVL_2L0] = MT8183_MUTEX_MOD_DISP_OVL0_2L,
> +	[DDP_COMPONENT_OVL_2L1] = MT8183_MUTEX_MOD_DISP_OVL1_2L,
> +	[DDP_COMPONENT_RDMA0] = MT8183_MUTEX_MOD_DISP_RDMA0,
> +	[DDP_COMPONENT_RDMA1] = MT8183_MUTEX_MOD_DISP_RDMA1,
> +	[DDP_COMPONENT_WDMA0] = MT8183_MUTEX_MOD_DISP_WDMA0,
> +};
> +
>  static const unsigned int mt2712_mutex_sof[DDP_MUTEX_SOF_MAX] = {
>  	[DDP_MUTEX_SOF_SINGLE_MODE] = MUTEX_SOF_SINGLE_MODE,
>  	[DDP_MUTEX_SOF_DSI0] = MUTEX_SOF_DSI0,
> @@ -257,6 +315,12 @@ struct mtk_mmsys_reg_data {
>  	[DDP_MUTEX_SOF_DSI3] = MUTEX_SOF_DSI3,
>  };
>  
> +static const unsigned int mt8183_mutex_sof[DDP_MUTEX_SOF_MAX] = {
> +	[DDP_MUTEX_SOF_SINGLE_MODE] = MUTEX_SOF_SINGLE_MODE,
> +	[DDP_MUTEX_SOF_DSI0] = MUTEX_SOF_DSI0 | MT8183_MUTEX_EOF_DSI0,
> +	[DDP_MUTEX_SOF_DPI0] = MT8183_MUTEX_SOF_DPI0 | MT8183_MUTEX_EOF_DPI0,
> +};
> +
>  static const struct mtk_ddp_data mt2701_ddp_driver_data = {
>  	.mutex_mod = mt2701_mutex_mod,
>  	.mutex_sof = mt2712_mutex_sof,
> @@ -278,6 +342,13 @@ struct mtk_mmsys_reg_data {
>  	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
>  };
>  
> +static const struct mtk_ddp_data mt8183_ddp_driver_data = {
> +	.mutex_mod = mt8183_mutex_mod,
> +	.mutex_sof = mt8183_mutex_sof,
> +	.mutex_mod_reg = MT8183_DISP_MUTEX0_MOD0,
> +	.mutex_sof_reg = MT8183_DISP_MUTEX0_SOF0,
> +};
> +
>  const struct mtk_mmsys_reg_data mt2701_mmsys_reg_data = {
>  	.ovl0_mout_en = DISP_REG_CONFIG_DISP_OVL_MOUT_EN,
>  	.dsi0_sel_in = DISP_REG_CONFIG_DSI_SEL,
> @@ -294,6 +365,19 @@ struct mtk_mmsys_reg_data {
>  	.dsi0_sel_in_rdma1 = DSI0_SEL_IN_RDMA1,
>  };
>  
> +const struct mtk_mmsys_reg_data mt8183_mmsys_reg_data = {
> +	.ovl0_mout_en = MT8183_DISP_OVL0_MOUT_EN,
> +	.rdma0_sout_sel_in = MT8183_DISP_RDMA0_SOUT_SEL_IN,
> +	.rdma0_sout_color0 = MT8183_RDMA0_SOUT_COLOR0,
> +	.rdma1_sout_sel_in = MT8183_DISP_RDMA1_SOUT_SEL_IN,
> +	.rdma1_sout_dpi0 = MT8183_RDMA1_SOUT_DPI0,
> +	.rdma1_sout_dsi0 = MT8183_RDMA1_SOUT_DSI0,
> +	.dpi0_sel_in = MT8183_DISP_DPI0_SEL_IN,
> +	.dpi0_sel_in_rdma1 = MT8183_DPI0_SEL_IN_RDMA1,
> +	.dsi0_sel_in = MT8183_DISP_DSI0_SEL_IN,
> +	.dsi0_sel_in_rdma1 = MT8183_DSI0_SEL_IN_RDMA1,
> +};
> +
>  static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
>  				    enum mtk_ddp_comp_id cur,
>  				    enum mtk_ddp_comp_id next,
> @@ -325,6 +409,17 @@ static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
>  	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_OVL_2L0) {
>  		*addr = DISP_REG_OVL0_MOUT_EN(data);
>  		value = OVL0_MOUT_EN_OVL0_2L;
> +	} else if (cur == DDP_COMPONENT_OVL_2L0 &&
> +		   next == DDP_COMPONENT_RDMA0) {
> +		*addr = MT8183_DISP_OVL0_2L_MOUT_EN;
> +		value = OVL0_2L_MOUT_EN_DISP_PATH0;
> +	} else if (cur == DDP_COMPONENT_OVL_2L1 &&
> +		   next == DDP_COMPONENT_RDMA1) {
> +		*addr = MT8183_DISP_OVL1_2L_MOUT_EN;
> +		value = OVL1_2L_MOUT_EN_RDMA1;
> +	} else if (cur == DDP_COMPONENT_DITHER && next == DDP_COMPONENT_DSI0) {
> +		*addr = MT8183_DISP_DITHER0_MOUT_EN;
> +		value = DITHER0_MOUT_IN_DSI0;

I think the connection should be an independent patch. Other SoC may use
the same connection setting.

>  	} else {
>  		value = 0;
>  	}
> @@ -384,6 +479,16 @@ static unsigned int mtk_ddp_sel_in(const struct mtk_mmsys_reg_data *data,
>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
>  		*addr = DISP_REG_CONFIG_DSI_SEL;
>  		value = DSI_SEL_IN_BLS;
> +	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
> +		*addr = MT8183_DISP_PATH0_SEL_IN;
> +		value = DISP_PATH0_SEL_IN_OVL0;
> +	} else if (cur == DDP_COMPONENT_OVL_2L0 &&
> +		   next == DDP_COMPONENT_RDMA0) {
> +		*addr = MT8183_DISP_PATH0_SEL_IN;
> +		value = DISP_PATH0_SEL_IN_OVL0_2L;
> +	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI0) {
> +		*addr = MT8183_DISP_DSI0_SEL_IN;
> +		value = DSI0_SEL_IN_RDMA0;

Ditto.

>  	} else {
>  		value = 0;
>  	}
> @@ -723,6 +828,8 @@ static int mtk_ddp_remove(struct platform_device *pdev)
>  	  .data = &mt2712_ddp_driver_data},
>  	{ .compatible = "mediatek,mt8173-disp-mutex",
>  	  .data = &mt8173_ddp_driver_data},
> +	{ .compatible = "mediatek,mt8183-disp-mutex",
> +	  .data = &mt8183_ddp_driver_data},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, ddp_driver_dt_match);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> index 43dabb6..0befb1c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> @@ -23,6 +23,7 @@
>  
>  extern const struct mtk_mmsys_reg_data mt2701_mmsys_reg_data;
>  extern const struct mtk_mmsys_reg_data mt8173_mmsys_reg_data;
> +extern const struct mtk_mmsys_reg_data mt8183_mmsys_reg_data;
>  void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
>  			      const struct mtk_mmsys_reg_data *reg_data,
>  			      enum mtk_ddp_comp_id cur,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 989024d..48735aa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -366,6 +366,7 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
>  	/* Only DMA capable components need the LARB property */
>  	comp->larb_dev = NULL;
>  	if (type != MTK_DISP_OVL &&
> +	    type != MTK_DISP_OVL_2L &&

This should be in the patch that add OVL_2L compoment.

>  	    type != MTK_DISP_RDMA &&
>  	    type != MTK_DISP_WDMA)
>  		return 0;
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index f260aa7..5d324e3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -192,6 +192,24 @@ static int mtk_atomic_commit(struct drm_device *drm,
>  	DDP_COMPONENT_DPI0,
>  };
>  
> +static const enum mtk_ddp_comp_id mt8183_mtk_ddp_main[] = {
> +	DDP_COMPONENT_OVL0,
> +	DDP_COMPONENT_OVL_2L0,
> +	DDP_COMPONENT_RDMA0,
> +	DDP_COMPONENT_COLOR0,
> +	DDP_COMPONENT_CCORR,
> +	DDP_COMPONENT_AAL0,
> +	DDP_COMPONENT_GAMMA,
> +	DDP_COMPONENT_DITHER,
> +	DDP_COMPONENT_DSI0,
> +};
> +
> +static const enum mtk_ddp_comp_id mt8183_mtk_ddp_ext[] = {
> +	DDP_COMPONENT_OVL_2L1,
> +	DDP_COMPONENT_RDMA1,
> +	DDP_COMPONENT_DPI0,
> +};
> +
>  static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
>  	.main_path = mt2701_mtk_ddp_main,
>  	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
> @@ -219,6 +237,14 @@ static int mtk_atomic_commit(struct drm_device *drm,
>  	.reg_data = &mt8173_mmsys_reg_data,
>  };
>  
> +static const struct mtk_mmsys_driver_data mt8183_mmsys_driver_data = {
> +	.main_path = mt8183_mtk_ddp_main,
> +	.main_len = ARRAY_SIZE(mt8183_mtk_ddp_main),
> +	.ext_path = mt8183_mtk_ddp_ext,
> +	.ext_len = ARRAY_SIZE(mt8183_mtk_ddp_ext),
> +	.reg_data = &mt8183_mmsys_reg_data,
> +};
> +
>  static int mtk_drm_kms_init(struct drm_device *drm)
>  {
>  	struct mtk_drm_private *private = drm->dev_private;
> @@ -414,12 +440,22 @@ static void mtk_drm_unbind(struct device *dev)
>  	  .data = (void *)MTK_DISP_OVL },
>  	{ .compatible = "mediatek,mt8173-disp-ovl",
>  	  .data = (void *)MTK_DISP_OVL },
> +	{ .compatible = "mediatek,mt8183-disp-ovl",
> +	  .data = (void *)MTK_DISP_OVL },
> +	{ .compatible = "mediatek,mt8183-disp-ovl-2l",
> +	  .data = (void *)MTK_DISP_OVL_2L },
>  	{ .compatible = "mediatek,mt2701-disp-rdma",
>  	  .data = (void *)MTK_DISP_RDMA },
>  	{ .compatible = "mediatek,mt8173-disp-rdma",
>  	  .data = (void *)MTK_DISP_RDMA },
> +	{ .compatible = "mediatek,mt8183-disp-rdma",
> +	  .data = (void *)MTK_DISP_RDMA },
> +	{ .compatible = "mediatek,mt8183-disp-rdma1",
> +	  .data = (void *)MTK_DISP_RDMA },
>  	{ .compatible = "mediatek,mt8173-disp-wdma",
>  	  .data = (void *)MTK_DISP_WDMA },
> +	{ .compatible = "mediatek,mt8183-disp-ccorr",
> +	  .data = (void *)MTK_DISP_CCORR },
>  	{ .compatible = "mediatek,mt2701-disp-color",
>  	  .data = (void *)MTK_DISP_COLOR },
>  	{ .compatible = "mediatek,mt8173-disp-color",
> @@ -428,22 +464,30 @@ static void mtk_drm_unbind(struct device *dev)
>  	  .data = (void *)MTK_DISP_AAL},
>  	{ .compatible = "mediatek,mt8173-disp-gamma",
>  	  .data = (void *)MTK_DISP_GAMMA, },
> +	{ .compatible = "mediatek,mt8183-disp-dither",
> +	  .data = (void *)MTK_DISP_DITHER },
>  	{ .compatible = "mediatek,mt8173-disp-ufoe",
>  	  .data = (void *)MTK_DISP_UFOE },
>  	{ .compatible = "mediatek,mt2701-dsi",
>  	  .data = (void *)MTK_DSI },
>  	{ .compatible = "mediatek,mt8173-dsi",
>  	  .data = (void *)MTK_DSI },
> +	{ .compatible = "mediatek,mt8183-dsi",
> +	  .data = (void *)MTK_DSI },
>  	{ .compatible = "mediatek,mt2701-dpi",
>  	  .data = (void *)MTK_DPI },
>  	{ .compatible = "mediatek,mt8173-dpi",
>  	  .data = (void *)MTK_DPI },
> +	{ .compatible = "mediatek,mt8183-dpi",
> +	  .data = (void *)MTK_DPI },
>  	{ .compatible = "mediatek,mt2701-disp-mutex",
>  	  .data = (void *)MTK_DISP_MUTEX },
>  	{ .compatible = "mediatek,mt2712-disp-mutex",
>  	  .data = (void *)MTK_DISP_MUTEX },
>  	{ .compatible = "mediatek,mt8173-disp-mutex",
>  	  .data = (void *)MTK_DISP_MUTEX },
> +	{ .compatible = "mediatek,mt8183-disp-mutex",
> +	  .data = (void *)MTK_DISP_MUTEX },
>  	{ .compatible = "mediatek,mt2701-disp-pwm",
>  	  .data = (void *)MTK_DISP_BLS },
>  	{ .compatible = "mediatek,mt8173-disp-pwm",
> @@ -521,6 +565,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  		 */
>  		if (comp_type == MTK_DISP_COLOR ||
>  		    comp_type == MTK_DISP_OVL ||
> +		    comp_type == MTK_DISP_OVL_2L ||

Ditto.

>  		    comp_type == MTK_DISP_RDMA ||
>  		    comp_type == MTK_DSI ||
>  		    comp_type == MTK_DPI) {
> @@ -625,6 +670,8 @@ static SIMPLE_DEV_PM_OPS(mtk_drm_pm_ops, mtk_drm_sys_suspend,
>  	  .data = &mt2712_mmsys_driver_data},
>  	{ .compatible = "mediatek,mt8173-mmsys",
>  	  .data = &mt8173_mmsys_driver_data},
> +	{ .compatible = "mediatek,mt8183-display",

"mediatek,mt8183-display" does not exist in binding document.

Regards,
CK

> +	  .data = &mt8183_mmsys_driver_data},
>  	{ }
>  };
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
