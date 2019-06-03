Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA232698
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 04:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMZ/4LNfsNSILRnaS6aypsNh6P4FRsT4VI78oOYKb9A=; b=KdeswG65A5yLmC
	A8YTmC6x916KPCKmK+wF7stXWs1RlLNgm058dI7kuMq+ckyGFImKn6wXjgVwQ2aU92TbXJl2TrNI6
	DlQsI7pyLQ+pGFq8NFa+LA5Y/eGuUvYj6+5Eona8zgqrwEV8+5aruFEQpzKPlk9+aG4Sb4aXL2wnL
	fPnXdRC35fPSjiJEUUY2UMZvRKxxro8n3j/r5OaH6K+ohsObS3/XC+9Dw9/M0LrIoSkZ4zQeoZSGn
	uSWpw8C2zWbT2MFio8YO9Qhlakj0kgAgQc/J/nCXzKFVkAPS4rxho0Oz3YAZZ7dpFEmDrXKxocRPl
	2kLyhI5k7kAt9ZAC80gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXch0-00088L-Ti; Mon, 03 Jun 2019 02:27:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcgt-00087q-Cr; Mon, 03 Jun 2019 02:27:16 +0000
X-UUID: f47d695679ca4c45b29dbe8e26737be2-20190602
X-UUID: f47d695679ca4c45b29dbe8e26737be2-20190602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 943676317; Sun, 02 Jun 2019 18:27:10 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 19:27:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 10:27:07 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 10:27:07 +0800
Message-ID: <1559528827.6663.8.camel@mtkswgap22>
Subject: Re: [PATCH v2 2/3] dt-bindings: rng: update bindings for MediaTek
 ARMv8 SoCs
From: Neal Liu <neal.liu@mediatek.com>
To: Sean Wang <sean.wang@kernel.org>
Date: Mon, 3 Jun 2019 10:27:07 +0800
In-Reply-To: <CAGp9LzrQegBb9Oe-=jfkwOrsYY=eN3BSF=DWnu+aSBAhQ5bexA@mail.gmail.com>
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
 <1558946326-13630-3-git-send-email-neal.liu@mediatek.com>
 <CAGp9LzrQegBb9Oe-=jfkwOrsYY=eN3BSF=DWnu+aSBAhQ5bexA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_192715_443873_071B8828 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,


On Thu, 2019-05-30 at 15:56 -0700, Sean Wang wrote:
> Hi, Neal
> 
> On Mon, May 27, 2019 at 1:39 AM Neal Liu <neal.liu@mediatek.com> wrote:
> >
> > Document the binding used by the MediaTek ARMv8 SoCs random
> > number generator with TrustZone enabled.
> >
> > Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/rng/mtk-rng.txt |   13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> > index 2bc89f1..1fb9b1d 100644
> > --- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
> > +++ b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> > @@ -3,9 +3,12 @@ found in MediaTek SoC family
> >
> >  Required properties:
> >  - compatible       : Should be
> > -                       "mediatek,mt7622-rng",  "mediatek,mt7623-rng" : for MT7622
> > -                       "mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
> > -                       "mediatek,mt7623-rng" : for MT7623
> > +                       "mediatek,mt7622-rng", "mediatek,mt7623-rng" for MT7622
> > +                       "mediatek,mt7629-rng", "mediatek,mt7623-rng" for MT7629
> > +                       "mediatek,mt7623-rng" for MT7623
> 
> No make any change for those lines not belong to the series

There are some unused spaces and symbols. We try to align coding style
with other bindings.

> 
> > +                       "mediatek,mtk-sec-rng" for MediaTek ARMv8 SoCs
> 
> I thought "mediatek,mtk-sec-rng" is only for those MediaTek ARMv8 SoCs
> with security RNG

Yes, sure. It's better to describe with "MediaTek ARMv8 SoCs with
security RNG". 

> 
> > +
> > +Optional properties:
> >  - clocks           : list of clock specifiers, corresponding to
> >                       entries in clock-names property;
> >  - clock-names      : Should contain "rng" entries;
> > @@ -19,3 +22,7 @@ rng: rng@1020f000 {
> >         clocks = <&infracfg CLK_INFRA_TRNG>;
> >         clock-names = "rng";
> >  };
> 
> For those MediaTek ARMv8 SoCs with security RNG

Are you suggesting we create a new binding file with security RNG?

> 
> > +
> > +hwrng: hwrng {
> > +       compatible = "mediatek,mtk-sec-rng";
> > +};
> > --
> > 1.7.9.5
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
