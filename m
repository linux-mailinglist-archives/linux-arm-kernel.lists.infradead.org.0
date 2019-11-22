Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037AA10784D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 20:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkcZhBu6kor3gC9kZhb3+f7YXtkrBBv5pC1v8ACHueI=; b=rmGf3uEmYNbFOz
	N8mdbdNm+ggEqi9346X83+JusYgkri7HNxg/wneoiAcG8uWSA2vuNv8Y9QAJF6T6VcNI+QlpZ3lDd
	xk7/QkzSf43ABHTmoGmb7ahroIUXernDwSTLAiXJk+MG03fgfKTiLYd3D19zR19aEdJviwSPXMFE4
	XNYgMQVxfKlNrmuE4k9yVtW959Uy1rX/oN7sH9COVyeHyCEoMZyAVhwkGERYvvIUBU9L4Q4X4x9Kr
	5Jikp2KLOZ+L/E4Mmyj24k8dISeYTcAjRZqOHyNJXbYMgF6NTZPsDTpg+j96bcoljm7LbxbU38Rf7
	D3hvin38tLj5IZPAjMmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYEx6-0008Gh-8k; Fri, 22 Nov 2019 19:50:48 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYEwt-0008G9-7y
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 19:50:37 +0000
Received: by mail-il1-x144.google.com with SMTP id u17so8059542ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 11:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GyRnrvFbKUOfWzI19gExh12vx/PZLGimga2bs60+0rg=;
 b=OA+RUDJec1zbsPLoLU0dCoxx6xbx0tsBB62Qm4SHZcHVeR/2ATi57wl31NeQzd4tg1
 /xCVNLQWLAp6RLqp30D/SZ9jZ5rl3zICIBDZ6y5p3oJ7Te5UxO4u3e5KMwC6A11Suy0z
 JgXa6o+CQDEiWqlK5jIUBc/SE/P3FIpMp59Dk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GyRnrvFbKUOfWzI19gExh12vx/PZLGimga2bs60+0rg=;
 b=t6NGiWsvoo3ip/8eAA/vmgAdbkfWl6FvYZA42F/nRW+iOotbdhep4FpJF8/Kvx+BcZ
 X61Fhv6eXYhutApEN61NLzw1x8yOiX8Y6c3yCfc9GvCDcCgxgXe02gpwdnV1xp38D9R6
 BVDeF+CLVky95V4TLkQlAsLYVhWsv64bI47HKJn2D56ecPDoe6srlHM3+69mPRGeOxiT
 2OAP0tNLQVa7nFRUG996u5vHwtYPMlaZDKT7+QsIJwhfgF0pfPCBp5+wNn1wgRa54xPA
 EcC/bB9xlh8m3aiLMDIEg0CI6AOjXw4pE3C/m1lECBfSWRCJkAl0Wy47pYwTP1xcJHoW
 3YQA==
X-Gm-Message-State: APjAAAUA/eGYZF2/pLre7l7RDbcfFAwZJctTHT/En8X4EvRooolSWnR8
 C4y2hNd7myxgCxoM2nZwlywR8goSNzQILgxin1kamQ==
X-Google-Smtp-Source: APXvYqy2MjzP9e0pqftYQIuPVxsJXa/qxJt+NKqaiGIYIamnMQIqEiJIqrVzZTadWbqFnULsiOnsnWWWxVkXQIGhDQg=
X-Received: by 2002:a92:3ac5:: with SMTP id i66mr19019865ilf.28.1574452233184; 
 Fri, 22 Nov 2019 11:50:33 -0800 (PST)
MIME-Version: 1.0
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
 <20191029085401.gvqpwmmpyml75vis@hendrix>
 <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
 <20191103173227.GF7001@gilmour>
 <CAMty3ZD5uxU=xb0z7PWaXzodYbWRJkP9HjGX-HZYFT4bwk0GOg@mail.gmail.com>
 <20191122181820.GQ4345@gilmour.lan>
In-Reply-To: <20191122181820.GQ4345@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 23 Nov 2019 01:20:21 +0530
Message-ID: <CAMty3ZDePC=B-DgfCcjRhJTeciwZmSEU-c4u1=sN_Hs0RgbC7Q@mail.gmail.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_115035_431538_5A3CAC46 
X-CRM114-Status: GOOD (  32.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Nov 22, 2019 at 11:48 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Thu, Nov 21, 2019 at 05:24:47PM +0530, Jagan Teki wrote:
> > On Sun, Nov 3, 2019 at 11:02 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Fri, Nov 01, 2019 at 07:42:55PM +0530, Jagan Teki wrote:
> > > > Hi Maxime,
> > > >
> > > > On Tue, Oct 29, 2019 at 2:24 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > On Tue, Oct 29, 2019 at 04:03:56AM +0530, Jagan Teki wrote:
> > > > > > > > explicit handling of common clock would require since the A64
> > > > > > > > doesn't need to mention the clock-names explicitly in dts since it
> > > > > > > > support only one bus clock.
> > > > > > > >
> > > > > > > > Also pass clk_id NULL instead "bus" to regmap clock init function
> > > > > > > > since the single clock variants no need to mention clock-names
> > > > > > > > explicitly.
> > > > > > >
> > > > > > > You don't need explicit clock handling. Passing NULL as the argument
> > > > > > > in regmap_init_mmio_clk will make it use the first clock, which is the
> > > > > > > bus clock.
> > > > > >
> > > > > > Indeed I tried that, since NULL clk_id wouldn't enable the bus clock
> > > > > > during regmap_mmio_gen_context code, passing NULL triggering vblank
> > > > > > timeout.
> > > > >
> > > > > There's a bunch of users of NULL in tree, so finding out why NULL
> > > > > doesn't work is the way forward.
> > > >
> > > > I'd have looked the some of the users before checking the code as
> > > > well. As I said passing NULL clk_id to devm_regmap_init_mmio_clk =>
> > > > __devm_regmap_init_mmio_clk would return before processing the clock.
> > > >
> > > > Here is the code snippet on the tree just to make sure I'm on the same
> > > > page or not.
> > > >
> > > > static struct regmap_mmio_context *regmap_mmio_gen_context(struct device *dev,
> > > >                                         const char *clk_id,
> > > >                                         void __iomem *regs,
> > > >                                         const struct regmap_config *config)
> > > > {
> > > >         -----------------------
> > > >         --------------
> > > >         if (clk_id == NULL)
> > > >                 return ctx;
> > > >
> > > >         ctx->clk = clk_get(dev, clk_id);
> > > >         if (IS_ERR(ctx->clk)) {
> > > >                 ret = PTR_ERR(ctx->clk);
> > > >                 goto err_free;
> > > >         }
> > > >
> > > >         ret = clk_prepare(ctx->clk);
> > > >         if (ret < 0) {
> > > >                 clk_put(ctx->clk);
> > > >                 goto err_free;
> > > >         }
> > > >         -------------
> > > >         ---------------
> > > > }
> > > >
> > > > Yes, I did check on the driver in the tree before committing explicit
> > > > clock handle, which make similar requirements like us in [1]. this
> > > > imx2 wdt driver is handling the explicit clock as well. I'm sure this
> > > > driver is updated as I have seen few changes related to this driver in
> > > > ML.
> > >
> > > I guess we have two ways to go at this then.
> > >
> > > Either we remove the return, but it might have a few side-effects, or
> > > we call clk_get with NULL or bus depending on the case, and then call
> > > regmap_mmio_attach_clk.
> >
> > Thanks for the inputs.
> >
> > Please have a look at this snippet, I have used your second
> > suggestions. let me know if you have any comments?
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index 8fa90cfc2ac8..91c95e56d870 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -1109,24 +1109,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >          return PTR_ERR(dsi->regulator);
> >      }
> >
> > -    dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > -                          &sun6i_dsi_regmap_config);
> > -    if (IS_ERR(dsi->regs)) {
> > -        dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> > -        return PTR_ERR(dsi->regs);
> > -    }
> > -
> >      dsi->reset = devm_reset_control_get_shared(dev, NULL);
> >      if (IS_ERR(dsi->reset)) {
> >          dev_err(dev, "Couldn't get our reset line\n");
> >          return PTR_ERR(dsi->reset);
> >      }
> >
> > +    dsi->regs = regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
>
> You should use the devm variant here

Sure.

>
> > +    if (IS_ERR(dsi->regs)) {
> > +        dev_err(dev, "Couldn't init regmap\n");
> > +        return PTR_ERR(dsi->regs);
> > +    }
> > +
> > +    dsi->bus_clk = devm_clk_get(dev, NULL);
>
> I guess you still need to pass 'bus' here?

But the idea here is not to specify clock name explicitly to support
A64. otherwise A64 would fail as we are not specifying the clock-names
explicitly on dsi node.

dsi: dsi@1ca0000 {
       compatible = "allwinner,sun50i-a64-mipi-dsi";
       reg = <0x01ca0000 0x1000>;
       interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
       clocks = <&ccu CLK_BUS_MIPI_DSI>;
       resets = <&ccu RST_BUS_MIPI_DSI>;
      phys = <&dphy>;
      phy-names = "dphy";
.....
};

>
> > +    if (IS_ERR(dsi->bus_clk)) {
> > +        dev_err(dev, "Couldn't get the DSI bus clock\n");
> > +        ret = PTR_ERR(dsi->bus_clk);
> > +        goto err_regmap;
> > +    } else {
> > +        printk("Jagan.. Got the BUS clock\n");
> > +        ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> > +        if (ret)
> > +            goto err_bus_clk;
> > +    }
> > +
> >      if (dsi->variant->has_mod_clk) {
> >          dsi->mod_clk = devm_clk_get(dev, "mod");
> >          if (IS_ERR(dsi->mod_clk)) {
> >              dev_err(dev, "Couldn't get the DSI mod clock\n");
> > -            return PTR_ERR(dsi->mod_clk);
> > +            ret = PTR_ERR(dsi->mod_clk);
> > +            goto err_attach_clk;
> >          }
> >      }
> >
> > @@ -1167,6 +1179,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >  err_unprotect_clk:
> >      if (dsi->variant->has_mod_clk)
> >          clk_rate_exclusive_put(dsi->mod_clk);
> > +err_attach_clk:
> > +    if (!IS_ERR(dsi->bus_clk))
> > +        regmap_mmio_detach_clk(dsi->regs);
> > +err_bus_clk:
> > +    if (!IS_ERR(dsi->bus_clk))
> > +        clk_put(dsi->bus_clk);
> > +err_regmap:
> > +    regmap_exit(dsi->regs);
> >      return ret;
> >  }
> >
> > @@ -1181,6 +1201,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> >      if (dsi->variant->has_mod_clk)
> >          clk_rate_exclusive_put(dsi->mod_clk);
> >
> > +    if (!IS_ERR(dsi->bus_clk)) {
> > +        regmap_mmio_detach_clk(dsi->regs);
> > +        clk_put(dsi->bus_clk);
>
> This will trigger a warning, you put down the reference twice

You mean regmap_mmio_detach_clk will put the clk?

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
