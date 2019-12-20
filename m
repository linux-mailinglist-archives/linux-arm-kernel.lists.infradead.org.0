Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B44127405
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZxXH1U6F03yAVZRajYSd3mhGiKfvNAdwXnR0PKcajo=; b=s5ILNSYTVUvEQ1
	OPRB3bs81WPfD4bhGdRZsenfhnKYqn8EOAyP3LTVa9zRaVt07/vQnKBEciUQ25SHbI9YqenLOEBG7
	c+1u7d2gaYiUaLod0j2KYpSC/Vik2ZeFD3xWfrLP02tiO9uf2OO8UAV9w2i8JIIbCB5jmfcyBt2rC
	GKDJlDzmBH6zcxP7oocdW96k2sdAX5Lsd52iabpfnfN03uECD7biOnuEJV/d24B7gDENjUGLtHtM7
	mvwRL1Zy5jQ7X+MLfNFmzFJydgWSTCgczXanIjIGf/vMU7G2DhAP/KjbQ7oWl1o4+U1OgN0/3sb3G
	dJdCFSBHvBcxxEPTn96g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii96C-0000tz-F8; Fri, 20 Dec 2019 03:37:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii95h-0000ek-3x; Fri, 20 Dec 2019 03:36:38 +0000
X-UUID: 73e364d2776548e3bd33972ebb1a3c7c-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=+DJG9P4r2pgr+uIsplGtmMWfn8BOeTpSdtzCFrrKz/c=; 
 b=FUb5etoLM3qO/vxGe3zqcVHw2HMa4k/kDXRw32xri/HR6iC6vzkNcbbL/cFXyqrzIimSV9BU3PRd2dlFyP5PmTrPfKjblvonRSZoHh90x+rdIVJdhIh4Rm7Ecr850rq1hnvvJOYMiYQeBn9bf42RBd3waYLmxMby2Kz/2WoTUxA=;
X-UUID: 73e364d2776548e3bd33972ebb1a3c7c-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1850869321; Thu, 19 Dec 2019 19:36:34 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 19:31:36 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 11:30:56 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 11:31:20 +0800
Message-ID: <1576812673.8410.10.camel@mtksdaap41>
Subject: Re: [PATCH v10 07/12] soc: mediatek: Remove infracfg misc driver
 support
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 11:31:13 +0800
In-Reply-To: <CANMq1KDSVH0kb0YVf5iiVTs=Bpc742gJWjqk3t0KU5LMzVNJSg@mail.gmail.com>
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-8-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KDSVH0kb0YVf5iiVTs=Bpc742gJWjqk3t0KU5LMzVNJSg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_193637_169052_78E2BFFE 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-19 at 11:56 +0800, Nicolas Boichat wrote:
> On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > In previous patches, we introduce scpsys-ext driver that covers
> > the functions which infracfg misc driver provided.
> > And then replace bus_prot_mask with bp_table of all compatibles.
> > Now, we're going to remove infracfg misc drvier which is no longer
> > being used.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/Kconfig          | 10 -----
> >  drivers/soc/mediatek/Makefile         |  3 +-
> >  drivers/soc/mediatek/mtk-infracfg.c   | 79 -----------------------------------
> >  include/linux/soc/mediatek/infracfg.h | 39 -----------------
> >  4 files changed, 1 insertion(+), 130 deletions(-)
> >  delete mode 100644 drivers/soc/mediatek/mtk-infracfg.c
> >  delete mode 100644 include/linux/soc/mediatek/infracfg.h
> >
> > diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> > index 2114b56..f837b3c 100644
> > --- a/drivers/soc/mediatek/Kconfig
> > +++ b/drivers/soc/mediatek/Kconfig
> > @@ -10,21 +10,12 @@ config MTK_CMDQ
> >         depends on ARCH_MEDIATEK || COMPILE_TEST
> >         select MAILBOX
> >         select MTK_CMDQ_MBOX
> > -       select MTK_INFRACFG
> >         help
> >           Say yes here to add support for the MediaTek Command Queue (CMDQ)
> >           driver. The CMDQ is used to help read/write registers with critical
> >           time limitation, such as updating display configuration during the
> >           vblank.
> >
> > -config MTK_INFRACFG
> > -       bool "MediaTek INFRACFG Support"
> > -       select REGMAP
> > -       help
> > -         Say yes here to add support for the MediaTek INFRACFG controller. The
> > -         INFRACFG controller contains various infrastructure registers not
> > -         directly associated to any device.
> > -
> >  config MTK_PMIC_WRAP
> >         tristate "MediaTek PMIC Wrapper Support"
> >         depends on RESET_CONTROLLER
> > @@ -38,7 +29,6 @@ config MTK_SCPSYS
> >         bool "MediaTek SCPSYS Support"
> >         default ARCH_MEDIATEK
> >         select REGMAP
> > -       select MTK_INFRACFG
> >         select PM_GENERIC_DOMAINS if PM
> >         help
> >           Say yes here to add support for the MediaTek SCPSYS power domain
> > diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
> > index b442be9..7bf7e88 100644
> > --- a/drivers/soc/mediatek/Makefile
> > +++ b/drivers/soc/mediatek/Makefile
> > @@ -1,5 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
> > -obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
> >  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
> > -obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
> > +obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o mtk-scpsys-ext.o
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
> > -#define INFRA_TOPAXI_PROTECTEN         0x0220
> > -#define INFRA_TOPAXI_PROTECTSTA1       0x0228
> > -#define INFRA_TOPAXI_PROTECTEN_SET     0x0260
> > -#define INFRA_TOPAXI_PROTECTEN_CLR     0x0264
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
> > -               bool reg_update)
> > -{
> > -       u32 val;
> > -       int ret;
> > -
> > -       if (reg_update)
> > -               regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
> > -                               mask);
> > -       else
> > -               regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);
> > -
> > -       ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> > -                                      val, (val & mask) == mask,
> > -                                      MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > -
> > -       return ret;
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
> > -               bool reg_update)
> > -{
> > -       int ret;
> > -       u32 val;
> > -
> > -       if (reg_update)
> > -               regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask, 0);
> > -       else
> > -               regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_CLR, mask);
> > -
> > -       ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> > -                                      val, !(val & mask),
> > -                                      MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > -
> > -       return ret;
> > -}
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
> > -#define MT8173_TOP_AXI_PROT_EN_MCI_M2          BIT(0)
> > -#define MT8173_TOP_AXI_PROT_EN_MM_M0           BIT(1)
> > -#define MT8173_TOP_AXI_PROT_EN_MM_M1           BIT(2)
> > -#define MT8173_TOP_AXI_PROT_EN_MMAPB_S         BIT(6)
> > -#define MT8173_TOP_AXI_PROT_EN_L2C_M2          BIT(9)
> > -#define MT8173_TOP_AXI_PROT_EN_L2SS_SMI                BIT(11)
> > -#define MT8173_TOP_AXI_PROT_EN_L2SS_ADD                BIT(12)
> > -#define MT8173_TOP_AXI_PROT_EN_CCI_M2          BIT(13)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_S           BIT(14)
> > -#define MT8173_TOP_AXI_PROT_EN_PERI_M0         BIT(15)
> > -#define MT8173_TOP_AXI_PROT_EN_PERI_M1         BIT(16)
> > -#define MT8173_TOP_AXI_PROT_EN_DEBUGSYS                BIT(17)
> > -#define MT8173_TOP_AXI_PROT_EN_CQ_DMA          BIT(18)
> > -#define MT8173_TOP_AXI_PROT_EN_GCPU            BIT(19)
> > -#define MT8173_TOP_AXI_PROT_EN_IOMMU           BIT(20)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_M0          BIT(21)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_M1          BIT(22)
> > -#define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT   BIT(23)
> > -
> > -#define MT2701_TOP_AXI_PROT_EN_MM_M0           BIT(1)
> > -#define MT2701_TOP_AXI_PROT_EN_CONN_M          BIT(2)
> > -#define MT2701_TOP_AXI_PROT_EN_CONN_S          BIT(8)
> > -
> > -#define MT7622_TOP_AXI_PROT_EN_ETHSYS          (BIT(3) | BIT(17))
> > -#define MT7622_TOP_AXI_PROT_EN_HIF0            (BIT(24) | BIT(25))
> > -#define MT7622_TOP_AXI_PROT_EN_HIF1            (BIT(26) | BIT(27) | \
> > -                                                BIT(28))
> > -#define MT7622_TOP_AXI_PROT_EN_WB              (BIT(2) | BIT(6) | \
> > -                                                BIT(7) | BIT(8))
> 
> It was really nice to have these all defined, can we move those to
> scpsys-ext.h? (and do the same for MT8183?)
> 

Sure. And I'll do the same for MT8183 in next version.

> > -int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
> > -               bool reg_update);
> > -int mtk_infracfg_clear_bus_protection(struct regmap *infracfg, u32 mask,
> > -               bool reg_update);
> > -#endif /* __SOC_MEDIATEK_INFRACFG_H */
> > --
> > 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
