Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63641713AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goQY4x1Cad3eHZtNohkEDYEZ6y22CbZFjHQjAJSooDU=; b=DGNS96qMALo6EX
	tgrcyui946f3mflURLKTS1+MkK/+qV41b4VwNpX3d0Yv3L0ECSTA5pJ44eXfygoKks4urgyfybtke
	zetS56IYaAEFEVK/ZLCtInBAaT9L+Y6COQFhrw/G/RslWkk/Eq3ucSFOy/LToS/4KtUcPAC6As0qo
	StupZE7lua6AWIITdTQFLkJe5JMjoqg4LTtl49H/R91w+mFpDy+WhaI5Qgzh21IiYFSFKEijwaxGV
	ObkU7j2pBtVkfRNzBWtRwZG+UzPRgtSZ11eQRUeirMekEz+vhswSzEDCrdgzahiJ1HxHtzkh/FlaU
	JKES60XP9A3aOsZYHwKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7F6b-0004iy-VH; Thu, 27 Feb 2020 09:05:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7F6F-0004hW-Ox; Thu, 27 Feb 2020 09:04:57 +0000
X-UUID: 2d873fecf51347ca9996a016e08e8dfe-20200227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=s49kQ/4eBBv+UD7Hr3V2alwWMpIr4yXzqun9qCCm8kQ=; 
 b=uOObFOEZ2OLqrPWfV6UHRh2NuRS3r9Wx+TD98rDpTzTM6XsEnERsdQzhxwHUH8VZ7a3KZh3McPkkI9Lv8PfjaBl3SfdjDk9Gae03OpEMFlTR09+IoIUHC2MxLbOeNeReSh3JzW5R+lZoOHhxU2T9z/8/fmQW/BxxHc5WAQ9pfAQ=;
X-UUID: 2d873fecf51347ca9996a016e08e8dfe-20200227
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1576935954; Thu, 27 Feb 2020 01:04:48 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 01:04:46 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 17:03:36 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Feb 2020 17:04:20 +0800
Message-ID: <1582794271.1889.10.camel@mtksdaap41>
Subject: Re: [PATCH v9 1/4] drm/mediatek: Use regmap for register access
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Thu, 27 Feb 2020 17:04:31 +0800
In-Reply-To: <07976851-8ac4-9c0d-3257-74fd4df74ef0@collabora.com>
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
 <20200226105419.632771-2-enric.balletbo@collabora.com>
 <1582765858.20746.2.camel@mtksdaap41>
 <07976851-8ac4-9c0d-3257-74fd4df74ef0@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1593FEEEB5C71E2C9B1951E4352218ED93D394FC9E26DABA78D1534804CF88642000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_010455_823713_17A88AD0 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 2020-02-27 at 09:45 +0100, Enric Balletbo i Serra wrote:
> Hi CK,
> 
> On 27/2/20 2:10, CK Hu wrote:
> > Hi, Enric:
> > 
> > On Wed, 2020-02-26 at 11:54 +0100, Enric Balletbo i Serra wrote:
> >> From: Matthias Brugger <mbrugger@suse.com>
> >>
> >> The mmsys memory space is shared between the drm and the
> >> clk driver. Use regmap to access it.
> > 
> > Once there is a mmsys driver and clock control is moved into mmsys
> > driver, I think we should also move routing control into mmsys driver
> > and we could drop this patch.
> > 
> 
> Do you want me do this in this series or later?

I would like you to do it in this series. If you move routing control to
mmsys driver, you need not to use regmap any more. What you need to move
is what you modify in this patch. mmsys may provide mtk_mmsys_connect()
and mtk_mmsys_disconnect() function to replace
mtk_ddp_add_comp_to_path() and mtk_ddp_remove_comp_from_path(). DRM
driver need not to map mmsys's register and just keep mmsys device
pointer. You could move routing control after clock control has been
moved.

Regards,
CK

> 
> Thanks,
>  Enric
> 
> > Regards,
> > CK
> > 
> >>
> >> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> >> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> >> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> >> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >> ---
> >>
> >> Changes in v9: None
> >> Changes in v8:
> >> - Select REGMAP and MFD_SYSCON (Randy Dunlap)
> >>
> >> Changes in v7:
> >> - Add R-by from CK
> >>
> >>  drivers/gpu/drm/mediatek/Kconfig        |  2 +
> >>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 +-
> >>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 50 +++++++++++--------------
> >>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  4 +-
> >>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 13 ++-----
> >>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  2 +-
> >>  6 files changed, 32 insertions(+), 43 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/mediatek/Kconfig b/drivers/gpu/drm/mediatek/Kconfig
> >> index fa5ffc4fe823..89e18a473cb5 100644
> >> --- a/drivers/gpu/drm/mediatek/Kconfig
> >> +++ b/drivers/gpu/drm/mediatek/Kconfig
> >> @@ -10,8 +10,10 @@ config DRM_MEDIATEK
> >>  	select DRM_KMS_HELPER
> >>  	select DRM_MIPI_DSI
> >>  	select DRM_PANEL
> >> +	select MFD_SYSCON
> >>  	select MEMORY
> >>  	select MTK_SMI
> >> +	select REGMAP
> >>  	select VIDEOMODE_HELPERS
> >>  	help
> >>  	  Choose this option if you have a Mediatek SoCs.
> >> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> >> index 5ee74d7ce35c..a236499123aa 100644
> >> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> >> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> >> @@ -28,7 +28,7 @@
> >>   * @enabled: records whether crtc_enable succeeded
> >>   * @planes: array of 4 drm_plane structures, one for each overlay plane
> >>   * @pending_planes: whether any plane has pending changes to be applied
> >> - * @config_regs: memory mapped mmsys configuration register space
> >> + * @config_regs: regmap mapped mmsys configuration register space
> >>   * @mutex: handle to one of the ten disp_mutex streams
> >>   * @ddp_comp_nr: number of components in ddp_comp
> >>   * @ddp_comp: array of pointers the mtk_ddp_comp structures used by this crtc
> >> @@ -50,7 +50,7 @@ struct mtk_drm_crtc {
> >>  	u32				cmdq_event;
> >>  #endif
> >>  
> >> -	void __iomem			*config_regs;
> >> +	struct regmap			*config_regs;
> >>  	struct mtk_disp_mutex		*mutex;
> >>  	unsigned int			ddp_comp_nr;
> >>  	struct mtk_ddp_comp		**ddp_comp;
> >> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> >> index 13035c906035..302753744cc6 100644
> >> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> >> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> >> @@ -383,61 +383,53 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
> >>  	return value;
> >>  }
> >>  
> >> -static void mtk_ddp_sout_sel(void __iomem *config_regs,
> >> +static void mtk_ddp_sout_sel(struct regmap *config_regs,
> >>  			     enum mtk_ddp_comp_id cur,
> >>  			     enum mtk_ddp_comp_id next)
> >>  {
> >>  	if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> >> -		writel_relaxed(BLS_TO_DSI_RDMA1_TO_DPI1,
> >> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> >> +		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> >> +				BLS_TO_DSI_RDMA1_TO_DPI1);
> >>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> >> -		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
> >> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> >> -		writel_relaxed(DSI_SEL_IN_RDMA,
> >> -			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> >> -		writel_relaxed(DPI_SEL_IN_BLS,
> >> -			       config_regs + DISP_REG_CONFIG_DPI_SEL);
> >> +		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> >> +				BLS_TO_DPI_RDMA1_TO_DSI);
> >> +		regmap_write(config_regs, DISP_REG_CONFIG_DSI_SEL,
> >> +				DSI_SEL_IN_RDMA);
> >> +		regmap_write(config_regs, DISP_REG_CONFIG_DPI_SEL,
> >> +				DPI_SEL_IN_BLS);
> >>  	}
> >>  }
> >>  
> >> -void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> >> +void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
> >>  			      enum mtk_ddp_comp_id cur,
> >>  			      enum mtk_ddp_comp_id next)
> >>  {
> >> -	unsigned int addr, value, reg;
> >> +	unsigned int addr, value;
> >>  
> >>  	value = mtk_ddp_mout_en(cur, next, &addr);
> >> -	if (value) {
> >> -		reg = readl_relaxed(config_regs + addr) | value;
> >> -		writel_relaxed(reg, config_regs + addr);
> >> -	}
> >> +	if (value)
> >> +		regmap_update_bits(config_regs, addr, value, value);
> >>  
> >>  	mtk_ddp_sout_sel(config_regs, cur, next);
> >>  
> >>  	value = mtk_ddp_sel_in(cur, next, &addr);
> >> -	if (value) {
> >> -		reg = readl_relaxed(config_regs + addr) | value;
> >> -		writel_relaxed(reg, config_regs + addr);
> >> -	}
> >> +	if (value)
> >> +		regmap_update_bits(config_regs, addr, value, value);
> >>  }
> >>  
> >> -void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> >> +void mtk_ddp_remove_comp_from_path(struct regmap *config_regs,
> >>  				   enum mtk_ddp_comp_id cur,
> >>  				   enum mtk_ddp_comp_id next)
> >>  {
> >> -	unsigned int addr, value, reg;
> >> +	unsigned int addr, value;
> >>  
> >>  	value = mtk_ddp_mout_en(cur, next, &addr);
> >> -	if (value) {
> >> -		reg = readl_relaxed(config_regs + addr) & ~value;
> >> -		writel_relaxed(reg, config_regs + addr);
> >> -	}
> >> +	if (value)
> >> +		regmap_update_bits(config_regs, addr, value, 0);
> >>  
> >>  	value = mtk_ddp_sel_in(cur, next, &addr);
> >> -	if (value) {
> >> -		reg = readl_relaxed(config_regs + addr) & ~value;
> >> -		writel_relaxed(reg, config_regs + addr);
> >> -	}
> >> +	if (value)
> >> +		regmap_update_bits(config_regs, addr, value, 0);
> >>  }
> >>  
> >>  struct mtk_disp_mutex *mtk_disp_mutex_get(struct device *dev, unsigned int id)
> >> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> >> index 827be424a148..01ff8b68881f 100644
> >> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> >> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> >> @@ -12,10 +12,10 @@ struct regmap;
> >>  struct device;
> >>  struct mtk_disp_mutex;
> >>  
> >> -void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> >> +void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
> >>  			      enum mtk_ddp_comp_id cur,
> >>  			      enum mtk_ddp_comp_id next);
> >> -void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> >> +void mtk_ddp_remove_comp_from_path(struct regmap *config_regs,
> >>  				   enum mtk_ddp_comp_id cur,
> >>  				   enum mtk_ddp_comp_id next);
> >>  
> >> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> >> index 0563c6813333..b68837ea02b3 100644
> >> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> >> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> >> @@ -6,6 +6,7 @@
> >>  
> >>  #include <linux/component.h>
> >>  #include <linux/iommu.h>
> >> +#include <linux/mfd/syscon.h>
> >>  #include <linux/module.h>
> >>  #include <linux/of_address.h>
> >>  #include <linux/of_platform.h>
> >> @@ -425,7 +426,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
> >>  {
> >>  	struct device *dev = &pdev->dev;
> >>  	struct mtk_drm_private *private;
> >> -	struct resource *mem;
> >>  	struct device_node *node;
> >>  	struct component_match *match = NULL;
> >>  	int ret;
> >> @@ -437,14 +437,9 @@ static int mtk_drm_probe(struct platform_device *pdev)
> >>  
> >>  	private->data = of_device_get_match_data(dev);
> >>  
> >> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >> -	private->config_regs = devm_ioremap_resource(dev, mem);
> >> -	if (IS_ERR(private->config_regs)) {
> >> -		ret = PTR_ERR(private->config_regs);
> >> -		dev_err(dev, "Failed to ioremap mmsys-config resource: %d\n",
> >> -			ret);
> >> -		return ret;
> >> -	}
> >> +	private->config_regs = syscon_node_to_regmap(dev->of_node);
> >> +	if (IS_ERR(private->config_regs))
> >> +		return PTR_ERR(private->config_regs);
> >>  
> >>  	/* Iterate over sibling DISP function blocks */
> >>  	for_each_child_of_node(dev->of_node->parent, node) {
> >> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> >> index 17bc99b9f5d4..03201080688d 100644
> >> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> >> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> >> @@ -39,7 +39,7 @@ struct mtk_drm_private {
> >>  
> >>  	struct device_node *mutex_node;
> >>  	struct device *mutex_dev;
> >> -	void __iomem *config_regs;
> >> +	struct regmap *config_regs;
> >>  	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
> >>  	struct mtk_ddp_comp *ddp_comp[DDP_COMPONENT_ID_MAX];
> >>  	const struct mtk_mmsys_driver_data *data;
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
