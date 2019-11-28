Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA110CE1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mr8iHtNJlhbivhBVluVZ64m1wdApQQxgMqY5hn0H+JY=; b=p12cZq7WZDW2W5rWFjE7p38VM
	ylb/ZNqE5cLVFte5VR5C7eKBYRVXjgHQI4hNnfhVnjb8lAaZlVWtgCVVDTq/Fg6k91nZ27v4HmHMb
	vdOVhjWIF0l4+qTw+DmEazjMykXYLZ/WvwrnQEj0E3qaEFoAOwVXZ+aSm9ezTxWhRkIl50xNgT02p
	dsp5rQv80PDnXoU//RZUjyoOTA6XnzFWKDsqy6sQ+sQ2XPy7pQCDbcxdKvjiBrlPLXzoPmpjsP82R
	DschX1fheWx0kZj9RnKebfqNxrwgu8UNTAvY5EG+ktHNIpk9FnIHbU0mPSI91mIT4DcPNcFjnqVjP
	cL6+wYmuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNxR-0007TP-DL; Thu, 28 Nov 2019 17:52:01 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNxB-0007Ro-Vr
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:51:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8DFB1342C;
 Thu, 28 Nov 2019 12:51:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 28 Nov 2019 12:51:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=ZW6UxhH0Hm8lRDs/4M+dETDPOEm
 QhBVGqXhRss+nCzY=; b=DFl5tTg+prW79LfU+kzaWtNO/eowldIHYBmvX2oICxC
 z4QBHxeowgDuQeqF/wcvVgXCD/JIA7vUBEnxyFJKacjnmq2D5DhVBaPUyJEFFNpr
 ui0s990Z5w369E8CqQ+ROh372czQk2SQbSIwDUsymMubr/RBjguRYmpQqB6UX/2P
 6bztS8S/q4uHFsQBkzNv6PQIemC7eQEEHVVW2adweCXZ8ms6fKQ0gGPz+WQpeHgc
 mTugC6RfzC4yEu5nmcPLeKpcyHCSIA3gIaLXACbUgvWmjBsUztGVm6BthVVr4c/X
 HpP8gyUiQ0b1BiXXkDwNBYfnlrWLB+73QCcjPQPcdVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ZW6Uxh
 H0Hm8lRDs/4M+dETDPOEmQhBVGqXhRss+nCzY=; b=v+MOEEjFVGd6R+cUGyIQEp
 8BBMItY604U7PPVeZD8V6/l/Zrk6WUqRBidI5gGkP50HSr9OnjMCT851g1HvqL5Y
 Q41d5T1R6mncxHXSErZpagb8ilXLBOWo7UG3q4R0MuBK82jFxXeMEw8AtlVBgyQQ
 uT1dXj5P/x3KBHZZoIISmoZsljpqIq9UF7MNiONNRzf8SEVM07+nDYMsIJ7kEibe
 flsO0R1+TMPHeh2VahjVuhvzMa9gJLdp0HIntlM0IiaqId/hra/wZfXV//jP3tgi
 fOhgy4BJpUtf/rzV9atguRr7uaTIlXjgQj5M9TidtAQEBG98CIqwxpjy9ipy0y3w
 ==
X-ME-Sender: <xms:KgngXUFvbDaLBE-pkVmL-IxdYmhi9W6pBOi4-tLooEaa_Un3SFr1AA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeijedguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegt
 vghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:KgngXfpoBSPQMERQxdBXb7UMv4jVWUx_iGIDaIq5z7fVAfcpwFCD7g>
 <xmx:KgngXc2r6XTst-90cPb2zh8ENJeZomZc3A3JB1-CFogecHw1dGTnFg>
 <xmx:KgngXTBqAVjTXmpxTGOGdsJwwEPeMFdXLCarHVw-0XSOhJ9eAf8_Lg>
 <xmx:KwngXfHecfjCy8435wuh4o8afqIqEiTRcu0y9GlfBm3Z9wGu7i1Y0A>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DEE4180061;
 Thu, 28 Nov 2019 12:51:37 -0500 (EST)
Date: Thu, 28 Nov 2019 18:51:34 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
Message-ID: <20191128175134.kcgtylfo4ax6ifz7@gilmour.lan>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
 <20191029085401.gvqpwmmpyml75vis@hendrix>
 <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
 <20191103173227.GF7001@gilmour>
 <CAMty3ZD5uxU=xb0z7PWaXzodYbWRJkP9HjGX-HZYFT4bwk0GOg@mail.gmail.com>
 <20191122181820.GQ4345@gilmour.lan>
 <CAMty3ZDePC=B-DgfCcjRhJTeciwZmSEU-c4u1=sN_Hs0RgbC7Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDePC=B-DgfCcjRhJTeciwZmSEU-c4u1=sN_Hs0RgbC7Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_095146_171452_1A8F95C5 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============5675605437648425233=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5675605437648425233==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tueqnmro5e6uu24k"
Content-Disposition: inline


--tueqnmro5e6uu24k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 23, 2019 at 01:20:21AM +0530, Jagan Teki wrote:
> > > Please have a look at this snippet, I have used your second
> > > suggestions. let me know if you have any comments?
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > index 8fa90cfc2ac8..91c95e56d870 100644
> > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > @@ -1109,24 +1109,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > >          return PTR_ERR(dsi->regulator);
> > >      }
> > >
> > > -    dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > > -                          &sun6i_dsi_regmap_config);
> > > -    if (IS_ERR(dsi->regs)) {
> > > -        dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> > > -        return PTR_ERR(dsi->regs);
> > > -    }
> > > -
> > >      dsi->reset = devm_reset_control_get_shared(dev, NULL);
> > >      if (IS_ERR(dsi->reset)) {
> > >          dev_err(dev, "Couldn't get our reset line\n");
> > >          return PTR_ERR(dsi->reset);
> > >      }
> > >
> > > +    dsi->regs = regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
> >
> > You should use the devm variant here
>
> Sure.
>
> >
> > > +    if (IS_ERR(dsi->regs)) {
> > > +        dev_err(dev, "Couldn't init regmap\n");
> > > +        return PTR_ERR(dsi->regs);
> > > +    }
> > > +
> > > +    dsi->bus_clk = devm_clk_get(dev, NULL);
> >
> > I guess you still need to pass 'bus' here?
>
> But the idea here is not to specify clock name explicitly to support
> A64. otherwise A64 would fail as we are not specifying the clock-names
> explicitly on dsi node.

Right. But you have no guarantee that the bus clock is going to be the
first one on the other SoCs either.

What about something like that instead:

char *clk_name = NULL;
if (dsi->has_mod_clk)
    clk_name = "bus";

clk = devm_clk_get(dev, clk_name);
if (IS_ERR(clk))
    return PTR_ERR(clk));

regmap_mmio_attach_clk(regmap, clk);

>
> dsi: dsi@1ca0000 {
>        compatible = "allwinner,sun50i-a64-mipi-dsi";
>        reg = <0x01ca0000 0x1000>;
>        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>        clocks = <&ccu CLK_BUS_MIPI_DSI>;
>        resets = <&ccu RST_BUS_MIPI_DSI>;
>       phys = <&dphy>;
>       phy-names = "dphy";
> .....
> };
>
> >
> > > +    if (IS_ERR(dsi->bus_clk)) {
> > > +        dev_err(dev, "Couldn't get the DSI bus clock\n");
> > > +        ret = PTR_ERR(dsi->bus_clk);
> > > +        goto err_regmap;
> > > +    } else {
> > > +        printk("Jagan.. Got the BUS clock\n");
> > > +        ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> > > +        if (ret)
> > > +            goto err_bus_clk;
> > > +    }
> > > +
> > >      if (dsi->variant->has_mod_clk) {
> > >          dsi->mod_clk = devm_clk_get(dev, "mod");
> > >          if (IS_ERR(dsi->mod_clk)) {
> > >              dev_err(dev, "Couldn't get the DSI mod clock\n");
> > > -            return PTR_ERR(dsi->mod_clk);
> > > +            ret = PTR_ERR(dsi->mod_clk);
> > > +            goto err_attach_clk;
> > >          }
> > >      }
> > >
> > > @@ -1167,6 +1179,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > >  err_unprotect_clk:
> > >      if (dsi->variant->has_mod_clk)
> > >          clk_rate_exclusive_put(dsi->mod_clk);
> > > +err_attach_clk:
> > > +    if (!IS_ERR(dsi->bus_clk))
> > > +        regmap_mmio_detach_clk(dsi->regs);
> > > +err_bus_clk:
> > > +    if (!IS_ERR(dsi->bus_clk))
> > > +        clk_put(dsi->bus_clk);
> > > +err_regmap:
> > > +    regmap_exit(dsi->regs);
> > >      return ret;
> > >  }
> > >
> > > @@ -1181,6 +1201,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> > >      if (dsi->variant->has_mod_clk)
> > >          clk_rate_exclusive_put(dsi->mod_clk);
> > >
> > > +    if (!IS_ERR(dsi->bus_clk)) {
> > > +        regmap_mmio_detach_clk(dsi->regs);
> > > +        clk_put(dsi->bus_clk);
> >
> > This will trigger a warning, you put down the reference twice
>
> You mean regmap_mmio_detach_clk will put the clk?

No, devm_clk_get will.

Maxime

--tueqnmro5e6uu24k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeAJJgAKCRDj7w1vZxhR
xeTeAQCacNpV8Wm/rBcNEWf932Rl1dECN/23C4NSORo+wFWl+QEA9eslBkFZsEsR
8bsW4OOl0eHdwYb6HSh9C+3pq52yBgU=
=UsjM
-----END PGP SIGNATURE-----

--tueqnmro5e6uu24k--


--===============5675605437648425233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5675605437648425233==--

