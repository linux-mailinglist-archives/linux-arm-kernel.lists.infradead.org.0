Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F757125A24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 04:56:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILHrSj20+EQpMv2Iips/bUcLgr2PItaKjpyYPjvqK7k=; b=QSkE3IQwA0gyLr
	2GuthpZHIOvYBqaKf6n4mqZ36Scx9P6BXyUy8orjS5oqSaRttLdxYr+dpQZI2PGjbUdNzKQYh9oys
	5h6kf/M3ddNdOwZML7SUntQaLfx+NyJ7qLFCDsLgRJ0Lnn7yUb++HamZGYzoy+UCy9B4iIBWwNbWx
	OM6sHTkdzHCFOHp3FqzcaGvwhg8riiBVS8X2rlmyotw8uFBl9v0EGRt/NiPGB/DRJ+KknSGEMDE7H
	oJpV4Wno0BDeBxVHRvxGmCcFq7aa0PqmI6jxgSfTSg4kVSg8KAhLuRMANPqHyDe2L8lZu4ZI+xtRx
	5uz59Jx+Pfy+gO7tAOaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihmvY-0004ck-Q9; Thu, 19 Dec 2019 03:56:40 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihmvN-0004by-BL
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 03:56:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id x129so3527605qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fHnDeCTSpOncu/mxWBmOui8QwOBoNPyxepaSQcLW2SM=;
 b=SjvfDYSrkno4KLsQVZn7YE36zb/kYQUU6iSP+XAS1HHBzNv4K1039nuqhcgERE7Svg
 7VMouNrKJ11b/gyHGMfy13Hq964YAPxPV7zheFA5D5BQAjexgjFufM2NudTJVrUWdvuP
 XRMDWD0YPI7e9kRTMug6XBiteWovQWsoHvzlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fHnDeCTSpOncu/mxWBmOui8QwOBoNPyxepaSQcLW2SM=;
 b=e0UAU1FzEsPL88zGCv1bXY/mVnDNFcVY56KFEjRdkwxz+zMxMk8lBpJ3TAeGlXmZUl
 DoOzJqx0JKffemkiCibt+qDeEhywDmDcwUhhzjg5d448qxF2XSe+3Rj16bLzh4B8qZCZ
 F7bHlHVg0wPxlMTqO93HaPato1WAEuao/YUF5rRtc7VlAgv5QnFG/TYJS1S1eBfObVVB
 stKgU/AGmW1wUntbqTSWTbfKncHS/M14ojNE0CDIvfDe/LdZRS/GukCXUABOoS3GYTNb
 /IGjwSZEbr0138pR4gjm7fdM2+58mLCCIBeerBZO+wXm00OtML17k3Iqt+TXANRqdyvb
 /79w==
X-Gm-Message-State: APjAAAXZLQxZ2HLIDhxr13F7/31v9yi0RdL9DA8AY6pmADATS4exnI17
 gBmlXR4pmDLX6fv7dtJjHCv82zWG0e9uj/bJx2rKqH91720=
X-Google-Smtp-Source: APXvYqzDRLPuldNit7L4QrxNylEvmsH+Gp//KduZcHs9bl415QmYBGc+rcbAvLw6SBzozwRUW10u+uNhJRBTd0jH688=
X-Received: by 2002:a37:6551:: with SMTP id z78mr6478508qkb.144.1576727788462; 
 Wed, 18 Dec 2019 19:56:28 -0800 (PST)
MIME-Version: 1.0
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-8-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1576657848-14711-8-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 19 Dec 2019 11:56:17 +0800
Message-ID: <CANMq1KDSVH0kb0YVf5iiVTs=Bpc742gJWjqk3t0KU5LMzVNJSg@mail.gmail.com>
Subject: Re: [PATCH v10 07/12] soc: mediatek: Remove infracfg misc driver
 support
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_195629_441512_D51635CE 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> In previous patches, we introduce scpsys-ext driver that covers
> the functions which infracfg misc driver provided.
> And then replace bus_prot_mask with bp_table of all compatibles.
> Now, we're going to remove infracfg misc drvier which is no longer
> being used.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/soc/mediatek/Kconfig          | 10 -----
>  drivers/soc/mediatek/Makefile         |  3 +-
>  drivers/soc/mediatek/mtk-infracfg.c   | 79 -----------------------------------
>  include/linux/soc/mediatek/infracfg.h | 39 -----------------
>  4 files changed, 1 insertion(+), 130 deletions(-)
>  delete mode 100644 drivers/soc/mediatek/mtk-infracfg.c
>  delete mode 100644 include/linux/soc/mediatek/infracfg.h
>
> diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> index 2114b56..f837b3c 100644
> --- a/drivers/soc/mediatek/Kconfig
> +++ b/drivers/soc/mediatek/Kconfig
> @@ -10,21 +10,12 @@ config MTK_CMDQ
>         depends on ARCH_MEDIATEK || COMPILE_TEST
>         select MAILBOX
>         select MTK_CMDQ_MBOX
> -       select MTK_INFRACFG
>         help
>           Say yes here to add support for the MediaTek Command Queue (CMDQ)
>           driver. The CMDQ is used to help read/write registers with critical
>           time limitation, such as updating display configuration during the
>           vblank.
>
> -config MTK_INFRACFG
> -       bool "MediaTek INFRACFG Support"
> -       select REGMAP
> -       help
> -         Say yes here to add support for the MediaTek INFRACFG controller. The
> -         INFRACFG controller contains various infrastructure registers not
> -         directly associated to any device.
> -
>  config MTK_PMIC_WRAP
>         tristate "MediaTek PMIC Wrapper Support"
>         depends on RESET_CONTROLLER
> @@ -38,7 +29,6 @@ config MTK_SCPSYS
>         bool "MediaTek SCPSYS Support"
>         default ARCH_MEDIATEK
>         select REGMAP
> -       select MTK_INFRACFG
>         select PM_GENERIC_DOMAINS if PM
>         help
>           Say yes here to add support for the MediaTek SCPSYS power domain
> diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
> index b442be9..7bf7e88 100644
> --- a/drivers/soc/mediatek/Makefile
> +++ b/drivers/soc/mediatek/Makefile
> @@ -1,5 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
> -obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
>  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
> -obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
> +obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o mtk-scpsys-ext.o
> diff --git a/drivers/soc/mediatek/mtk-infracfg.c b/drivers/soc/mediatek/mtk-infracfg.c
> deleted file mode 100644
> index 341c7ac..0000000
> --- a/drivers/soc/mediatek/mtk-infracfg.c
> +++ /dev/null
> @@ -1,79 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (c) 2015 Pengutronix, Sascha Hauer <kernel@pengutronix.de>
> - */
> -
> -#include <linux/export.h>
> -#include <linux/jiffies.h>
> -#include <linux/regmap.h>
> -#include <linux/soc/mediatek/infracfg.h>
> -#include <asm/processor.h>
> -
> -#define MTK_POLL_DELAY_US   10
> -#define MTK_POLL_TIMEOUT    (jiffies_to_usecs(HZ))
> -
> -#define INFRA_TOPAXI_PROTECTEN         0x0220
> -#define INFRA_TOPAXI_PROTECTSTA1       0x0228
> -#define INFRA_TOPAXI_PROTECTEN_SET     0x0260
> -#define INFRA_TOPAXI_PROTECTEN_CLR     0x0264
> -
> -/**
> - * mtk_infracfg_set_bus_protection - enable bus protection
> - * @regmap: The infracfg regmap
> - * @mask: The mask containing the protection bits to be enabled.
> - * @reg_update: The boolean flag determines to set the protection bits
> - *              by regmap_update_bits with enable register(PROTECTEN) or
> - *              by regmap_write with set register(PROTECTEN_SET).
> - *
> - * This function enables the bus protection bits for disabled power
> - * domains so that the system does not hang when some unit accesses the
> - * bus while in power down.
> - */
> -int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
> -               bool reg_update)
> -{
> -       u32 val;
> -       int ret;
> -
> -       if (reg_update)
> -               regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
> -                               mask);
> -       else
> -               regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);
> -
> -       ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> -                                      val, (val & mask) == mask,
> -                                      MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> -
> -       return ret;
> -}
> -
> -/**
> - * mtk_infracfg_clear_bus_protection - disable bus protection
> - * @regmap: The infracfg regmap
> - * @mask: The mask containing the protection bits to be disabled.
> - * @reg_update: The boolean flag determines to clear the protection bits
> - *              by regmap_update_bits with enable register(PROTECTEN) or
> - *              by regmap_write with clear register(PROTECTEN_CLR).
> - *
> - * This function disables the bus protection bits previously enabled with
> - * mtk_infracfg_set_bus_protection.
> - */
> -
> -int mtk_infracfg_clear_bus_protection(struct regmap *infracfg, u32 mask,
> -               bool reg_update)
> -{
> -       int ret;
> -       u32 val;
> -
> -       if (reg_update)
> -               regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask, 0);
> -       else
> -               regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_CLR, mask);
> -
> -       ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
> -                                      val, !(val & mask),
> -                                      MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> -
> -       return ret;
> -}
> diff --git a/include/linux/soc/mediatek/infracfg.h b/include/linux/soc/mediatek/infracfg.h
> deleted file mode 100644
> index fd25f01..0000000
> --- a/include/linux/soc/mediatek/infracfg.h
> +++ /dev/null
> @@ -1,39 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef __SOC_MEDIATEK_INFRACFG_H
> -#define __SOC_MEDIATEK_INFRACFG_H
> -
> -#define MT8173_TOP_AXI_PROT_EN_MCI_M2          BIT(0)
> -#define MT8173_TOP_AXI_PROT_EN_MM_M0           BIT(1)
> -#define MT8173_TOP_AXI_PROT_EN_MM_M1           BIT(2)
> -#define MT8173_TOP_AXI_PROT_EN_MMAPB_S         BIT(6)
> -#define MT8173_TOP_AXI_PROT_EN_L2C_M2          BIT(9)
> -#define MT8173_TOP_AXI_PROT_EN_L2SS_SMI                BIT(11)
> -#define MT8173_TOP_AXI_PROT_EN_L2SS_ADD                BIT(12)
> -#define MT8173_TOP_AXI_PROT_EN_CCI_M2          BIT(13)
> -#define MT8173_TOP_AXI_PROT_EN_MFG_S           BIT(14)
> -#define MT8173_TOP_AXI_PROT_EN_PERI_M0         BIT(15)
> -#define MT8173_TOP_AXI_PROT_EN_PERI_M1         BIT(16)
> -#define MT8173_TOP_AXI_PROT_EN_DEBUGSYS                BIT(17)
> -#define MT8173_TOP_AXI_PROT_EN_CQ_DMA          BIT(18)
> -#define MT8173_TOP_AXI_PROT_EN_GCPU            BIT(19)
> -#define MT8173_TOP_AXI_PROT_EN_IOMMU           BIT(20)
> -#define MT8173_TOP_AXI_PROT_EN_MFG_M0          BIT(21)
> -#define MT8173_TOP_AXI_PROT_EN_MFG_M1          BIT(22)
> -#define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT   BIT(23)
> -
> -#define MT2701_TOP_AXI_PROT_EN_MM_M0           BIT(1)
> -#define MT2701_TOP_AXI_PROT_EN_CONN_M          BIT(2)
> -#define MT2701_TOP_AXI_PROT_EN_CONN_S          BIT(8)
> -
> -#define MT7622_TOP_AXI_PROT_EN_ETHSYS          (BIT(3) | BIT(17))
> -#define MT7622_TOP_AXI_PROT_EN_HIF0            (BIT(24) | BIT(25))
> -#define MT7622_TOP_AXI_PROT_EN_HIF1            (BIT(26) | BIT(27) | \
> -                                                BIT(28))
> -#define MT7622_TOP_AXI_PROT_EN_WB              (BIT(2) | BIT(6) | \
> -                                                BIT(7) | BIT(8))

It was really nice to have these all defined, can we move those to
scpsys-ext.h? (and do the same for MT8183?)

> -int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
> -               bool reg_update);
> -int mtk_infracfg_clear_bus_protection(struct regmap *infracfg, u32 mask,
> -               bool reg_update);
> -#endif /* __SOC_MEDIATEK_INFRACFG_H */
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
