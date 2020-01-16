Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEED13DD95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:38:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQgHakbfI+Y7NTcDZ06J0bdXQFdW6lAoQl7k2MMV/ok=; b=ZcPHuTe3wYVOds
	mSSGFP7/usspNhSlllkFKWpgBbq5AMD5RZJ3BnU3E9+50Q+6evisIw5pDIbycOz/YWFl4u4Ja2RSW
	3djpVtnANidCr4zkDNz7xNLbL0oIAEdx+eQTb3733pdnkenWZkHmY8jcW8/rqMr4/BkK0uoahs8Zx
	8/c0RrLQaCSPc6LYoX93QOHzj8DW6gFr8WJshDCd3ArM/vthKYM4Ae/wtnvlT767moPrl9qYrpyxm
	afIziZLVsBnl+XdE1b9bV9UyFrK0rIxAtIjsQ+P0cGK4IqHdO1CNq5/EdaHcS013AyGnX5M7HCyE4
	1NhKdQlXvZEF4RrSMsww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6Hz-0007MA-4N; Thu, 16 Jan 2020 14:38:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6Hn-0007D9-H3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:38:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA8051396;
 Thu, 16 Jan 2020 06:38:13 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A113C3F718;
 Thu, 16 Jan 2020 06:38:12 -0800 (PST)
Date: Thu, 16 Jan 2020 14:38:09 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: spi: sunxi: Document new compatible
 strings
Message-ID: <20200116143809.123ceee4@donnerap.cambridge.arm.com>
In-Reply-To: <20200116142301.w2t4o6pg3dapp3g6@gilmour.lan>
References: <20200116005654.27672-1-andre.przywara@arm.com>
 <20200116005654.27672-4-andre.przywara@arm.com>
 <20200116142301.w2t4o6pg3dapp3g6@gilmour.lan>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_063815_606264_ED7AD0DD 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Icenowy Zheng <icenowy@aosc.xyz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 15:23:01 +0100
Maxime Ripard <mripard@kernel.org> wrote:

Hi,

> On Thu, Jan 16, 2020 at 12:56:54AM +0000, Andre Przywara wrote:
> > The Allwinner H6 SPI controller has advanced features over the H3
> > version, but remains compatible with it.
> > Document the usual "specific", "fallback" compatible string pair.
> > Also add the R40 version while at it.
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml     | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> > index f36c46d236d7..c19dfbe42d90 100644
> > --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> > +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> > @@ -18,9 +18,15 @@ properties:
> >    "#size-cells": true
> >
> >    compatible:
> > -    enum:
> > -      - allwinner,sun6i-a31-spi
> > -      - allwinner,sun8i-h3-spi
> > +    oneOf:
> > +      - const: allwinner,sun6i-a31-spi
> > +      - const: allwinner,sun8i-h3-spi
> > +      - items:
> > +          - const: allwinner,sun8i-r40-spi
> > +          - const: allwinner,sun8i-h3-spi
> > +      - items:
> > +          - const: allwinner,sun50i-h6-spi
> > +          - const: allwinner,sun8i-h3-spi  
> 
> Having
> 
> oneOf:
>   - const: allwinner,sun6i-a31-spi
>   - const: allwinner,sun8i-h3-spi
>   - items:
>     - enum:
>       - allwinner,sun8i-r40-spi
>       - allwinner,sun50i-h6-spi
>     - const: allwinner,sun8i-h3-spi
> 
> Will be easier to maintain in the long run

Ah, nice, I tried something like this, based on the example-schema.yaml file, but the example in there is more verbose, and looked much less readable.
But your version seems to hit the sweet spot, so I will go with this.

Thanks,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
