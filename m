Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB11F10772B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pxdOaTTKy2qWj5TNDGU+QeMUbztGvI4mSY/BRM7XqIw=; b=NzGVg74OlMVAVSsvKUEkUf8us
	0B2rCfooZf+Ae/l74bM9goRVK2NkMYFdzNct6JoPv+znt7as9a19VHHsih8Y14LCQLr5ZdH5MTyL/
	ymNnPlx/POankEiUdqwn+bzLgjsph4lVzdXtiXnRkhsK04b/LswyVWgqKA6GSHkrbZyU/yvfI7TP5
	v1+IGt3FBomUYouKZ1A5qOLIGC3M0TRHUQrQC6emLvRKzeAnZMumPCZFqe1ghgdZvfiK9mj+Lp6Nh
	HKuUUIHe27F/2aAl4d5bntoeg0fiZRq4acPbVUEz230/zUtLWdoWv0X16G6MGIMp6TQIlRSdhIYOx
	Kij96Iz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDVt-0005fh-V0; Fri, 22 Nov 2019 18:18:37 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDVj-0005f0-9X
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:18:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 202063998;
 Fri, 22 Nov 2019 13:18:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 22 Nov 2019 13:18:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=9N1i6sM3HCy/tNUXBVN7iRT2F5Y
 r7eksrFzwBiYgpho=; b=nh2sZuFYIt8yPQNDtUg558rh4e2QQvCiHerjNYwzgv4
 LqLpSGFkFJPX5uQKmD6n2pjOVqW/a9WVdtdv6kGEarEceQFrClDpdkuts24xd2Lp
 mdMjaR8heQiRnkjZCAfV3T8HkkV9fkQDUW6J6LxWRI0zGMczNR2/IrEWut/9HSBd
 Nzr5VQUcLWJEtjeWGShw/tASVnXZjrBb9AzRmLdxwFrKNTe7UmQPurP+x+Z4agDP
 bTdiX9sNRiaU3DI+Y4wn1RwsOJOQ0qrZFOQac0B1cAO4OTyqYT/2VuWpBenzeH8J
 QK8k8SLgKkSuRuA1LVysrruQbBx1Sv0x2t/R6j8zBbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=9N1i6s
 M3HCy/tNUXBVN7iRT2F5Yr7eksrFzwBiYgpho=; b=tUlRfaSe7dnWGjC/4oqkwU
 DnVPoFdhTAooLtwcBlcr9LoDIrmqoc+PXvsEXLvUh3fLsbmVYjgGb4GTd4N78MES
 KHH+QuqWR+8MFDc5lCY5XcMc1JCpn8pWJDAvo4IeL3/VEjUOdOQHKrdDTLBZNzGb
 MD4swZ7Q26NKS0ccl/mk62jqCdpm3zFqQhkEFEIyETMKpTkcOTcxmGJdoN1gKHgP
 jdJkcRQQydp4CvXHIUb5dW2SiG5gaVSAO5/w9c21O4x2IPFvzdxZLtWeCj9Ax0Ga
 rln+OiPE3vNu6fpl5r6R55X/pCRJP5e51QZs5ZEaknCoh8fI5RqtXuizScfQT6CA
 ==
X-ME-Sender: <xms:bybYXctraIKC9Ia6PR9cXef2XF9PpJyM8T0BFKZAxq7idoCmZWXoHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehgedgudduudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujggfsehgtderredtredvnecuhfhrohhmpeforgig
 ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppe
 eltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvges
 tggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:bybYXT0v4144JRl8VXwXEAsfBCtRKNtlMwtcy3u9Ny2uO9d4LKcRBg>
 <xmx:bybYXTVsQZGE9Xzi43eQzNvHL1jtTuI4Ax86IGepDtNxqfFmA_Ah1Q>
 <xmx:bybYXZNrjqQYRuZ8AT6NUg6Fd1wrK0F0ac8HxpjrbW-lK7T2tP1Avw>
 <xmx:cCbYXcyRcR-gSTwuJWfp7f70EdyehoT-1yL1cc8P4nYlCYZCWI_jnA>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 924C580061;
 Fri, 22 Nov 2019 13:18:22 -0500 (EST)
Date: Fri, 22 Nov 2019 19:18:20 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
Message-ID: <20191122181820.GQ4345@gilmour.lan>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
 <20191029085401.gvqpwmmpyml75vis@hendrix>
 <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
 <20191103173227.GF7001@gilmour>
 <CAMty3ZD5uxU=xb0z7PWaXzodYbWRJkP9HjGX-HZYFT4bwk0GOg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZD5uxU=xb0z7PWaXzodYbWRJkP9HjGX-HZYFT4bwk0GOg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_101827_733497_4072A6F1 
X-CRM114-Status: GOOD (  29.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4650962929415238857=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4650962929415238857==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qerVZHYPvsyvugus"
Content-Disposition: inline


--qerVZHYPvsyvugus
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 21, 2019 at 05:24:47PM +0530, Jagan Teki wrote:
> On Sun, Nov 3, 2019 at 11:02 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Fri, Nov 01, 2019 at 07:42:55PM +0530, Jagan Teki wrote:
> > > Hi Maxime,
> > >
> > > On Tue, Oct 29, 2019 at 2:24 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > >
> > > > On Tue, Oct 29, 2019 at 04:03:56AM +0530, Jagan Teki wrote:
> > > > > > > explicit handling of common clock would require since the A64
> > > > > > > doesn't need to mention the clock-names explicitly in dts since it
> > > > > > > support only one bus clock.
> > > > > > >
> > > > > > > Also pass clk_id NULL instead "bus" to regmap clock init function
> > > > > > > since the single clock variants no need to mention clock-names
> > > > > > > explicitly.
> > > > > >
> > > > > > You don't need explicit clock handling. Passing NULL as the argument
> > > > > > in regmap_init_mmio_clk will make it use the first clock, which is the
> > > > > > bus clock.
> > > > >
> > > > > Indeed I tried that, since NULL clk_id wouldn't enable the bus clock
> > > > > during regmap_mmio_gen_context code, passing NULL triggering vblank
> > > > > timeout.
> > > >
> > > > There's a bunch of users of NULL in tree, so finding out why NULL
> > > > doesn't work is the way forward.
> > >
> > > I'd have looked the some of the users before checking the code as
> > > well. As I said passing NULL clk_id to devm_regmap_init_mmio_clk =>
> > > __devm_regmap_init_mmio_clk would return before processing the clock.
> > >
> > > Here is the code snippet on the tree just to make sure I'm on the same
> > > page or not.
> > >
> > > static struct regmap_mmio_context *regmap_mmio_gen_context(struct device *dev,
> > >                                         const char *clk_id,
> > >                                         void __iomem *regs,
> > >                                         const struct regmap_config *config)
> > > {
> > >         -----------------------
> > >         --------------
> > >         if (clk_id == NULL)
> > >                 return ctx;
> > >
> > >         ctx->clk = clk_get(dev, clk_id);
> > >         if (IS_ERR(ctx->clk)) {
> > >                 ret = PTR_ERR(ctx->clk);
> > >                 goto err_free;
> > >         }
> > >
> > >         ret = clk_prepare(ctx->clk);
> > >         if (ret < 0) {
> > >                 clk_put(ctx->clk);
> > >                 goto err_free;
> > >         }
> > >         -------------
> > >         ---------------
> > > }
> > >
> > > Yes, I did check on the driver in the tree before committing explicit
> > > clock handle, which make similar requirements like us in [1]. this
> > > imx2 wdt driver is handling the explicit clock as well. I'm sure this
> > > driver is updated as I have seen few changes related to this driver in
> > > ML.
> >
> > I guess we have two ways to go at this then.
> >
> > Either we remove the return, but it might have a few side-effects, or
> > we call clk_get with NULL or bus depending on the case, and then call
> > regmap_mmio_attach_clk.
>
> Thanks for the inputs.
>
> Please have a look at this snippet, I have used your second
> suggestions. let me know if you have any comments?
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index 8fa90cfc2ac8..91c95e56d870 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -1109,24 +1109,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>          return PTR_ERR(dsi->regulator);
>      }
>
> -    dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> -                          &sun6i_dsi_regmap_config);
> -    if (IS_ERR(dsi->regs)) {
> -        dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> -        return PTR_ERR(dsi->regs);
> -    }
> -
>      dsi->reset = devm_reset_control_get_shared(dev, NULL);
>      if (IS_ERR(dsi->reset)) {
>          dev_err(dev, "Couldn't get our reset line\n");
>          return PTR_ERR(dsi->reset);
>      }
>
> +    dsi->regs = regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);

You should use the devm variant here

> +    if (IS_ERR(dsi->regs)) {
> +        dev_err(dev, "Couldn't init regmap\n");
> +        return PTR_ERR(dsi->regs);
> +    }
> +
> +    dsi->bus_clk = devm_clk_get(dev, NULL);

I guess you still need to pass 'bus' here?

> +    if (IS_ERR(dsi->bus_clk)) {
> +        dev_err(dev, "Couldn't get the DSI bus clock\n");
> +        ret = PTR_ERR(dsi->bus_clk);
> +        goto err_regmap;
> +    } else {
> +        printk("Jagan.. Got the BUS clock\n");
> +        ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> +        if (ret)
> +            goto err_bus_clk;
> +    }
> +
>      if (dsi->variant->has_mod_clk) {
>          dsi->mod_clk = devm_clk_get(dev, "mod");
>          if (IS_ERR(dsi->mod_clk)) {
>              dev_err(dev, "Couldn't get the DSI mod clock\n");
> -            return PTR_ERR(dsi->mod_clk);
> +            ret = PTR_ERR(dsi->mod_clk);
> +            goto err_attach_clk;
>          }
>      }
>
> @@ -1167,6 +1179,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>  err_unprotect_clk:
>      if (dsi->variant->has_mod_clk)
>          clk_rate_exclusive_put(dsi->mod_clk);
> +err_attach_clk:
> +    if (!IS_ERR(dsi->bus_clk))
> +        regmap_mmio_detach_clk(dsi->regs);
> +err_bus_clk:
> +    if (!IS_ERR(dsi->bus_clk))
> +        clk_put(dsi->bus_clk);
> +err_regmap:
> +    regmap_exit(dsi->regs);
>      return ret;
>  }
>
> @@ -1181,6 +1201,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
>      if (dsi->variant->has_mod_clk)
>          clk_rate_exclusive_put(dsi->mod_clk);
>
> +    if (!IS_ERR(dsi->bus_clk)) {
> +        regmap_mmio_detach_clk(dsi->regs);
> +        clk_put(dsi->bus_clk);

This will trigger a warning, you put down the reference twice

Maxime

--qerVZHYPvsyvugus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdgmbAAKCRDj7w1vZxhR
xXAPAQCiQx8necDbZpLfsv/R7X/EGLZepkaO/cE23lMNJwmGIAD9FSP48+7pcnm3
HhzifgMtZzRSaH/EgCQpjsJg+5eqUwc=
=GeTa
-----END PGP SIGNATURE-----

--qerVZHYPvsyvugus--


--===============4650962929415238857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4650962929415238857==--

