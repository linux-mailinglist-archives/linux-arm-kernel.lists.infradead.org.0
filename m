Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38AF1102AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y6U0Xybh9/pZS8CUKA01jX8EjMmWDLfJuks+QFV9AA=; b=WaJI5ku9zTGVfk
	kBFhjRQpuSZOJ9QPldIOsEX44K0xjmp7kdESNOKGb2FhF3nq+ZxvhL39o9rNwGuEsp1kGggBuSXP8
	pqiKKII7yLb+qGdRbTDr82sN41cwRedG/KsBiqy4c04rZqtR8IUsN3l+ysUC+pMWgxmRoejmwoXUJ
	UoIxZWe4gp+CxYdEqOCcKbZj1yZPQLnltb7SO9jQm8J5NzUabQfzM66e0S9lTsiMU7V+ruDsQIWZy
	0ItHNn1RMd94PUsyBrbWW6h2p2Xt0+WTKSwou42uNunWYn9TMHYBar8D6Sqg5UbRI2BJgqceWzoaY
	mjFgzMCuLY/GyAulGieQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icBEc-0005Ue-1o; Tue, 03 Dec 2019 16:41:10 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icBEQ-0005Tu-MN
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 16:41:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id z26so4447344iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 08:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ADZgj43Zep4H1J8Mj/VcJbdRhlth0WbMyVNDk+DUIs=;
 b=TXmjBts9yGklEBgcKeaJmPgWfdWczDywq2O06IPDEIT3xHUMDBV9Bf3GG2LRGbbUQO
 YLGjlPpiwjuiq2m0zQyUODfL2ZDx4pcWVZfN62P8SoyUItV9lsPug55S2/BriSARk1T2
 f3RoXLS9d8de0kIJzky4X0Kem2u4PhhHNTQo8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ADZgj43Zep4H1J8Mj/VcJbdRhlth0WbMyVNDk+DUIs=;
 b=VHP9MVbOHaIO8zm/3TQHsqad/dTofHVXAekHvT+HtlJjpFPHGiN+u3rh6bqZy2hLv1
 V8lw96lqBQSiaj5nWg5N1siW0/H5eq1jGiiakmbNEwUviZM65a0MCCduOsCDVo6MKkl7
 WFrEyvdSe1fT9nzNffQI67fIe5tAhfysj5cqdtXB26MP/N3NwFKvJwR1ZgswK+YayYRP
 5HLrOLTtTvtrD7zwoDJOulySnQGVR/DSXCjnTS9OOlYt7Hawmhoe+cfwc6cPWTwu7yTe
 XWFPbOFt/W66leVBsQD1BcSZHCSZNOtc9oES8yp1PjhpheQUgRwCd8n6h7jCf4d6qFfc
 S04g==
X-Gm-Message-State: APjAAAXZj9XWJIWrykylcEItCZ+9PNAMvQ+utQ7jwMlUDhv9wkPB1KFh
 QsTnaUz3A+T+ewcB95laIySFSX2fhFnfDrooKUE7pw==
X-Google-Smtp-Source: APXvYqyUknfFp7ci16vlAjPaM9OGfbOPPZ9eNQAS1v4OfvuieGIMGC+L+uFRpNs/Ig8YhB5lcLQP/3aiQWzMvjITjms=
X-Received: by 2002:a5d:804e:: with SMTP id b14mr3080676ior.77.1575391256874; 
 Tue, 03 Dec 2019 08:40:56 -0800 (PST)
MIME-Version: 1.0
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-4-jagan@amarulasolutions.com>
 <CAGb2v67kQ391QJhQYYYEdchHpRYBUDji=iYMZ9fKY3aCw0He-Q@mail.gmail.com>
In-Reply-To: <CAGb2v67kQ391QJhQYYYEdchHpRYBUDji=iYMZ9fKY3aCw0He-Q@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 3 Dec 2019 22:10:45 +0530
Message-ID: <CAMty3ZDCgfeU=czWVUfDY_c5Q4xS=n27RfmNvR+dLSAv3oZzYg@mail.gmail.com>
Subject: Re: [PATCH v12 3/7] drm/sun4i: dsi: Add has_mod_clk quirk
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_084059_428289_CF746993 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 8:09 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Dec 3, 2019 at 9:48 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > As per the user manual, look like mod clock is not mandatory
> > for all Allwinner MIPI DSI controllers, it is connected to
> > CLK_DSI_SCLK for A31 and not available in A64.
> >
> > So add has_mod_clk quirk and process the mod clk accordingly.
> >
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v12:
> > - none
> >
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 38 ++++++++++++++++++--------
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  5 ++++
> >  2 files changed, 32 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index c958ca9bae63..8c4c541224dd 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -11,6 +11,7 @@
> >  #include <linux/crc-ccitt.h>
> >  #include <linux/module.h>
> >  #include <linux/of_address.h>
> > +#include <linux/of_device.h>
> >  #include <linux/phy/phy-mipi-dphy.h>
> >  #include <linux/phy/phy.h>
> >  #include <linux/platform_device.h>
> > @@ -1093,6 +1094,7 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >         dsi->dev = dev;
> >         dsi->host.ops = &sun6i_dsi_host_ops;
> >         dsi->host.dev = dev;
> > +       dsi->variant = of_device_get_match_data(dev);
> >
> >         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >         base = devm_ioremap_resource(dev, res);
> > @@ -1120,17 +1122,20 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >                 return PTR_ERR(dsi->reset);
> >         }
> >
> > -       dsi->mod_clk = devm_clk_get(dev, "mod");
> > -       if (IS_ERR(dsi->mod_clk)) {
> > -               dev_err(dev, "Couldn't get the DSI mod clock\n");
> > -               return PTR_ERR(dsi->mod_clk);
> > +       if (dsi->variant->has_mod_clk) {
> > +               dsi->mod_clk = devm_clk_get(dev, "mod");
> > +               if (IS_ERR(dsi->mod_clk)) {
> > +                       dev_err(dev, "Couldn't get the DSI mod clock\n");
> > +                       return PTR_ERR(dsi->mod_clk);
> > +               }
> >         }
> >
> >         /*
> >          * In order to operate properly, that clock seems to be always
> >          * set to 297MHz.
> >          */
> > -       clk_set_rate_exclusive(dsi->mod_clk, 297000000);
> > +       if (dsi->variant->has_mod_clk)
> > +               clk_set_rate_exclusive(dsi->mod_clk, 297000000);
>
> The clk API can handle NULL pointers, so you don't need to add the if here...

Ohh. I'm not aware of this. does it added recently?

>
> >
> >         dsi->dphy = devm_phy_get(dev, "dphy");
> >         if (IS_ERR(dsi->dphy)) {
> > @@ -1160,7 +1165,8 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >  err_pm_disable:
> >         pm_runtime_disable(dev);
> >  err_unprotect_clk:
> > -       clk_rate_exclusive_put(dsi->mod_clk);
> > +       if (dsi->variant->has_mod_clk)
> > +               clk_rate_exclusive_put(dsi->mod_clk);
>
> and here...
>
> >         return ret;
> >  }
> >
> > @@ -1172,7 +1178,8 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> >         component_del(&pdev->dev, &sun6i_dsi_ops);
> >         mipi_dsi_host_unregister(&dsi->host);
> >         pm_runtime_disable(dev);
> > -       clk_rate_exclusive_put(dsi->mod_clk);
> > +       if (dsi->variant->has_mod_clk)
> > +               clk_rate_exclusive_put(dsi->mod_clk);
>
> and here ...
>
> >
> >         return 0;
> >  }
> > @@ -1189,7 +1196,8 @@ static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
> >         }
> >
> >         reset_control_deassert(dsi->reset);
> > -       clk_prepare_enable(dsi->mod_clk);
> > +       if (dsi->variant->has_mod_clk)
> > +               clk_prepare_enable(dsi->mod_clk);
>
> and here...
>
> >
> >         /*
> >          * Enable the DSI block.
> > @@ -1217,7 +1225,8 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
> >  {
> >         struct sun6i_dsi *dsi = dev_get_drvdata(dev);
> >
> > -       clk_disable_unprepare(dsi->mod_clk);
> > +       if (dsi->variant->has_mod_clk)
> > +               clk_disable_unprepare(dsi->mod_clk);
>
> and here.
>
> >         reset_control_assert(dsi->reset);
> >         regulator_disable(dsi->regulator);
> >
> > @@ -1230,9 +1239,16 @@ static const struct dev_pm_ops sun6i_dsi_pm_ops = {
> >                            NULL)
> >  };
> >
> > +static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
> > +       .has_mod_clk = true,
> > +};
> > +
> >  static const struct of_device_id sun6i_dsi_of_table[] = {
> > -       { .compatible = "allwinner,sun6i-a31-mipi-dsi" },
> > -       { }
> > +       {
> > +               .compatible = "allwinner,sun6i-a31-mipi-dsi",
> > +               .data = &sun6i_a31_mipi_dsi,
> > +       },
> > +       { /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > index 3f4846f581ef..d791c9f6fccf 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > @@ -15,6 +15,10 @@
> >
> >  #define SUN6I_DSI_TCON_DIV     4
> >
> > +struct sun6i_dsi_variant {
> > +       bool                    has_mod_clk;
> > +};
> > +
>
> You could choose to put this above the probe function, since this isn't used
> anywhere else, and a pointer field doesn't need the full definition.

Okay. Will it be okay to check the compatibility directly on probe
using of_device_is_compatible?

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
