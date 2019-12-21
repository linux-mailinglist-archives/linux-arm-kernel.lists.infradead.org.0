Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ABC1288E1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 12:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DazCkLxabWnu4/Y6qwgsQWo/Ktl2g6tOsL+i4qrjNAA=; b=PB4GRekPZKH1Rt
	cyAn1F2ClAiZoltaX0oYT8ub3LPNfe0o8DKy7OHKvubL/e3s88k3tHCUc6pxMQN6HZ+PIAHkfHK+5
	jHFMWPXRKpPEquKViRsbz6D1QHVBInriTQasEornBhfoUzdUpJdi7o0TyFUQTb2RGD9TJxXKlhAS4
	ov/1UEW+73xzK4ja3S/bqwr0QtKmeekbgj0jPEa3RsLpq/ON54P2tdXgJ3frPaHm46GnAdQkIepkB
	8nI43Tk68oWORv2iBLfc/t0IZx2ZsLBtDqMurJQMeDvIVMejpMLvBhTo4L+yhLZBroyV0keazafaN
	NGaJ6UYeqjbs23VtLmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iid8M-00024m-Ha; Sat, 21 Dec 2019 11:41:22 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iid8D-00022K-HS
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 11:41:15 +0000
Received: by mail-il1-x141.google.com with SMTP id f5so10286068ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 03:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vNV02+2w/LuSpJZYsMjHcwC8GjFE9t6hiV5LOIUFGBk=;
 b=A5BO7X5DzlfaSnRuAGZyzntGC11UWR+MMEiO7Sp17mrIFsoqt883gjzd517WrM20vi
 iJFikLyXXR432ughgioGPECET9WZT2wKTwUVkZ/rYA1we8jb348G6O6Os1PvlK+ulG9H
 oRAnKFtkPSlkux55lpH2E2TCtgtXcEU1COIUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vNV02+2w/LuSpJZYsMjHcwC8GjFE9t6hiV5LOIUFGBk=;
 b=MGb3Tcu/1SnkImyyuQ3aD7r/fvFQytWGk1ioB3oGVB3GqdNVhk+xYU1wt59oQ3YDpT
 bfiJ2u3dkBGBp/WN+5cFh5qYmfrXAVWdhMM/dkLZ9HVt3M5ENNncZC/erLFIT0HnEWQ5
 Q3aPm/FmjMmNsoES/9VmT5BpbOWCha3QAD+MvGIwyjjFuOfc/7Ol1kLGpIaSot9vwtuh
 b6Ik4hMiz5VpT6pKIfcIizzu6aQtFSnPSJOV8lqQSNrSK2Z4Eln3TyHbTRWQUpCuXomc
 Ktx7P/ev4Mg2vIU/e9tdL8Rw/8tUPtUHeyFW6B29Nu7hf93xjdE+Kka5KLEnoCrLgAm5
 z2Ig==
X-Gm-Message-State: APjAAAVNMEmg7LLZikuWpAm70LrG8mw3c+Y+GZs2yFrvAIal7o2XJ/Ji
 nL0yGvR+LnzYiMr72VTrwK1ppkzcMBlJHttCqURzI0cOMqI=
X-Google-Smtp-Source: APXvYqz/R+VCq8E6MRf5DMa4CwxrLZijUguwUXScwgRA6YKgobbJy4dCRHwi8tMTCUrh4OCP94WsaQhcEvFaUtFg2Pk=
X-Received: by 2002:a92:7706:: with SMTP id s6mr16088743ilc.61.1576928471817; 
 Sat, 21 Dec 2019 03:41:11 -0800 (PST)
MIME-Version: 1.0
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
 <20191218191017.2895-5-jagan@amarulasolutions.com>
 <20191218220536.vwww45yctm5ye3vg@gilmour.lan>
In-Reply-To: <20191218220536.vwww45yctm5ye3vg@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 21 Dec 2019 17:11:00 +0530
Message-ID: <CAMty3ZDgnn0LyGVYmzQhTtg7JdiqH_cW_dZ=o2SA1NSF=i2ufg@mail.gmail.com>
Subject: Re: [PATCH v13 4/7] drm/sun4i: dsi: Handle bus clock via
 regmap_mmio_attach_clk
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_034113_730218_CA393223 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 3:35 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Dec 19, 2019 at 12:40:14AM +0530, Jagan Teki wrote:
> > regmap has special API to enable the controller bus clock while
> > initializing register space, and current driver is using
> > devm_regmap_init_mmio_clk which require to specify bus
> > clk_id argument as "bus"
> >
> > But, the usage of clocks are varies between different Allwinner
> > DSI controllers. Clocking in A33 would need bus and mod clocks
> > where as A64 would need only bus clock.
> >
> > Since A64 support only single bus clock, it is optional to
> > specify the clock-names on the controller device tree node.
> > So using NULL on clk_id would get the attached clock.
> >
> > To support clk_id as "bus" and "NULL" during clock enablement
> > between controllers, this patch add generic code to handle
> > the bus clock using regmap_mmio_attach_clk with associated
> > regmap APIs.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v13:
> > - update the changes since has_mod_clk is dropped in previous patch
> >
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 45 +++++++++++++++++++++-----
> >  1 file changed, 37 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index 68b88a3dc4c5..de8955fbeb00 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -1081,6 +1081,7 @@ static const struct component_ops sun6i_dsi_ops = {
> >  static int sun6i_dsi_probe(struct platform_device *pdev)
> >  {
> >       struct device *dev = &pdev->dev;
> > +     const char *bus_clk_name = NULL;
> >       struct sun6i_dsi *dsi;
> >       struct resource *res;
> >       void __iomem *base;
> > @@ -1094,6 +1095,10 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >       dsi->host.ops = &sun6i_dsi_host_ops;
> >       dsi->host.dev = dev;
> >
> > +     if (of_device_is_compatible(dev->of_node,
> > +                                 "allwinner,sun6i-a31-mipi-dsi"))
> > +             bus_clk_name = "bus";
> > +
> >       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >       base = devm_ioremap_resource(dev, res);
> >       if (IS_ERR(base)) {
> > @@ -1107,25 +1112,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >               return PTR_ERR(dsi->regulator);
> >       }
> >
> > -     dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > -                                           &sun6i_dsi_regmap_config);
> > -     if (IS_ERR(dsi->regs)) {
> > -             dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> > -             return PTR_ERR(dsi->regs);
> > -     }
> > -
> >       dsi->reset = devm_reset_control_get_shared(dev, NULL);
> >       if (IS_ERR(dsi->reset)) {
> >               dev_err(dev, "Couldn't get our reset line\n");
> >               return PTR_ERR(dsi->reset);
> >       }
> >
> > +     dsi->regs = devm_regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
> > +     if (IS_ERR(dsi->regs)) {
> > +             dev_err(dev, "Couldn't init regmap\n");
> > +             return PTR_ERR(dsi->regs);
> > +     }
> > +
> > +     dsi->bus_clk = devm_clk_get(dev, bus_clk_name);
> > +     if (IS_ERR(dsi->bus_clk)) {
> > +             dev_err(dev, "Couldn't get the DSI bus clock\n");
> > +             ret = PTR_ERR(dsi->bus_clk);
> > +             goto err_regmap;
> > +     } else {
> > +             ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> > +             if (ret)
> > +                     goto err_bus_clk;
> > +     }
> > +
> >       if (of_device_is_compatible(dev->of_node,
> >                                   "allwinner,sun6i-a31-mipi-dsi")) {
> >               dsi->mod_clk = devm_clk_get(dev, "mod");
> >               if (IS_ERR(dsi->mod_clk)) {
> >                       dev_err(dev, "Couldn't get the DSI mod clock\n");
> > -                     return PTR_ERR(dsi->mod_clk);
> > +                     ret = PTR_ERR(dsi->mod_clk);
> > +                     goto err_attach_clk;
> >               }
> >       }
> >
> > @@ -1164,6 +1180,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >       pm_runtime_disable(dev);
> >  err_unprotect_clk:
> >       clk_rate_exclusive_put(dsi->mod_clk);
> > +err_attach_clk:
> > +     if (!IS_ERR(dsi->bus_clk))
> > +             regmap_mmio_detach_clk(dsi->regs);
> > +err_bus_clk:
> > +     if (!IS_ERR(dsi->bus_clk))
> > +             clk_put(dsi->bus_clk);
>
> You still have an unbalanced clk_get / clk_put here

You mean it is not needed right since devm_clk_get has release call
via devres_alloc? or the wrong position for clk_put?

>
> > +err_regmap:
> > +     regmap_exit(dsi->regs);
>
> That's not needed.

Yes. look like __devm_regmap_init has release call with regmap_exit.

Thanks for the comments, I will update these and send next version.
Let me know if you have any more comments?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
