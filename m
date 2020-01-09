Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912FB1351BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHLiuUc7Fzmvv5i0TjPqoCvvyJki879pjYNONam6xtE=; b=gl1mJDFzRGDIna
	sYRm8ydyxpbGwHGmLCi1qOGArOzyPqVnJZBhum14s2sp6y2V2EQMMJVf2/vqMzYHqk3YQCcRVC+kD
	9Zo1V+vmOCsVvFBkqBfMU7PhU1el2qFcVh31fRLXvTb/E1YCo4G9U5Jb/6eY/DsnuyHsRazTzH4FL
	9Eoz7cajINaZ1AoUwFQPM0jwnTuY8DbQx13jz6PvuBKCRyDoPo12d+GW2D0KHZNahCmX7sXtdnTDm
	psT5UmDrO8h/ABOYlwQjHR0Vuv4M6XASBKcBCD3Qwo4EloZ3bvMfNBxRsFwBCkwguRovm2q+1ChBC
	cPVqB0OXWeov8vO6kQdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipODJ-0007sW-66; Thu, 09 Jan 2020 03:10:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOD8-0007rO-GY; Thu, 09 Jan 2020 03:10:17 +0000
X-UUID: 4076c10952db473b8459e5efa70c8246-20200108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=CvLcLmQtEQDCFrVxh2k8LuEaR4ksyAkc5R169z2PTA0=; 
 b=BOV8vx+ReKxBKjksHc50rHJ2C95agoVwYmtbD9qjoMKD1CokJ5KlNSl75Ce39DJGo4HHnk3CwigmY5LyvtpHaBbEKm8ViHR+laYJGY/QB9f4RcBF6FtB2Iqnebtpc0BPZyKOW7qu2Tpy7iRlBTltzpmcg+GuE1VZOW9VMiBBqk4=;
X-UUID: 4076c10952db473b8459e5efa70c8246-20200108
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 219648473; Wed, 08 Jan 2020 19:10:10 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 19:10:45 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 9 Jan 2020 11:08:18 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 9 Jan 2020 11:10:21 +0800
Message-ID: <1578539400.20923.10.camel@mhfsdcap03>
Subject: Re: [PATCH v10 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Yong Liang <yong.liang@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 9 Jan 2020 11:10:00 +0800
In-Reply-To: <CANMq1KCrDX+svufQEeqHYgAFmFaBS0paEz0EBBte73ehA5PiGw@mail.gmail.com>
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
 <CANMq1KCrDX+svufQEeqHYgAFmFaBS0paEz0EBBte73ehA5PiGw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D25EFC5CE1DF3AC4CFAAAEB2CCCF1058B998E9A6793A7E0B87C17B3A807A55C52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_191014_561908_2543C45D 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 2020-01-08 at 17:23 +0800, Nicolas Boichat wrote:
> On Mon, Jan 6, 2020 at 11:11 AM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
> >
> > Add #reset-cells property and update example
> >
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
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
> Doesn't look related?
  We prefer to send mt2712 and mt8183 together.
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
> 
> Well mt8183-wdt compatible is not yet upstream, do you want to work
> with Yong Liang to send both these bindings in the same series? (you
> can add mt2712 in the same patch as mt8183 binding maybe?)

  We prefer to send mt2712 and mt8183 together. And we want to send this
patch priority.

  Yong.Liang
> 
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
