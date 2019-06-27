Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54C4586AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPtDLvZhTE474JC+7nygwj0lHfs6WLQZE2QokmNk3cM=; b=C6m37+7eNQmoRr
	8V2A6y3k4aQzriehKROXK044u2edU9c3ameSRZCofI4t01QDoGJZzg66mb4Wh98semzaYrmAVUZjy
	Qjx+nGrHhfxtyIxNd1lEhoeWogbnPBnPNjNVmiOdU96EI9FbBOvEV4emQVbBxbvufyUjm481aLdsS
	SKnY4lUuP7pgVkMrRq2zYYRmmJP+Y5d4FF6AkarvVCGPoRAQkQqVwBWoGNet5pnAUAQRd86PdBgpN
	sBv4BUZBDAptiE40KJHsyBQbYzMoMaEgYIqhrha7DSrSKwx6aTgESdJvDCdObGANk2JxNkGJ1EWhD
	nQsOFtqmU8EQxg+g4i8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWvk-0005Dg-8a; Thu, 27 Jun 2019 16:07:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWvW-0005DF-E5
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:07:12 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 119A721670
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 16:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561651630;
 bh=qnjDcvg2vr1/aDZRgXt8AUsw/e1VEUmL66zR+wNUqLQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uStUCHmDp1p57SsCyxgo6iBQf6wFT3Wg8FvrqKIm4sUNjPPsiTnd7s2M1ezSNi2qX
 B3uScACkb0zwXtXPDWT9DDEphSX1XeoF187U8BaaTH4o6l/QNBRGq5LmC+oSiUxtzY
 tNfWR3V7PKLR3/v5yYRcxkeOlUudJj+of7MJ5VJo=
Received: by mail-qt1-f171.google.com with SMTP id d17so3007118qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 09:07:10 -0700 (PDT)
X-Gm-Message-State: APjAAAV3vUPnU1FvEFMQUj42yUL83LvnwqBl0fbdotO7BH0VcapfhtZB
 A4ahrTFGFTm+2WplB/HaSW5XeEzS0XHTP3qbdw==
X-Google-Smtp-Source: APXvYqzeFDJzuV1gZ6S+zyrzfaa49Md1sFroJG0gDvbc/4XW9ZWqmmLiaHGfS1c2APb0JFORnUFqOnpCDDI8rp/vwfM=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr4191770qve.72.1561651629161; 
 Thu, 27 Jun 2019 09:07:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <e99ff7377a0d3d140cf62200fd9d62c108dac24e.1561649505.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
 <20190627155708.myxychzngc3trxhc@flea>
In-Reply-To: <20190627155708.myxychzngc3trxhc@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Jun 2019 10:06:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLhUP62vP=RY8Bn_0X92hFphbk_gLqi4K48us56Gxw7tA@mail.gmail.com>
Message-ID: <CAL_JsqLhUP62vP=RY8Bn_0X92hFphbk_gLqi4K48us56Gxw7tA@mail.gmail.com>
Subject: Re: [PATCH v4 03/13] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_090710_510144_778932E1 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 9:57 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Thu, Jun 27, 2019 at 09:48:06AM -0600, Rob Herring wrote:
> > On Thu, Jun 27, 2019 at 9:32 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The MDIO buses have a number of available device tree properties that can
> > > be used in their device tree node. Add a YAML schemas for those.
> > >
> > > Suggested-by: Andrew Lunn <andrew@lunn.ch>
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > ---
> > >  Documentation/devicetree/bindings/net/mdio.txt  | 38 +-------------
> > >  Documentation/devicetree/bindings/net/mdio.yaml | 51 ++++++++++++++++++-
> > >  2 files changed, 52 insertions(+), 37 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/net/mdio.yaml
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > However, some comments for a follow-up...
> >
> > > diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
> > > new file mode 100644
> > > index 000000000000..b8fa8251c4bc
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/net/mdio.yaml
> > > @@ -0,0 +1,51 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/net/mdio.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: MDIO Bus Generic Binding
> > > +
> > > +maintainers:
> > > +  - Andrew Lunn <andrew@lunn.ch>
> > > +  - Florian Fainelli <f.fainelli@gmail.com>
> > > +  - Heiner Kallweit <hkallweit1@gmail.com>
> > > +
> > > +description:
> > > +  These are generic properties that can apply to any MDIO bus. Any
> > > +  MDIO bus must have a list of child nodes, one per device on the
> > > +  bus. These should follow the generic ethernet-phy.yaml document, or
> > > +  a device specific binding document.
> > > +
> > > +properties:
> > > +  reset-gpios:
> > > +    maxItems: 1
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls the RESET
> > > +      lines of all PHYs on that MDIO bus.
> > > +
> > > +  reset-delay-us:
> > > +    description:
> > > +      RESET pulse width in microseconds. It applies to all PHY devices
> > > +      and must therefore be appropriately determined based on all PHY
> > > +      requirements (maximum value of all per-PHY RESET pulse widths).
> > > +
> > > +examples:
> > > +  - |
> > > +    davinci_mdio: mdio@5c030000 {
> >
> > Can we enforce nodename to be mdio? That may not work for muxes.
> > You'll probably have to implement it and see.
>
> Ok, I'll send a follow-up patch for this.
>
> > > +        compatible = "ti,davinci_mdio";
> > > +        reg = <0x5c030000 0x1000>;
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> >
> > These 2 should have a schema.
>
> Indeed, I'll do it for that too.
>
> > > +
> > > +        reset-gpios = <&gpio2 5 1>;
> > > +        reset-delay-us = <2>;
> > > +
> > > +        ethphy0: ethernet-phy@1 {
> > > +            reg = <1>;
> >
> > Need a child node schema to validate the unit-address and reg property.
>
> This should be already covered by the ethernet-phy.yaml schemas
> earlier in this series.

Partially, yes.

> Were you expecting something else?

That would not prevent having a child node such as 'foo {};'  or
'foo@bad {};'. It would also not check valid nodes named something
other than 'ethernet-phy'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
