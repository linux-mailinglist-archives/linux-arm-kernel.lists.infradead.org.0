Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BD51CD19A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 08:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yr/IIlkdd789HTTi0OgvNj5l67WCtQzP4ITvfrUsLCU=; b=moPh7WibTTJpCY
	3fLGGUvQuQmfTcRFT+OFIWCjyftkPzp9+0KJkXiM9wWafxOTSUnmOPW2XLIoQKqSEwIPkl3vX6P7k
	Sou5qyyK407g43JCQOEXnzI5/+Y5GaZ+9IH0GHOI6S+56rwnrpP+p9xgsXv0ddFQ6cvLIZVY4Y4Ps
	2tmYb2JWTyzUX9pVnKApIrecYr7ggBjkQWhrGib99o4ALBweJTVML3rwIfWIb6FPlc5TlunR3YA0t
	u1W5laQdSZnBcHejNWPJtS0QX0mfmpQRtVa9hCPjdgrGogfShkg7FY+lS8cf8yFhg7wEiRP1FSTAv
	m1B51W0Eq+275rUEtoww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1bh-00025R-RN; Mon, 11 May 2020 06:08:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1bZ-00024z-Ag; Mon, 11 May 2020 06:07:59 +0000
X-UUID: cdcec821e41848cb9ede0519575e75e0-20200510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=U+zyaXCjeWA/QnQwgJfP/AK+Tn0+3JKceonniVGdi+0=; 
 b=iC0aMSlU76sHo/ETSsvyveFdFLPneOespX9BkjcAcPySyPocGUxhZreZQdl0pXFxKCTnv4kUUuqjNCCIaP0gZbhM+sklVHADIgZCkCjDzpYSWFnmN9cQvzwZIgw4dWsanqWiy0CSCtq0QXsVU3CP51ilYnwbCm862izDIPIPDiA=;
X-UUID: cdcec821e41848cb9ede0519575e75e0-20200510
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 34349766; Sun, 10 May 2020 22:07:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 10 May 2020 23:03:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 14:03:09 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 11 May 2020 14:03:09 +0800
Message-ID: <1589176989.21832.10.camel@mtksdaap41>
Subject: Re: [PATCH v14 04/11] soc: mediatek: Remove infracfg misc driver
 support
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Mon, 11 May 2020 14:03:09 +0800
In-Reply-To: <321bcdff-06ea-b51d-d287-444bcdb20cba@collabora.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
 <1588752963-19934-5-git-send-email-weiyi.lu@mediatek.com>
 <321bcdff-06ea-b51d-d287-444bcdb20cba@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_230757_381365_EB37B22C 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Rob
 Herring <robh@kernel.org>, Enric Balletbo Serra <eballetbo@gmail.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2020-05-06 at 23:00 +0200, Enric Balletbo i Serra wrote:
> Hi Weiyi,
> 
> Thank you for your patch.
> 
> On 6/5/20 10:15, Weiyi Lu wrote:
> > The functions provided by infracfg misc driver have no other user except
> > the scpsys driver so move those into scpsys driver directly.
> > And then, remove infracfg misc drvier which is no longer being used.
> 
> Typo: s/drvier/driver/

I'll fix it, thank you.

> 
> > BTW, in next patch, we're going to extend the bus protection functions
> > with more customized arguments.
> > 
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> 
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> 

Thanks for your reviewing.

> > ---
> >  drivers/soc/mediatek/Kconfig          | 10 -----
> >  drivers/soc/mediatek/Makefile         |  1 -
> >  drivers/soc/mediatek/mtk-infracfg.c   | 79 -----------------------------------
> >  drivers/soc/mediatek/mtk-scpsys.c     | 66 +++++++++++++++++++++++++----
> >  include/linux/soc/mediatek/infracfg.h | 39 -----------------
> >  5 files changed, 57 insertions(+), 138 deletions(-)
> >  delete mode 100644 drivers/soc/mediatek/mtk-infracfg.c
> >  delete mode 100644 include/linux/soc/mediatek/infracfg.h
> > 
> > diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> > index 2114b56..f837b3c 100644
> > --- a/drivers/soc/mediatek/Kconfig
> > +++ b/drivers/soc/mediatek/Kconfig
> > @@ -10,21 +10,12 @@ config MTK_CMDQ
> >  	depends on ARCH_MEDIATEK || COMPILE_TEST
> >  	select MAILBOX
> >  	select MTK_CMDQ_MBOX
> > -	select MTK_INFRACFG
> >  	help
> >  	  Say yes here to add support for the MediaTek Command Queue (CMDQ)
> >  	  driver. The CMDQ is used to help read/write registers with critical
> >  	  time limitation, such as updating display configuration during the
> >  	  vblank.
> >  
> > -config MTK_INFRACFG
> > -	bool "MediaTek INFRACFG Support"
> > -	select REGMAP
> > -	help
> > -	  Say yes here to add support for the MediaTek INFRACFG controller. The
> > -	  INFRACFG controller contains various infrastructure registers not
> > -	  directly associated to any device.
> > -
> >  config MTK_PMIC_WRAP
> >  	tristate "MediaTek PMIC Wrapper Support"
> >  	depends on RESET_CONTROLLER
> > @@ -38,7 +29,6 @@ config MTK_SCPSYS
> >  	bool "MediaTek SCPSYS Support"
> >  	default ARCH_MEDIATEK
> >  	select REGMAP
> > -	select MTK_INFRACFG
> >  	select PM_GENERIC_DOMAINS if PM
> >  	help
> >  	  Say yes here to add support for the MediaTek SCPSYS power domain
> > diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
> > index b017330..2b2c2537 100644
> > --- a/drivers/soc/mediatek/Makefile
> > +++ b/drivers/soc/mediatek/Makefile
> > @@ -1,5 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
> > -obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
> >  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
> >  obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
> > diff --git a/drivers/soc/mediatek/mtk-infracfg.c b/drivers/soc/mediatek/mtk-infracfg.c
> > deleted file mode 100644
> > index 341c7ac..0000000
> > --- a/drivers/soc/mediatek/mtk-infracfg.c
> > +++ /dev/null
> > @@ -1,79 +0,0 @@
> > -// SPDX-License-Identifier: GPL-2.0-only
> > -/*
> > - * Copyright (c) 2015 Pengutronix, Sascha Hauer <kernel@pengutronix.de>
> > - */
> > -
> > -#include <linux/export.h>
> > -#include <linux/jiffies.h>
> > -#include <linux/regmap.h>
> > -#include <linux/soc/mediatek/infracfg.h>
> > -#include <asm/processor.h>
> > -
> > -#define MTK_POLL_DELAY_US   10
> > -#define MTK_POLL_TIMEOUT    (jiffies_to_usecs(HZ))
> > -
> > -#define INFRA_TOPAXI_PROTECTEN		0x0220
> > -#define INFRA_TOPAXI_PROTECTSTA1	0x0228
> > -#define INFRA_TOPAXI_PROTECTEN_SET	0x0260
> > -#define INFRA_TOPAXI_PROTECTEN_CLR	0x0264
> > -
> > -/**
> > - * mtk_infracfg_set_bus_protection - enable bus protection
> > - * @regmap: The infracfg regmap
> > - * @mask: The mask containing the protection bits to be enabled.
> > - * @reg_update: The boolean flag determines to set the protection bits
> > - *              by regmap_update_bits with enable register(PROTECTEN) or
> > - *              by regmap_write with set register(PROTECTEN_SET).
> > - *
> > - * This function enables the bus protection bits for disabled power
> > - * domains so that the system does not hang when some unit accesses the
> > - * bus while in power down.
> > - */
> > -int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
> > -		bool reg_update)
> > -{
> > -	u32 val;
> > -	int ret;
> > -
> > -	if (reg_update)
> > -		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
> > -				mask);
> > -	else
> > -		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);
> > -
> > -	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> > -				       val, (val & mask) == mask,
> > -				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > -
> > -	return ret;
> > -}
> > -
> > -/**
> > - * mtk_infracfg_clear_bus_protection - disable bus protection
> > - * @regmap: The infracfg regmap
> > - * @mask: The mask containing the protection bits to be disabled.
> > - * @reg_update: The boolean flag determines to clear the protection bits
> > - *              by regmap_update_bits with enable register(PROTECTEN) or
> > - *              by regmap_write with clear register(PROTECTEN_CLR).
> > - *
> > - * This function disables the bus protection bits previously enabled with
> > - * mtk_infracfg_set_bus_protection.
> > - */
> > -
> > -int mtk_infracfg_clear_bus_protection(struct regmap *infracfg, u32 mask,
> > -		bool reg_update)
> > -{
> > -	int ret;
> > -	u32 val;
> > -
> > -	if (reg_update)
> > -		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask, 0);
> > -	else
> > -		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_CLR, mask);
> > -
> > -	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> > -				       val, !(val & mask),
> > -				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > -
> > -	return ret;
> > -}
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index c9c3cf7..b603af7 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -10,8 +10,8 @@
> >  #include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/pm_domain.h>
> > +#include <linux/regmap.h>
> >  #include <linux/regulator/consumer.h>
> > -#include <linux/soc/mediatek/infracfg.h>
> >  
> >  #include <dt-bindings/power/mt2701-power.h>
> >  #include <dt-bindings/power/mt2712-power.h>
> > @@ -78,6 +78,29 @@
> >  #define PWR_STATUS_HIF1			BIT(26)	/* MT7622 */
> >  #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
> >  
> > +#define INFRA_TOPAXI_PROTECTEN		0x0220
> > +#define INFRA_TOPAXI_PROTECTSTA1	0x0228
> > +#define INFRA_TOPAXI_PROTECTEN_SET	0x0260
> > +#define INFRA_TOPAXI_PROTECTEN_CLR	0x0264
> > +
> > +#define MT2701_TOP_AXI_PROT_EN_MM_M0		BIT(1)
> > +#define MT2701_TOP_AXI_PROT_EN_CONN_M		BIT(2)
> > +#define MT2701_TOP_AXI_PROT_EN_CONN_S		BIT(8)
> > +
> > +#define MT7622_TOP_AXI_PROT_EN_ETHSYS		(BIT(3) | BIT(17))
> > +#define MT7622_TOP_AXI_PROT_EN_HIF0		(BIT(24) | BIT(25))
> > +#define MT7622_TOP_AXI_PROT_EN_HIF1		(BIT(26) | BIT(27) | \
> > +						 BIT(28))
> > +#define MT7622_TOP_AXI_PROT_EN_WB		(BIT(2) | BIT(6) | \
> > +						 BIT(7) | BIT(8))
> > +
> > +#define MT8173_TOP_AXI_PROT_EN_MM_M0		BIT(1)
> > +#define MT8173_TOP_AXI_PROT_EN_MM_M1		BIT(2)
> > +#define MT8173_TOP_AXI_PROT_EN_MFG_S		BIT(14)
> > +#define MT8173_TOP_AXI_PROT_EN_MFG_M0		BIT(21)
> > +#define MT8173_TOP_AXI_PROT_EN_MFG_M1		BIT(22)
> > +#define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT	BIT(23)
> > +
> >  #define MAX_CLKS	3
> >  
> >  /**
> > @@ -251,25 +274,50 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
> >  static int scpsys_bus_protect_enable(struct scp_domain *scpd)
> >  {
> >  	struct scp *scp = scpd->scp;
> > +	struct regmap *infracfg = scp->infracfg;
> > +	u32 mask = scpd->data->bus_prot_mask;
> > +	bool reg_update = scp->bus_prot_reg_update;
> > +	u32 val;
> > +	int ret;
> >  
> > -	if (!scpd->data->bus_prot_mask)
> > +	if (!mask)
> >  		return 0;
> >  
> > -	return mtk_infracfg_set_bus_protection(scp->infracfg,
> > -			scpd->data->bus_prot_mask,
> > -			scp->bus_prot_reg_update);
> > +	if (reg_update)
> > +		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
> > +				mask);
> > +	else
> > +		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);
> > +
> > +	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> > +				       val, (val & mask) == mask,
> > +				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > +
> > +	return ret;
> >  }
> >  
> >  static int scpsys_bus_protect_disable(struct scp_domain *scpd)
> >  {
> >  	struct scp *scp = scpd->scp;
> > +	struct regmap *infracfg = scp->infracfg;
> > +	u32 mask = scpd->data->bus_prot_mask;
> > +	bool reg_update = scp->bus_prot_reg_update;
> > +	u32 val;
> > +	int ret;
> >  
> > -	if (!scpd->data->bus_prot_mask)
> > +	if (!mask)
> >  		return 0;
> >  
> > -	return mtk_infracfg_clear_bus_protection(scp->infracfg,
> > -			scpd->data->bus_prot_mask,
> > -			scp->bus_prot_reg_update);
> > +	if (reg_update)
> > +		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask, 0);
> > +	else
> > +		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_CLR, mask);
> > +
> > +	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> > +				       val, !(val & mask),
> > +				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > +
> > +	return ret;
> >  }
> >  
> >  static int scpsys_power_on(struct generic_pm_domain *genpd)
> > diff --git a/include/linux/soc/mediatek/infracfg.h b/include/linux/soc/mediatek/infracfg.h
> > deleted file mode 100644
> > index fd25f01..0000000
> > --- a/include/linux/soc/mediatek/infracfg.h
> > +++ /dev/null
> > @@ -1,39 +0,0 @@
> > -/* SPDX-License-Identifier: GPL-2.0 */
> > -#ifndef __SOC_MEDIATEK_INFRACFG_H
> > -#define __SOC_MEDIATEK_INFRACFG_H
> > -
> > -#define MT8173_TOP_AXI_PROT_EN_MCI_M2		BIT(0)
> > -#define MT8173_TOP_AXI_PROT_EN_MM_M0		BIT(1)
> > -#define MT8173_TOP_AXI_PROT_EN_MM_M1		BIT(2)
> > -#define MT8173_TOP_AXI_PROT_EN_MMAPB_S		BIT(6)
> > -#define MT8173_TOP_AXI_PROT_EN_L2C_M2		BIT(9)
> > -#define MT8173_TOP_AXI_PROT_EN_L2SS_SMI		BIT(11)
> > -#define MT8173_TOP_AXI_PROT_EN_L2SS_ADD		BIT(12)
> > -#define MT8173_TOP_AXI_PROT_EN_CCI_M2		BIT(13)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_S		BIT(14)
> > -#define MT8173_TOP_AXI_PROT_EN_PERI_M0		BIT(15)
> > -#define MT8173_TOP_AXI_PROT_EN_PERI_M1		BIT(16)
> > -#define MT8173_TOP_AXI_PROT_EN_DEBUGSYS		BIT(17)
> > -#define MT8173_TOP_AXI_PROT_EN_CQ_DMA		BIT(18)
> > -#define MT8173_TOP_AXI_PROT_EN_GCPU		BIT(19)
> > -#define MT8173_TOP_AXI_PROT_EN_IOMMU		BIT(20)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_M0		BIT(21)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_M1		BIT(22)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT	BIT(23)
> > -
> > -#define MT2701_TOP_AXI_PROT_EN_MM_M0		BIT(1)
> > -#define MT2701_TOP_AXI_PROT_EN_CONN_M		BIT(2)
> > -#define MT2701_TOP_AXI_PROT_EN_CONN_S		BIT(8)
> > -
> > -#define MT7622_TOP_AXI_PROT_EN_ETHSYS		(BIT(3) | BIT(17))
> > -#define MT7622_TOP_AXI_PROT_EN_HIF0		(BIT(24) | BIT(25))
> > -#define MT7622_TOP_AXI_PROT_EN_HIF1		(BIT(26) | BIT(27) | \
> > -						 BIT(28))
> > -#define MT7622_TOP_AXI_PROT_EN_WB		(BIT(2) | BIT(6) | \
> > -						 BIT(7) | BIT(8))
> > -
> > -int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
> > -		bool reg_update);
> > -int mtk_infracfg_clear_bus_protection(struct regmap *infracfg, u32 mask,
> > -		bool reg_update);
> > -#endif /* __SOC_MEDIATEK_INFRACFG_H */
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
