Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C53F1274D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 06:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtiqgqOXpHwHJwVC0BN3j3pQ1nDL86rGvBxk10VWgtI=; b=m6wAnnlhSkkVAc
	W7TT7MDlVNDBtB/dqLDKCRBvufidf7aFbCQlFuMBf90EeELSX+4KEwexOv0s9fmYu4z/0XEWt98/8
	JRhok7uL++d5Dk5rIHQk1k7luOLFsDo0Z5yry1rgEFqu4VYDUF/pTeNQ7R3jjw6+1UCPWE3Mjrctp
	wiqPG41SmIng7K7vwv3o1TOKtQWB7XD72p4z1iU8P3bRDKyFWWu+P4BtnsIqQyaC4wgb42bvaY1az
	MvphIbkppCr3wkKRGeDWWH0GhpsN4HNLgnsOXzPOouy8Qal96Juq8rGHNWZjyjIGyBLECujztgJqo
	8ZOowjQgLKigK+5poYsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiAOm-0007V0-C4; Fri, 20 Dec 2019 05:00:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiAOc-0007Td-9e; Fri, 20 Dec 2019 05:00:16 +0000
X-UUID: f9a3e96b7dd64ea89f6fb30d3ee1fc73-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WQ5D1NliONHbgSeHA/ensVa+Zzp3vnZWnc4pqGSWPUw=; 
 b=ViDFfWpmL4nqRbLBbLd6J7kfteDPgeCKf97Xw90hMPCCOXSoZKZvh2F+2ihBT1RReFNLMc8bU/iWFT7SfRIIOjxCgHfjMnSmMIKnvrp9qnfBb23r4GShtHKOE9PqT7FAuVcacsclh3wTtETKKiVaFruJL7F+pPWFPB8Fy8A7c58=;
X-UUID: f9a3e96b7dd64ea89f6fb30d3ee1fc73-20191219
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 890832662; Thu, 19 Dec 2019 21:00:08 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 21:00:22 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 12:59:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 12:59:24 +0800
Message-ID: <1576818001.8410.16.camel@mtksdaap41>
Subject: Re: [PATCH v11 05/10] soc: mediatek: Remove infracfg misc driver
 support
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 13:00:01 +0800
In-Reply-To: <CANMq1KBLuugcoWb1o=rUkBR7oY5Cf5rX=DCvpVP5D_6FJ8jipw@mail.gmail.com>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-6-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KBLuugcoWb1o=rUkBR7oY5Cf5rX=DCvpVP5D_6FJ8jipw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_210014_348753_489485F1 
X-CRM114-Status: GOOD (  16.08  )
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

On Fri, 2019-12-20 at 12:11 +0800, Nicolas Boichat wrote:
> On Fri, Dec 20, 2019 at 11:46 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
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
> > [snip]
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
> Err wait, don't you need these values in patch 04/10?
> 

Actually I already duplicated those being used into scpsys-ext.h and
then replace the header file in patch 04/10

--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -11,7 +11,7 @@ 
-#include <linux/soc/mediatek/infracfg.h>
+#include "scpsys-ext.h"

so I remove the infracfg.h directly in this patch and add those new for
MT8183 in scpsys-ext.h

> > -
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
