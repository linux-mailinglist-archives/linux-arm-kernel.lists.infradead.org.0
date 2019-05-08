Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ADC1796B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 14:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6+tXBXkf4vzzE4yfEf+MPSbT0WCko3uEulIKeG4kZU=; b=KZwLfXxcNc8rd6
	jqw+PXpRL0H76ZIGhzFz3RJPBid3cslPvhOOrscFwtVCKgqP1XQio+M0CdNvC6g2FLdVAdfu8hD/c
	z9L51cm++2y9ZnEmHGTYMEbDbKXf0IkkRaVoG3ij5CA0EWDmSqTgKQIesxxbVlN9gypE5tpmxV11D
	ajZxuCTtkwatW/QSOub7hZwUJamy4UPt62I88HWMH7LEn6BpD3dwK6LYJqQPrgpc1h2ujQxCya5hN
	iux948L9cjl4QL77VN+CQQzbGGhlpDe0CkI4XEM4nQte1qeA1dU41DtjXNI4xL5V7rgJOgoWUlOSK
	pZRTbqnQoAq7tFmqzUvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOLfQ-00044g-BK; Wed, 08 May 2019 12:27:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOLfI-00043p-BD; Wed, 08 May 2019 12:27:18 +0000
X-UUID: dfbd512ed5644cf5a47e1e7911d2c872-20190508
X-UUID: dfbd512ed5644cf5a47e1e7911d2c872-20190508
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 439693919; Wed, 08 May 2019 04:27:10 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 05:27:08 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 20:27:07 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 20:27:07 +0800
Message-ID: <1557318427.29634.8.camel@mtksdccf07>
Subject: Re: [PATCH 2/8] arm64: dts: mt8183: add/update dynamic power
 coefficients
From: Michael Kao <michael.kao@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 8 May 2019 20:27:07 +0800
In-Reply-To: <CAJMQK-jujDXt18M8610G4GpHdrikTD0ZZG_=C2YTt63UfxuHuQ@mail.gmail.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-3-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-jujDXt18M8610G4GpHdrikTD0ZZG_=C2YTt63UfxuHuQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_052716_391822_4663AD43 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 linux-pm@vger.kernel.org, louis.yu@mediatek.com, roger.lu@mediatek.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, dawei.chien@mediatek.com,
 linux-kernel@vger.kernel.org, Eduardo Valentin <edubezval@gmail.com>,
 fan.chen@mediatek.com, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 15:16 +0800, Hsin-Yi Wang wrote:
> On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
> >
> > Add dynamic power coefficients for all cores and update those of
> > CPU0 and CPU4.
> >
> > Signed-off-by: Michael.Kao <michael.kao@mediatek.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index b92116f..5668fb8 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -58,6 +58,8 @@
> >                         compatible = "arm,cortex-a53";
> >                         reg = <0x000>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <84>;
> > +                       #cooling-cells = <2>;
> Should this line be in [3/8] arm64: dts: mt8183: Add #cooling-cells to
> CPU nodes?
> 
I will fix the mistake at v2 patch list.
> >                 };
> >
> >                 cpu1: cpu@1 {
> > @@ -65,6 +67,8 @@
> >                         compatible = "arm,cortex-a53";
> >                         reg = <0x001>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <84>;
> > +                       #cooling-cells = <2>;
> >                 };
> >
> >                 cpu2: cpu@2 {
> > @@ -72,6 +76,8 @@
> >                         compatible = "arm,cortex-a53";
> >                         reg = <0x002>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <84>;
> > +                       #cooling-cells = <2>;
> >                 };
> >
> >                 cpu3: cpu@3 {
> > @@ -79,6 +85,8 @@
> >                         compatible = "arm,cortex-a53";
> >                         reg = <0x003>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <84>;
> > +                       #cooling-cells = <2>;
> >                 };
> >
> >                 cpu4: cpu@100 {
> > @@ -86,6 +94,8 @@
> >                         compatible = "arm,cortex-a73";
> >                         reg = <0x100>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <211>;
> > +                       #cooling-cells = <2>;
> >                 };
> >
> >                 cpu5: cpu@101 {
> > @@ -93,6 +103,8 @@
> >                         compatible = "arm,cortex-a73";
> >                         reg = <0x101>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <211>;
> > +                       #cooling-cells = <2>;
> >                 };
> >
> >                 cpu6: cpu@102 {
> > @@ -100,6 +112,8 @@
> >                         compatible = "arm,cortex-a73";
> >                         reg = <0x102>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <211>;
> > +                       #cooling-cells = <2>;
> >                 };
> >
> >                 cpu7: cpu@103 {
> > @@ -107,6 +121,8 @@
> >                         compatible = "arm,cortex-a73";
> >                         reg = <0x103>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <211>;
> > +                       #cooling-cells = <2>;
> >                 };
> >         };
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
