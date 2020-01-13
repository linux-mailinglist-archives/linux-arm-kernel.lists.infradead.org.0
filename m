Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8611C138DA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adPZxNoUKx+pgA5dsq1NMeUk+aHCZKOO3YkEhUxwk5U=; b=p2OAHZkFqCWqIY
	nudEXRh/y8hKB8i3qiOqvhN20fYh33++d2goXaw30zvyNpIAR8G93bn/an8EryE2ckl9c9AqwaRlZ
	DeE1Hy+YO0D+6+x7evJval0DGe3cGOGcKm6MrTkQIQzh0lS0D5K9VfHhTrO7Uf6VybtE2VD/el2s1
	Hszp3gahTMtown78DijTL4yMi+dRKlbwf2GSEAxE+Mpl/0/doqr19kXHtjCi5Gdv6lTozC4vuF1Y7
	t6RVmBQftfzK/N9eLC9M9dIq3SokvlVaXS7jQtI9p6/K6tyz0gLay0xCT8YDVqf2+gb4vxqcJ/hMm
	iuQTG+7j8O9aZ3EWEJbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvwO-0005hh-UO; Mon, 13 Jan 2020 09:23:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvwD-0005gw-PU; Mon, 13 Jan 2020 09:23:11 +0000
X-UUID: 7491c760f3df40eb8c8dd25af7d99857-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=03EqN3IpDnYeVpvM1ObMsu1BpXwziE5X5TdFsnPY33Q=; 
 b=ezmMER8TvMpJHbek6FFuMM7i8A56A4U3tGXsBA/IV8Qjj+SvxHtmgQXNDolhqm9tkt2tOLzSdLGDoITgvHjubptDC9jzT3kkbHhZtWa/nuGrBAzPB14xN2k5DDX/kS6Nv8cApHTZvqwQCEDjlkcqWjL4Y/yGeJzKOr4TOlMZFH8=;
X-UUID: 7491c760f3df40eb8c8dd25af7d99857-20200113
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 778286375; Mon, 13 Jan 2020 01:23:01 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 01:13:42 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 13 Jan 2020 17:11:42 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 13 Jan 2020 17:12:16 +0800
Message-ID: <1578906770.20923.22.camel@mhfsdcap03>
Subject: Re: [PATCH v11 1/3] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Yong Liang <yong.liang@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 17:12:50 +0800
In-Reply-To: <CANMq1KBNuJDEn57d0ysc2XG0ezWEvJ2Pm88YihDiSZJ=-E=W9g@mail.gmail.com>
References: <1578639862-14480-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578639862-14480-2-git-send-email-jiaxin.yu@mediatek.com>
 <CANMq1KBNuJDEn57d0ysc2XG0ezWEvJ2Pm88YihDiSZJ=-E=W9g@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: DF2A40E9DBFE98B116BEB7409F16A843F2BF153D6F6462540D4A00352B2557502000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012309_837486_B8B7A10D 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Freddy Hsin =?UTF-8?Q?=28=E8=BE=9B=E6=81=92=E8=B1=90=29?=
 <Freddy.Hsin@mediatek.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chang-An Chen =?UTF-8?Q?=28=E9=99=B3=E6=98=B6=E5=AE=89=29?=
 <Chang-An.Chen@mediatek.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-01-13 at 14:10 +0800, Nicolas Boichat wrote:
> Jiaxin,
> 
> On Fri, Jan 10, 2020 at 3:04 PM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
> >
> > Add #reset-cells property and update example
> >
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Guenter Roeck <groeck7@gmail.com>
> 
> From previous feedback
> (https://patchwork.kernel.org/patch/11318687/#23086211), it seems like
> we lost track of which exact version had the Reviewed-By, so I'd just
> drop all those tags and let people review again.
> 
  Need I do someting?
> > ---
> 
> It would have been nice to mention that this patch depends on
> https://patchwork.kernel.org/patch/11311241/ (as your example makes
> use of it below).

  Can I drop the mtk-wdt.txt of
https://patchwork.kernel.org/patch/11311241/?
  And I want add 8183 in mtk-wdt.txt in this patch.
> >  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
> >  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
> >  .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
> >  3 files changed, 46 insertions(+), 3 deletions(-)
> >  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> >
> > diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> > index 92181b648f52..5a76ac262f8d 100644
> > --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> > +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> > @@ -4,6 +4,7 @@ Required properties:
> >
> >  - compatible should contain:
> >         "mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
> > +       "mediatek,mt2712-wdt", "mediatek,mt6589-wdt": for MT2712
> 
> Please separate this as another patch.
  So I can send mtk-wdt.c(MT2712) and mt2712-resets.h in one patch and
send mtk-wdt.c(MT8183) and mt8183-resets.h in another patch?
> 
> >         "mediatek,mt6589-wdt": for MT6589
> >         "mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
> >         "mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
> > @@ -14,11 +15,14 @@ Required properties:
> >
> >  Optional properties:
> >  - timeout-sec: contains the watchdog timeout in seconds.
> > +- #reset-cells: Should be 1.
> >
> >  Example:
> >
> > -wdt: watchdog@10000000 {
> > -       compatible = "mediatek,mt6589-wdt";
> > -       reg = <0x10000000 0x18>;
> > +watchdog: watchdog@10007000 {
> > +       compatible = "mediatek,mt8183-wdt",
> > +                    "mediatek,mt6589-wdt";
> > +       reg = <0 0x10007000 0 0x100>;
> >         timeout-sec = <10>;
> > +       #reset-cells = <1>;
> >  };
> > diff --git a/include/dt-bindings/reset-controller/mt2712-resets.h b/include/dt-bindings/reset-controller/mt2712-resets.h
> > new file mode 100644
> > index 000000000000..9e7ee762f076
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
> > +#define MT2712_TOPRGU_INFRA_SW_RST                             0
> > +#define MT2712_TOPRGU_MM_SW_RST                                        1
> > +#define MT2712_TOPRGU_MFG_SW_RST                               2
> > +#define MT2712_TOPRGU_VENC_SW_RST                              3
> > +#define MT2712_TOPRGU_VDEC_SW_RST                              4
> > +#define MT2712_TOPRGU_IMG_SW_RST                               5
> > +#define MT2712_TOPRGU_INFRA_AO_SW_RST                          8
> > +#define MT2712_TOPRGU_USB_SW_RST                               9
> > +#define MT2712_TOPRGU_APMIXED_SW_RST                           10
> > +
> > +#define MT2712_TOPRGU_SW_RST_NUM                               11
> > +
> > +#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT2712 */
> > diff --git a/include/dt-bindings/reset-controller/mt8183-resets.h b/include/dt-bindings/reset-controller/mt8183-resets.h
> > index 8804e34ebdd4..a1bbd41e0d12 100644
> > --- a/include/dt-bindings/reset-controller/mt8183-resets.h
> > +++ b/include/dt-bindings/reset-controller/mt8183-resets.h
> > @@ -78,4 +78,21 @@
> >  #define MT8183_INFRACFG_AO_I2C7_SW_RST                         126
> >  #define MT8183_INFRACFG_AO_I2C8_SW_RST                         127
> >
> > +#define MT8183_INFRACFG_SW_RST_NUM                             128
> > +
> > +#define MT8183_TOPRGU_MM_SW_RST                                        1
> > +#define MT8183_TOPRGU_MFG_SW_RST                               2
> > +#define MT8183_TOPRGU_VENC_SW_RST                              3
> > +#define MT8183_TOPRGU_VDEC_SW_RST                              4
> > +#define MT8183_TOPRGU_IMG_SW_RST                               5
> > +#define MT8183_TOPRGU_MD_SW_RST                                        7
> > +#define MT8183_TOPRGU_CONN_SW_RST                              9
> > +#define MT8183_TOPRGU_CONN_MCU_SW_RST                          12
> > +#define MT8183_TOPRGU_IPU0_SW_RST                              14
> > +#define MT8183_TOPRGU_IPU1_SW_RST                              15
> > +#define MT8183_TOPRGU_AUDIO_SW_RST                             17
> > +#define MT8183_TOPRGU_CAMSYS_SW_RST                            18
> > +
> > +#define MT8183_TOPRGU_SW_RST_NUM                               19
> > +
> >  #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8183 */
> > --
> > 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
