Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011ECCF073
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 03:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/ntrIVe8x8+G5b8jZoZ8j1QTJoANGEippCL60eEtb0=; b=glkIOTzDXpMgqu
	v60PFjdhJZvyznIdikPGVpa+y2zzTQdrp9UVeZ0Ps/U0ruBy2fsbn3/CDYiYxw0XPjf0I9lnFuqcU
	R4k/OHiyS0JBuio93O/He3qa6+qc3nnnmxRwMiuPKYBnMOzbR1KhKRCJ7vx1NTsvqtgofuoc3LkMx
	Ak/nAsm1ta38vG89InXYckxKIeJvaAEWNp6djdG9Dg4P3cSZk7aiYUDp6W9QacRJOdchpWVe7kNij
	ucTZ6jIJEsW1sDeWOkxB6VALjZRQu8+Ap8eM9G0yuxc+NZYclddQVVT9+eLGYgM+APu1GnjukZNtN
	8tGHkrOnJzeH8MHF8uWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHeG5-0007Y2-St; Tue, 08 Oct 2019 01:25:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHeFw-0007WT-JN; Tue, 08 Oct 2019 01:25:42 +0000
X-UUID: 3d96e4a5491946178d59d2f50fa5734c-20191007
X-UUID: 3d96e4a5491946178d59d2f50fa5734c-20191007
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 375265247; Mon, 07 Oct 2019 17:25:33 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 7 Oct 2019 18:25:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 8 Oct 2019 09:25:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 8 Oct 2019 09:25:30 +0800
Message-ID: <1570497930.1483.0.camel@mtksdaap41>
Subject: Re: [PATCH v7 02/13] dt-bindings: soc: Add MT8183 power dt-bindings
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 8 Oct 2019 09:25:30 +0800
In-Reply-To: <48655b84-fd20-f417-529c-b81a7d64d63d@gmail.com>
References: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
 <1566983506-26598-3-git-send-email-weiyi.lu@mediatek.com>
 <48655b84-fd20-f417-529c-b81a7d64d63d@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 578EE69AAD1693E32ACFE0DC740AB3F9176CFE3AF9905C35F6FC95A5F7A7086C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_182540_645039_18C40872 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-28 at 11:39 +0200, Matthias Brugger wrote:
> 
> On 28/08/2019 11:11, Weiyi Lu wrote:
> > Add power dt-bindings of MT8183 and introduces "BASIC" and
> > "SUBSYS" clock types in binding document.
> > The "BASIC" type is compatible to the original power control with
> > clock name [a-z]+[0-9]*, e.g. mm, vpu1.
> > The "SUBSYS" type is used for bus protection control with clock
> > name [a-z]+-[0-9]+, e.g. isp-0, cam-1.
> > 
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  .../devicetree/bindings/soc/mediatek/scpsys.txt    | 14 ++++++++++++
> >  include/dt-bindings/power/mt8183-power.h           | 26 ++++++++++++++++++++++
> >  2 files changed, 40 insertions(+)
> >  create mode 100644 include/dt-bindings/power/mt8183-power.h
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> > index 876693a..00eab7e 100644
> > --- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> > +++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> > @@ -14,6 +14,7 @@ power/power_domain.txt. It provides the power domains defined in
> >  - include/dt-bindings/power/mt2701-power.h
> >  - include/dt-bindings/power/mt2712-power.h
> >  - include/dt-bindings/power/mt7622-power.h
> > +- include/dt-bindings/power/mt8183-power.h
> >  
> >  Required properties:
> >  - compatible: Should be one of:
> > @@ -25,18 +26,31 @@ Required properties:
> >  	- "mediatek,mt7623a-scpsys": For MT7623A SoC
> >  	- "mediatek,mt7629-scpsys", "mediatek,mt7622-scpsys": For MT7629 SoC
> >  	- "mediatek,mt8173-scpsys"
> > +	- "mediatek,mt8183-scpsys"
> >  - #power-domain-cells: Must be 1
> >  - reg: Address range of the SCPSYS unit
> >  - infracfg: must contain a phandle to the infracfg controller
> >  - clock, clock-names: clocks according to the common clock binding.
> >                        These are clocks which hardware needs to be
> >                        enabled before enabling certain power domains.
> > +                      The new clock type "BASIC" belongs to the type above.
> > +                      As to the new clock type "SUBSYS" needs to be
> > +                      enabled before releasing bus protection.
> 
> The new clock type won't be new in a couple of month, better reword this. E.g.:
> Some SoCs have to groups of clocks. BASIC clocks need to be enabled before
> enabling the corresponding power domain. SUBSYS clocks need to be enabled before
> releasing the bus protection.
> 

Got it, I'll reword in next version. Many thanks.

> >  	Required clocks for MT2701 or MT7623: "mm", "mfg", "ethif"
> >  	Required clocks for MT2712: "mm", "mfg", "venc", "jpgdec", "audio", "vdec"
> >  	Required clocks for MT6797: "mm", "mfg", "vdec"
> >  	Required clocks for MT7622 or MT7629: "hif_sel"
> >  	Required clocks for MT7623A: "ethif"
> >  	Required clocks for MT8173: "mm", "mfg", "venc", "venc_lt"
> > +	Required clocks for MT8183: BASIC: "audio", "mfg", "mm", "cam", "isp",
> > +					   "vpu", "vpu1", "vpu2", "vpu3"
> > +				    SUBSYS: "mm-0", "mm-1", "mm-2", "mm-3",
> > +					    "mm-4", "mm-5", "mm-6", "mm-7",
> > +					    "mm-8", "mm-9", "isp-0", "isp-1",
> > +					    "cam-0", "cam-1", "cam-2", "cam-3",
> > +					    "cam-4", "cam-5", "cam-6", "vpu-0",
> > +					    "vpu-1", "vpu-2", "vpu-3", "vpu-4",
> > +					    "vpu-5"
> >  
> >  Optional properties:
> >  - vdec-supply: Power supply for the vdec power domain
> > diff --git a/include/dt-bindings/power/mt8183-power.h b/include/dt-bindings/power/mt8183-power.h
> > new file mode 100644
> > index 0000000..5c0c8c7
> > --- /dev/null
> > +++ b/include/dt-bindings/power/mt8183-power.h
> > @@ -0,0 +1,26 @@
> > +/* SPDX-License-Identifier: GPL-2.0
> > + *
> > + * Copyright (c) 2018 MediaTek Inc.
> > + * Author: Weiyi Lu <weiyi.lu@mediatek.com>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_POWER_MT8183_POWER_H
> > +#define _DT_BINDINGS_POWER_MT8183_POWER_H
> > +
> > +#define MT8183_POWER_DOMAIN_AUDIO	0
> > +#define MT8183_POWER_DOMAIN_CONN	1
> > +#define MT8183_POWER_DOMAIN_MFG_ASYNC	2
> > +#define MT8183_POWER_DOMAIN_MFG		3
> > +#define MT8183_POWER_DOMAIN_MFG_CORE0	4
> > +#define MT8183_POWER_DOMAIN_MFG_CORE1	5
> > +#define MT8183_POWER_DOMAIN_MFG_2D	6
> > +#define MT8183_POWER_DOMAIN_DISP	7
> > +#define MT8183_POWER_DOMAIN_CAM		8
> > +#define MT8183_POWER_DOMAIN_ISP		9
> > +#define MT8183_POWER_DOMAIN_VDEC	10
> > +#define MT8183_POWER_DOMAIN_VENC	11
> > +#define MT8183_POWER_DOMAIN_VPU_TOP	12
> > +#define MT8183_POWER_DOMAIN_VPU_CORE0	13
> > +#define MT8183_POWER_DOMAIN_VPU_CORE1	14
> > +
> > +#endif /* _DT_BINDINGS_POWER_MT8183_POWER_H */
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
