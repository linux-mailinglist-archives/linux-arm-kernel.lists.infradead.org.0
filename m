Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6677F975
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54PODEfeKeBjsVyuWJ96DXBX/9xHf0isOLghqMWD664=; b=czFKUBMwzO27GZ
	p8eNonW71Z3lKS7FTjjuTr/x4t7xiH9GkVq/H8wHvSh/S0m/2vq0568UYJloKEMwT8CFih2tLd1Z4
	yr8UuoBbr3P+cG+0PHrrnW5SZZgo82AMZ/FdR4Cy7fJoa4oYdZxtCUuiGWQw3HchkQbgG3DILbIRs
	+jAKOG6pL+DnkIa83U9HyVwO9lywDddW+KjyEbThZsoSskkw0b/irMpJsPdzKtm3nhXXels5CCI/c
	vDiQ5AhBoY8HhPmUyCDt9m/ILBZxRj7MVUHfcVKrKdHd5IE9pzPPZ5W4jmTxrNflw2UFJNInl599O
	UXmUjnALj23Z6XTEBuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXc2-0007M1-D6; Fri, 02 Aug 2019 13:28:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXbw-0007LD-As; Fri, 02 Aug 2019 13:28:45 +0000
X-UUID: 42b0b0ddfba747ab885c26b06a33dda0-20190802
X-UUID: 42b0b0ddfba747ab885c26b06a33dda0-20190802
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 861737549; Fri, 02 Aug 2019 05:28:34 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 2 Aug 2019 06:28:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 2 Aug 2019 21:28:31 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 2 Aug 2019 21:28:31 +0800
Message-ID: <1564752511.1587.5.camel@mtksdaap41>
Subject: Re: [PATCH v3 04/10] dt-bindings: mfd: Add compatible for the
 MediaTek MT6358 PMIC
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 2 Aug 2019 21:28:31 +0800
In-Reply-To: <CANMq1KCiK69kXkpagccqd1=pKOs7qOOVuJUaCe5JfoGVmPt7mg@mail.gmail.com>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
 <CANMq1KCiK69kXkpagccqd1=pKOs7qOOVuJUaCe5JfoGVmPt7mg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_062844_376079_4826EC57 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, lkml <linux-kernel@vger.kernel.org>, Mark
 Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Tue, 2019-05-07 at 14:24 +0900, Nicolas Boichat wrote:
> On Fri, May 3, 2019 at 6:34 PM Hsin-Hsiung Wang
> <hsin-hsiung.wang@mediatek.com> wrote:
> >
...
> > This adds compatible for the MediaTek MT6358 PMIC.
> >
> > Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/mfd/mt6397.txt | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> > index 0ebd08af777d..62f1c17c7738 100644
> > --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> > +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> > @@ -17,22 +17,27 @@ Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
> >  This document describes the binding for MFD device and its sub module.
> >
> >  Required properties:
> > -compatible: "mediatek,mt6397" or "mediatek,mt6323"
> > +compatible:
> > +       "mediatek,mt6323" for PMIC MT6323
> > +       "mediatek,mt6358" for PMIC MT6358
> > +       "mediatek,mt6397" for PMIC MT6397
> >
> >  Optional subnodes:
> >
> >  - rtc
> >         Required properties:
> > -               - compatible: "mediatek,mt6397-rtc"
> > +               - compatible: "mediatek,mt6397-rtc" or "mediatek,mt6358-rtc"
> >  - regulators
> >         Required properties:
> >                 - compatible: "mediatek,mt6397-regulator"
> >         see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
> > +               - compatible: "mediatek,mt6358-regulator"
> > +       see Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
> >                 - compatible: "mediatek,mt6323-regulator"
> >         see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
> >  - codec
> >         Required properties:
> > -               - compatible: "mediatek,mt6397-codec"
> > +               - compatible: "mediatek,mt6397-codec" or "mediatek,mt6358-sound"
> 
> Sean had a question about this
> (https://patchwork.kernel.org/patch/10846669/#22524299):
> "why didn't we use a more consistent naming as mt6358-codec?"
> 
The compatible name, "mediatek,mt6358-sound", is already in mt6358 audio
driver which is already in the upstream codebase.
After discussing with audio owner, we will submit another patch to fix
it.

Thanks.
> >  - clk
> >         Required properties:
> >                 - compatible: "mediatek,mt6397-clk"
> > --
> > 2.18.0
> >
> >
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
