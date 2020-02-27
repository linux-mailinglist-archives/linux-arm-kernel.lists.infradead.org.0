Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD00170DA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 02:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tcCzVR2STD8s//Md6z6+saYbCVNh+cNER2tlLE783Q=; b=R61b+X2Qz9P9f9
	xQA0DjdikO3xFMcPg3PinEkhZ7jXRmkFo4UQUoGnMYjlnwxNPPdYaBjGFQ4OzM7uhw55AQ7GNZFrt
	htVy9tnwtL7sOCV7ZV13f0QPGYCJ90y1J8ZMUh3vwjXYZ/Qd/l8+bbkD7jGZ3xtWylueiKOU+SSWE
	HXNHnh5cu6iJZFcu5eODhnSVT/CAxyEyRhbQFBHJMHggH2V5Mej1co+WzK73zbPQXftWb75A2AUxT
	gQz6KB8UyyciPQFzYkgqYEaPS+CidS1Ty4A3QCkb0APbZGy/WNYFctpVtrjPnEFJJ9gAFfr3xMzJz
	Xn0CbeWcP5elzH98ogOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j77hx-0001gN-6X; Thu, 27 Feb 2020 01:11:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j77hj-0001ew-0J; Thu, 27 Feb 2020 01:11:09 +0000
X-UUID: c1c830d844fc4b389af933790a186d74-20200226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=g7uCumPTcKLDEaH//G3AL+2SvkEBkLiF4hfq4malq4M=; 
 b=ul3vZYUFyn5UbPg6XAcaJReam8NeZiS5JM+vuu46k+I+dtrsEUZWKGIrFUXuYS2xDF3qwsi2Wdgt9dxCtI5Sbdj1iK2+vA4mt0b4PLiZzAKZ+WPJtJF9ex3a0f9dkQYRCJ6hvTwM7GSVqVQgUudPD+TYowxzt2g0s/ZAmFFzjeI=;
X-UUID: c1c830d844fc4b389af933790a186d74-20200226
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1546166574; Wed, 26 Feb 2020 17:11:02 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 17:11:00 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 09:10:04 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Feb 2020 09:10:48 +0800
Message-ID: <1582765858.20746.2.camel@mtksdaap41>
Subject: Re: [PATCH v9 1/4] drm/mediatek: Use regmap for register access
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Thu, 27 Feb 2020 09:10:58 +0800
In-Reply-To: <20200226105419.632771-2-enric.balletbo@collabora.com>
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
 <20200226105419.632771-2-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D30F497065135211C6216342C86114129F1F30BEA135DFA590346BD2746D5C1F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_171107_064227_BDC9DBBD 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 Allison Randal <allison@lohutok.net>, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <mbrugger@suse.com>, sboyd@kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Wed, 2020-02-26 at 11:54 +0100, Enric Balletbo i Serra wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The mmsys memory space is shared between the drm and the
> clk driver. Use regmap to access it.

Once there is a mmsys driver and clock control is moved into mmsys
driver, I think we should also move routing control into mmsys driver
and we could drop this patch.

Regards,
CK

> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v9: None
> Changes in v8:
> - Select REGMAP and MFD_SYSCON (Randy Dunlap)
> 
> Changes in v7:
> - Add R-by from CK
> 
>  drivers/gpu/drm/mediatek/Kconfig        |  2 +
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 50 +++++++++++--------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 13 ++-----
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  2 +-
>  6 files changed, 32 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/Kconfig b/drivers/gpu/drm/mediatek/Kconfig
> index fa5ffc4fe823..89e18a473cb5 100644
> --- a/drivers/gpu/drm/mediatek/Kconfig
> +++ b/drivers/gpu/drm/mediatek/Kconfig
> @@ -10,8 +10,10 @@ config DRM_MEDIATEK
>  	select DRM_KMS_HELPER
>  	select DRM_MIPI_DSI
>  	select DRM_PANEL
> +	select MFD_SYSCON
>  	select MEMORY
>  	select MTK_SMI
> +	select REGMAP
>  	select VIDEOMODE_HELPERS
>  	help
>  	  Choose this option if you have a Mediatek SoCs.
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 5ee74d7ce35c..a236499123aa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -28,7 +28,7 @@
>   * @enabled: records whether crtc_enable succeeded
>   * @planes: array of 4 drm_plane structures, one for each overlay plane
>   * @pending_planes: whether any plane has pending changes to be applied
> - * @config_regs: memory mapped mmsys configuration register space
> + * @config_regs: regmap mapped mmsys configuration register space
>   * @mutex: handle to one of the ten disp_mutex streams
>   * @ddp_comp_nr: number of components in ddp_comp
>   * @ddp_comp: array of pointers the mtk_ddp_comp structures used by this crtc
> @@ -50,7 +50,7 @@ struct mtk_drm_crtc {
>  	u32				cmdq_event;
>  #endif
>  
> -	void __iomem			*config_regs;
> +	struct regmap			*config_regs;
>  	struct mtk_disp_mutex		*mutex;
>  	unsigned int			ddp_comp_nr;
>  	struct mtk_ddp_comp		**ddp_comp;
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 13035c906035..302753744cc6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -383,61 +383,53 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
>  	return value;
>  }
>  
> -static void mtk_ddp_sout_sel(void __iomem *config_regs,
> +static void mtk_ddp_sout_sel(struct regmap *config_regs,
>  			     enum mtk_ddp_comp_id cur,
>  			     enum mtk_ddp_comp_id next)
>  {
>  	if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> -		writel_relaxed(BLS_TO_DSI_RDMA1_TO_DPI1,
> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> +		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> +				BLS_TO_DSI_RDMA1_TO_DPI1);
>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> -		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> -		writel_relaxed(DSI_SEL_IN_RDMA,
> -			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> -		writel_relaxed(DPI_SEL_IN_BLS,
> -			       config_regs + DISP_REG_CONFIG_DPI_SEL);
> +		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> +				BLS_TO_DPI_RDMA1_TO_DSI);
> +		regmap_write(config_regs, DISP_REG_CONFIG_DSI_SEL,
> +				DSI_SEL_IN_RDMA);
> +		regmap_write(config_regs, DISP_REG_CONFIG_DPI_SEL,
> +				DPI_SEL_IN_BLS);
>  	}
>  }
>  
> -void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> +void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
>  			      enum mtk_ddp_comp_id cur,
>  			      enum mtk_ddp_comp_id next)
>  {
> -	unsigned int addr, value, reg;
> +	unsigned int addr, value;
>  
>  	value = mtk_ddp_mout_en(cur, next, &addr);
> -	if (value) {
> -		reg = readl_relaxed(config_regs + addr) | value;
> -		writel_relaxed(reg, config_regs + addr);
> -	}
> +	if (value)
> +		regmap_update_bits(config_regs, addr, value, value);
>  
>  	mtk_ddp_sout_sel(config_regs, cur, next);
>  
>  	value = mtk_ddp_sel_in(cur, next, &addr);
> -	if (value) {
> -		reg = readl_relaxed(config_regs + addr) | value;
> -		writel_relaxed(reg, config_regs + addr);
> -	}
> +	if (value)
> +		regmap_update_bits(config_regs, addr, value, value);
>  }
>  
> -void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> +void mtk_ddp_remove_comp_from_path(struct regmap *config_regs,
>  				   enum mtk_ddp_comp_id cur,
>  				   enum mtk_ddp_comp_id next)
>  {
> -	unsigned int addr, value, reg;
> +	unsigned int addr, value;
>  
>  	value = mtk_ddp_mout_en(cur, next, &addr);
> -	if (value) {
> -		reg = readl_relaxed(config_regs + addr) & ~value;
> -		writel_relaxed(reg, config_regs + addr);
> -	}
> +	if (value)
> +		regmap_update_bits(config_regs, addr, value, 0);
>  
>  	value = mtk_ddp_sel_in(cur, next, &addr);
> -	if (value) {
> -		reg = readl_relaxed(config_regs + addr) & ~value;
> -		writel_relaxed(reg, config_regs + addr);
> -	}
> +	if (value)
> +		regmap_update_bits(config_regs, addr, value, 0);
>  }
>  
>  struct mtk_disp_mutex *mtk_disp_mutex_get(struct device *dev, unsigned int id)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> index 827be424a148..01ff8b68881f 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> @@ -12,10 +12,10 @@ struct regmap;
>  struct device;
>  struct mtk_disp_mutex;
>  
> -void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> +void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
>  			      enum mtk_ddp_comp_id cur,
>  			      enum mtk_ddp_comp_id next);
> -void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> +void mtk_ddp_remove_comp_from_path(struct regmap *config_regs,
>  				   enum mtk_ddp_comp_id cur,
>  				   enum mtk_ddp_comp_id next);
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 0563c6813333..b68837ea02b3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -6,6 +6,7 @@
>  
>  #include <linux/component.h>
>  #include <linux/iommu.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of_address.h>
>  #include <linux/of_platform.h>
> @@ -425,7 +426,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct mtk_drm_private *private;
> -	struct resource *mem;
>  	struct device_node *node;
>  	struct component_match *match = NULL;
>  	int ret;
> @@ -437,14 +437,9 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  
>  	private->data = of_device_get_match_data(dev);
>  
> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	private->config_regs = devm_ioremap_resource(dev, mem);
> -	if (IS_ERR(private->config_regs)) {
> -		ret = PTR_ERR(private->config_regs);
> -		dev_err(dev, "Failed to ioremap mmsys-config resource: %d\n",
> -			ret);
> -		return ret;
> -	}
> +	private->config_regs = syscon_node_to_regmap(dev->of_node);
> +	if (IS_ERR(private->config_regs))
> +		return PTR_ERR(private->config_regs);
>  
>  	/* Iterate over sibling DISP function blocks */
>  	for_each_child_of_node(dev->of_node->parent, node) {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index 17bc99b9f5d4..03201080688d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -39,7 +39,7 @@ struct mtk_drm_private {
>  
>  	struct device_node *mutex_node;
>  	struct device *mutex_dev;
> -	void __iomem *config_regs;
> +	struct regmap *config_regs;
>  	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
>  	struct mtk_ddp_comp *ddp_comp[DDP_COMPONENT_ID_MAX];
>  	const struct mtk_mmsys_driver_data *data;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
