Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A990A11661E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 06:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6cssy2mHK5pSzuEwldgqStU4qmlTGMjMrK0rILnU3I=; b=FFcF5WM18jY2Og
	1bTC8Wl4HsemMB0kLwzaKnvdVXymbD8TApPZUTnP0pclqLZBWWLdOonPtoxmfy/2Uc557PjcgewL5
	DYqMQGFF4xOy21zkapbGrKp4jNIKaBHgIThhGc8RiHgBM+pUxaSN1sKqx8yF8XRdS55tKwuvf6uLK
	MBSjSOeMRl8Yo1RWS3rOHnWUZQcR1PrGeJvwrPyibyV+HRFCw960+7mMRHFCKsxirD7X0zlE7oyz1
	ZWkFCHoxUuF7WUZRLt67ySHb49JBfpL8v66CNKYRJHeJrKNovWn/BAlfAWiuOhpCicEqwrz1cp6q+
	U/mvUF7x/ebRy5yNBFEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBPm-0007tb-5M; Mon, 09 Dec 2019 05:16:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBPY-0007sE-0B; Mon, 09 Dec 2019 05:16:46 +0000
X-UUID: 6f4a2e17f9a044f7a97295bdac02cd62-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/iuyPvsaVdzjThz3ynKNy7lY5Ed2c8DFHT3fXKOUa5U=; 
 b=Z1dNkRmEe2z2l3kOcK9d8FTlDJw2ubJAmeq9VbT0g6x/0Y5I6m/etRAN4dKLpnxbmRupuoOhhpWSPHelafy+lvt3zFUk/taVJWkSfE133bQN62ck7CCe6eMrfPmrIyGXtyLdzrKdTd/9tVVxaifMMKYx9IbqjvkNmb3pmO+IBFA=;
X-UUID: 6f4a2e17f9a044f7a97295bdac02cd62-20191208
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1544962341; Sun, 08 Dec 2019 21:16:41 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 21:16:53 -0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Dec 2019 13:16:01 +0800
Message-ID: <1575868591.7013.5.camel@mtksdaap41>
Subject: Re: [resend PATCH v6 03/12] drm/mediatek: Use regmap for register
 access
From: CK Hu <ck.hu@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Mon, 9 Dec 2019 13:16:31 +0800
In-Reply-To: <20191207224740.24536-4-matthias.bgg@kernel.org>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-4-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_211644_047851_FA95C4BB 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, rdunlap@infradead.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 sean.wang@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:

On Sat, 2019-12-07 at 23:47 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The mmsys memory space is shared between the drm and the
> clk driver. Use regmap to access it.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 50 +++++++++++--------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 13 ++-----
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  2 +-
>  5 files changed, 30 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 34a731755791..259e2f4fa5fa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -27,7 +27,7 @@
>   * @enabled: records whether crtc_enable succeeded
>   * @planes: array of 4 drm_plane structures, one for each overlay plane
>   * @pending_planes: whether any plane has pending changes to be applied
> - * @config_regs: memory mapped mmsys configuration register space
> + * @config_regs: regmap mapped mmsys configuration register space
>   * @mutex: handle to one of the ten disp_mutex streams
>   * @ddp_comp_nr: number of components in ddp_comp
>   * @ddp_comp: array of pointers the mtk_ddp_comp structures used by this crtc
> @@ -43,7 +43,7 @@ struct mtk_drm_crtc {
>  	unsigned int			layer_nr;
>  	bool				pending_planes;
>  
> -	void __iomem			*config_regs;
> +	struct regmap			*config_regs;
>  	struct mtk_disp_mutex		*mutex;
>  	unsigned int			ddp_comp_nr;
>  	struct mtk_ddp_comp		**ddp_comp;
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 8106a71a7404..b765181223e6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -331,61 +331,53 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
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
> index 352b81a7a670..210455e9f46c 100644
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
> @@ -485,7 +486,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct mtk_drm_private *private;
> -	struct resource *mem;
>  	struct device_node *node;
>  	struct component_match *match = NULL;
>  	int ret;
> @@ -499,14 +499,9 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  	INIT_WORK(&private->commit.work, mtk_atomic_work);
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
> index e03fea12ff59..63a121577dcb 100644
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
