Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DC10D18B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 07:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:To:From:Subject:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w+7xAFVmhz2hLwuCO+/YKzVM9YKh3QvCP6tdKCXHHnc=; b=Wp6MFp2hVR5EkxTUtDV0usXskW
	xKTUIT2vHeBCddE+vIe7IzQ/eTXuquvT/aB0IQf1pDNu+IPyh2xEtfsPvoSw89ijuew5yxKMxIYT7
	EZCHejvz7/GYAZRHfNrX5S/rWULA5nYwD/i1RH/+N7TUR8UyvgPcjS7akOA0vJWXRfkn1gp4/IXMP
	/2F2R84YqLGfK7etJ4u6G3i6WtfxA1BkHyAA0/O938wGT4cg2GziJTCyI8Qub8uqar731cX+oSKCd
	I/7hUcWudEo8EamuCEOrx8U1bYo1ZFOsLicU7Qqnh7lmaoZkRFiv8Euca4U4kBbhkEJuX3EMn4S64
	s+Msg6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaa0h-0000Yu-Q2; Fri, 29 Nov 2019 06:44:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaa0a-0000YV-8D; Fri, 29 Nov 2019 06:44:05 +0000
X-UUID: 8206b91f85214a9d987943e9880c011e-20191128
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Date:Content-Type:References:In-Reply-To:CC:To:From:Subject:Message-ID;
 bh=oi4tPDzs8ZbqKpkDr986mLKVJSE8Ydo7EgiDBxABqc8=; 
 b=qfnE/gvHM0lLKuMXq76D7iOBs8W4yf36PnHxz7I7N5qOGu5Etqyn0daooLulozQyzdibxq8+4HT5vgvV1Td/5wEeglrI61C8luxJt2IJtGfarwCCbiIQJojIiJbgJDWo/KqclZzo3VFpgOxbpkP/9QyFihEuYN4yiKDgPZs/BkQ=;
X-UUID: 8206b91f85214a9d987943e9880c011e-20191128
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 807644758; Thu, 28 Nov 2019 22:44:01 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 28 Nov 2019 22:44:10 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 29 Nov 2019 14:43:53 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 29 Nov 2019 14:43:49 +0800
Message-ID: <1575009205.6367.4.camel@mhfsdcap03>
Subject: Re: [PATCH v5 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Yong Liang <yong.liang@mediatek.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <49c94039ba327a1295fdfd5d74dca0b9805269b0.camel@pengutronix.de>
References: <1574651030-29519-1-git-send-email-jiaxin.yu@mediatek.com>
 <1574651030-29519-2-git-send-email-jiaxin.yu@mediatek.com>
 <49c94039ba327a1295fdfd5d74dca0b9805269b0.camel@pengutronix.de>
Date: Fri, 29 Nov 2019 14:33:25 +0800
MIME-Version: 1.0
X-Mailer: Evolution 3.10.4-0ubuntu2 
X-TM-SNTS-SMTP: FF3A6F2BD736D72B4F26A39DECBD324E971B973519332DC24613CED2AD969F4E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_224404_291677_2263E1E9 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "perex@perex.cz" <perex@perex.cz>,
 "tzungbi@google.com" <tzungbi@google.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>,
 Eason Yen =?UTF-8?Q?=28=E9=A1=8F=E5=BB=B7=E4=BB=BB=29?=
 <Eason.Yen@mediatek.com>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-25 at 18:07 +0800, Philipp Zabel wrote:
> On Mon, 2019-11-25 at 11:03 +0800, Jiaxin Yu wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> > 
> > Add #reset-cells property and update example
> > 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: jiaxin.yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > ---
> >  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
> >  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
> >  .../reset-controller/mt8183-resets.h          | 15 +++++++++++++
> >  3 files changed, 44 insertions(+), 3 deletions(-)
> >  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> > 
> > diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> > index 3ee625d0812f..4dd36bd3f1ad 100644
> > --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> > +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> > @@ -4,6 +4,7 @@ Required properties:
> >  
> >  - compatible should contain:
> >  	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
> > +	"mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712
> >  	"mediatek,mt6589-wdt": for MT6589
> >  	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
> >  	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
> > @@ -16,11 +17,14 @@ Required properties:
> >  
> >  Optional properties:
> >  - timeout-sec: contains the watchdog timeout in seconds.
> > +- #reset-cells: Should be 1.
> >  
> >  Example:
> >  
> > -wdt: watchdog@10000000 {
> > -	compatible = "mediatek,mt6589-wdt";
> > -	reg = <0x10000000 0x18>;
> > +watchdog: watchdog@10007000 {
> > +	compatible = "mediatek,mt8183-wdt",
> > +		     "mediatek,mt6589-wdt";
> > +	reg = <0 0x10007000 0 0x100>;
> >  	timeout-sec = <10>;
> > +	#reset-cells = <1>;
> >  };
> > diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
> > new file mode 100644
> > index 000000000000..e81c8bb311b7
> > --- /dev/null
> > +++ b/include/dt-bindings/reset-controller/mt2712-resets.h
> > @@ -0,0 +1,22 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2019 MediaTek Inc.
> > + * Author: Yong Liang <yong.liang@mediatek.com>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT2712
> > +#define _DT_BINDINGS_RESET_CONTROLLER_MT2712
> > +
> > +#define MT2712_TOPRGU_INFRA_SW_RST				0
> > +#define MT2712_TOPRGU_MM_SW_RST					1
> > +#define MT2712_TOPRGU_MFG_SW_RST				2
> > +#define MT2712_TOPRGU_VENC_SW_RST				3
> > +#define MT2712_TOPRGU_VDEC_SW_RST				4
> > +#define MT2712_TOPRGU_IMG_SW_RST				5
> > +#define MT2712_TOPRGU_INFRA_AO_SW_RST				8
> > +#define MT2712_TOPRGU_USB_SW_RST				9
> > +#define MT2712_TOPRGU_APMIXED_SW_RST				10
> > +
> > +#define MT2712_TOPRGU_SW_RST_NUM				10
> 
> Setting rcdev->nr_resets to 10 will make the check in
> of_reset_simple_xlate() fail for MT2712_TOPRGU_APMIXED_SW_RST.
  -> OK. I will change MT2712_TOPRGU_SW_RST_NUM from 10 to 11
> 
> > +
> > +#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
> > diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
> > index 8804e34ebdd4..d582da6bedae 100644
> > --- a/include/dt-bindings/reset-controller/mt8183-resets.h
> > +++ b/include/dt-bindings/reset-controller/mt8183-resets.h
> > @@ -78,4 +78,19 @@
> >  #define MT8183_INFRACFG_AO_I2C7_SW_RST				126
> >  #define MT8183_INFRACFG_AO_I2C8_SW_RST				127
> >  
> > +#define MT8183_TOPRGU_MM_SW_RST					1
> > +#define MT8183_TOPRGU_MFG_SW_RST				2
> > +#define MT8183_TOPRGU_VENC_SW_RST				3
> > +#define MT8183_TOPRGU_VDEC_SW_RST				4
> > +#define MT8183_TOPRGU_IMG_SW_RST				5
> > +#define MT8183_TOPRGU_MD_SW_RST					7
> > +#define MT8183_TOPRGU_CONN_SW_RST				9
> > +#define MT8183_TOPRGU_CONN_MCU_SW_RST				12
> > +#define MT8183_TOPRGU_IPU0_SW_RST				14
> > +#define MT8183_TOPRGU_IPU1_SW_RST				15
> > +#define MT8183_TOPRGU_AUDIO_SW_RST				17
> > +#define MT8183_TOPRGU_CAMSYS_SW_RST				18
> > +
> > +#define MT8183_TOPRGU_SW_RST_NUM				18
> 
> Same here. If the driver uses the default of_xlate function, this has to
> be larger than the index of the last reset.
  -> I will change MT8183_TOPRGU_SW_RST_NUM from 18 to 19
> 
> regards
> Philipp
> 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
