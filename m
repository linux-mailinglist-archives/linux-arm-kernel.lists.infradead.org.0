Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7C31CD187
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 08:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7s7/ON9T0NsB4NYmCiU0it6U4mZq/GJGRYbPz4UftuI=; b=bKPnj/zpuBxpSz
	QdmmiRBCeJ6bS8AAMugl9ntYIoH6d3ksFatA11Zv1QeRZu2eSXzt0ES9WBNY2cv63lGVeoJpeA1AZ
	Kg3agNipvte+xOrFn8eGOTa8DKTcZmWRbWqQj6rBfzHI7EyZriMDv8cSnk+pM7wcBIRs6ubW8G6uY
	upyW9SQVGbgNl18dyH+yaRyWgUBVfBtrl138sSO3t2I8P313SJSYldkKxrqf/BhQbUOgWklrnmJO9
	W3Wl1TePdhZ0l/SpN2LaVOVXfI7NAGcFWV962S4WAYoUT8Hz/sUl5NrJ8DUzGj13yvd2x2y1oIbgu
	+qkAb748zeAfvrd27Ohg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1Va-0007Mc-Gs; Mon, 11 May 2020 06:01:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1VR-0007Le-9r; Mon, 11 May 2020 06:01:39 +0000
X-UUID: b7460f87c3374a269347f8e773d2d048-20200510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=dAyYAdHMIpZ/6SM5RLDr2tB/daH+XXcNJM3j7jHXEJo=; 
 b=CxhbECJsxZgqTWZoSR3SMjcF9M1aJwByXjcBBRoch8knE0S929+L/ygFSQSM/KDp38GyY7m7YFZXigikHQrZelr9jkdUHiljm4PFBLXw2+EvDg+bgjaGzoFG9+hLI9Pa9LXg61Via+OA7gbXdwxWS55hqcQf2ZCZIHn89cfGgtA=;
X-UUID: b7460f87c3374a269347f8e773d2d048-20200510
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1900158767; Sun, 10 May 2020 22:01:20 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 10 May 2020 23:01:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 14:01:20 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 11 May 2020 14:01:19 +0800
Message-ID: <1589176880.21832.8.camel@mtksdaap41>
Subject: Re: [PATCH v14 02/11] dt-bindings: soc: Add MT8183 power dt-bindings
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Mon, 11 May 2020 14:01:20 +0800
In-Reply-To: <30046b88-0fb7-5506-7460-bf0fba320c3d@collabora.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
 <1588752963-19934-3-git-send-email-weiyi.lu@mediatek.com>
 <30046b88-0fb7-5506-7460-bf0fba320c3d@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_230137_349836_E7CBBE19 
X-CRM114-Status: GOOD (  21.99  )
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
 devicetree <devicetree@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2020-05-06 at 23:00 +0200, Enric Balletbo i Serra wrote:
> Hi Weiyi,
> 
> Thank you for your patch. You should cc devicetree@vger.kernel.org, otherwise
> this patch might be ignored.
> 

Got it.

> On 6/5/20 10:15, Weiyi Lu wrote:
> > Add power dt-bindings of MT8183 and introduces "BASIC" and
> > "SUBSYS" clock types in binding document.
> > The "BASIC" type is compatible to the original power control with
> > clock name [a-z]+[0-9]*, e.g. mm, vpu1.
> > The "SUBSYS" type is used for bus protection control with clock
> > name [a-z]+-[0-9]+, e.g. isp-0, cam-1.
> > And add an optional smi-comm property for phandle to smi-common
> > controller.
> > 
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  .../devicetree/bindings/soc/mediatek/scpsys.txt    | 21 ++++++++++++++---
> >  include/dt-bindings/power/mt8183-power.h           | 26 ++++++++++++++++++++++
> >  2 files changed, 44 insertions(+), 3 deletions(-)
> >  create mode 100644 include/dt-bindings/power/mt8183-power.h
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> > index 2bc3677..5424e66 100644
> > --- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> > +++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> > @@ -15,6 +15,7 @@ power/power-domain.yaml. It provides the power domains defined in
> >  - include/dt-bindings/power/mt2701-power.h
> >  - include/dt-bindings/power/mt2712-power.h
> >  - include/dt-bindings/power/mt7622-power.h
> > +- include/dt-bindings/power/mt8183-power.h
> >  
> >  Required properties:
> >  - compatible: Should be one of:
> > @@ -27,12 +28,16 @@ Required properties:
> >  	- "mediatek,mt7623a-scpsys": For MT7623A SoC
> >  	- "mediatek,mt7629-scpsys", "mediatek,mt7622-scpsys": For MT7629 SoC
> >  	- "mediatek,mt8173-scpsys"
> > +	- "mediatek,mt8183-scpsys"
> >  - #power-domain-cells: Must be 1
> >  - reg: Address range of the SCPSYS unit
> >  - infracfg: must contain a phandle to the infracfg controller
> > -- clock, clock-names: clocks according to the common clock binding.
> > -                      These are clocks which hardware needs to be
> > -                      enabled before enabling certain power domains.
> > +- clock, clock-names: Clocks according to the common clock binding.
> > +                      Some SoCs have to groups of clocks.
> > +                      BASIC clocks need to be enabled before enabling the
> > +                      corresponding power domain.
> > +                      SUBSYS clocks need to be enabled before releasing the
> > +                      bus protection.
> >  	Required clocks for MT2701 or MT7623: "mm", "mfg", "ethif"
> >  	Required clocks for MT2712: "mm", "mfg", "venc", "jpgdec", "audio", "vdec"
> >  	Required clocks for MT6765: MUX: "mm", "mfg"
> > @@ -43,6 +48,15 @@ Required properties:
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
> > @@ -55,6 +69,7 @@ Optional properties:
> >  - mfg_async-supply: Power supply for the mfg_async power domain
> >  - mfg_2d-supply: Power supply for the mfg_2d power domain
> >  - mfg-supply: Power supply for the mfg power domain
> > +- smi_comm: a phandle to the smi-common controller
> 
> 
> I think that in device-tree hyphen are preferred and kind of a must for new
> properties, also I think you should prefix this property with "mediatek,". Can I
> suggest you to use "mediatek,smi" like is done in the mediatek,smi-larb binding?
> AFAICS is the same phandle right?
> 
> Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt:
> - mediatek,smi : a phandle to the smi_common node.
> 

Thanks, I'll follow your suggestion in next version.

> 
> >  
> >  Example:
> >  
> > diff --git a/include/dt-bindings/power/mt8183-power.h b/include/dt-bindings/power/mt8183-power.h
> > new file mode 100644
> > index 0000000..d6b25f8
> > --- /dev/null
> > +++ b/include/dt-bindings/power/mt8183-power.h
> > @@ -0,0 +1,26 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2018 MediaTek Inc.
> 
> You probably want to update the copyright to 2020.
> 

Thanks, I'll fix it.

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
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
