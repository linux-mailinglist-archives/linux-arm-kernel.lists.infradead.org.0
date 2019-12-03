Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90D510F7E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2ifxWwTnco2IEWZxh3dXoZrZ2sTV89o46zDgYvtLgQ=; b=biWvsK3oumOEPD
	PrRunGjxLTM/huYNq/XGZVcK1MJHOXZF4pQTznCPSDLb7k7ktrsl3Gq2YKUXvtW1MvU4QIjsEvzU/
	ZrZoWmRK8gff3KmxTzujQs9rvVakBRs+84LpmvPOwwd4wY2R7QKgncMqMHvghgN9ylF8m0ZUfKkBs
	dipTXOsRwcm29/0KvUqokkb5EAH9LkMK++Sil4YufzN9vFe98qGbcl75fEeJvV8jZy8kS/v+625/o
	/72pxxSFSsUWc45WZoK7vUsDOU0xotZgPgHKj1hTwFHuejw+zZbn10Q40ycFoKPz99rKOU5oNybBn
	y39LFFexwg3mtZ0T6aGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1pN-0007RX-1z; Tue, 03 Dec 2019 06:38:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1pE-0007Qm-V6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:38:22 +0000
Received: by mail-io1-xd42.google.com with SMTP id i11so2369316iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 22:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wpTQKnkngieuqXuzL7uZpLiKACy2LcoAuQquti9jps=;
 b=NbCUwlhamyMm8r7AOBEKPKTnKIR8a03HSnFaFm5T29JB6EoEHzTfUYuqeWVTovEJuR
 PEi7n0RtUBpm5MP+F4XmS8zG/MtaaUPC4wP/N8wkWP+6nC5rZS1IdlTcS+wAa/1hrZO1
 UZDjYdywaEr0Jq66vc3clKK8ZF6mQZ1KuGSP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wpTQKnkngieuqXuzL7uZpLiKACy2LcoAuQquti9jps=;
 b=YsQYqA1T8bfhilNYwncvJUJiUuQxjUGTTrVjLjOHCYwCK1T8nOz3TtMsmtjW/R4Omb
 eFKkdJACjgHD90L/045dGEEsssiYY2+efIyjAAHopzzmupH3PyoDC3zqGdrLNjidlQbR
 baqFIir4YSh0GyeEXUP3TmmQPadTeeZJsCmnc3jwjO/rrFs7V2JWMNMFY9QlDPhGE+TA
 xfgBot1Qoc4BHTbV7Q30+BZvOGsg96qy7gJSUjHFlkViM4pFOAyv/sIpZeLJBHzkgoPS
 ++HWGaW591gihdqE3wP03OSX86GJ6j0kjPL/Ms/JNFcX1LeczJ+YJEpP68k25MDA104M
 wstA==
X-Gm-Message-State: APjAAAVp4rXgJKqnuMCKcqKwF3mUiiApH3NG+VGd1gmkmlqnMCHtYZU1
 RXdEovU6i3rDFs6frPimRA+dzqNLrD6JHSFXYL2kHw==
X-Google-Smtp-Source: APXvYqzw5MRI9bLbpC8aBKtEMr/lv/4bW1UrRcpCmyT5f0lq7NP3QUXl7E1sr2Kqyin1ufYe3yt6t3462BRba831Hcg=
X-Received: by 2002:a5d:804e:: with SMTP id b14mr1170073ior.77.1575355097154; 
 Mon, 02 Dec 2019 22:38:17 -0800 (PST)
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
 <CAMty3ZDePC=B-DgfCcjRhJTeciwZmSEU-c4u1=sN_Hs0RgbC7Q@mail.gmail.com>
 <20191128175134.kcgtylfo4ax6ifz7@gilmour.lan>
In-Reply-To: <20191128175134.kcgtylfo4ax6ifz7@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 3 Dec 2019 12:08:06 +0530
Message-ID: <CAMty3ZBBkAk3==9u9XS3utms8GZD-5wPKu1WSR3byh5h-tY8aw@mail.gmail.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_223821_426759_19ED2DE3 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
 devicetree <devicetree@vger.kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 11:21 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Sat, Nov 23, 2019 at 01:20:21AM +0530, Jagan Teki wrote:
> > > > Please have a look at this snippet, I have used your second
> > > > suggestions. let me know if you have any comments?
> > > >
> > > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > index 8fa90cfc2ac8..91c95e56d870 100644
> > > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > @@ -1109,24 +1109,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > > >          return PTR_ERR(dsi->regulator);
> > > >      }
> > > >
> > > > -    dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > > > -                          &sun6i_dsi_regmap_config);
> > > > -    if (IS_ERR(dsi->regs)) {
> > > > -        dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> > > > -        return PTR_ERR(dsi->regs);
> > > > -    }
> > > > -
> > > >      dsi->reset = devm_reset_control_get_shared(dev, NULL);
> > > >      if (IS_ERR(dsi->reset)) {
> > > >          dev_err(dev, "Couldn't get our reset line\n");
> > > >          return PTR_ERR(dsi->reset);
> > > >      }
> > > >
> > > > +    dsi->regs = regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
> > >
> > > You should use the devm variant here
> >
> > Sure.
> >
> > >
> > > > +    if (IS_ERR(dsi->regs)) {
> > > > +        dev_err(dev, "Couldn't init regmap\n");
> > > > +        return PTR_ERR(dsi->regs);
> > > > +    }
> > > > +
> > > > +    dsi->bus_clk = devm_clk_get(dev, NULL);
> > >
> > > I guess you still need to pass 'bus' here?
> >
> > But the idea here is not to specify clock name explicitly to support
> > A64. otherwise A64 would fail as we are not specifying the clock-names
> > explicitly on dsi node.
>
> Right. But you have no guarantee that the bus clock is going to be the
> first one on the other SoCs either.
>
> What about something like that instead:
>
> char *clk_name = NULL;
> if (dsi->has_mod_clk)
>     clk_name = "bus";
>
> clk = devm_clk_get(dev, clk_name);
> if (IS_ERR(clk))
>     return PTR_ERR(clk));
>
> regmap_mmio_attach_clk(regmap, clk);

This makes sense, thanks for your input. I have tested in A33, A64.

>
> >
> > dsi: dsi@1ca0000 {
> >        compatible = "allwinner,sun50i-a64-mipi-dsi";
> >        reg = <0x01ca0000 0x1000>;
> >        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> >        clocks = <&ccu CLK_BUS_MIPI_DSI>;
> >        resets = <&ccu RST_BUS_MIPI_DSI>;
> >       phys = <&dphy>;
> >       phy-names = "dphy";
> > .....
> > };
> >
> > >
> > > > +    if (IS_ERR(dsi->bus_clk)) {
> > > > +        dev_err(dev, "Couldn't get the DSI bus clock\n");
> > > > +        ret = PTR_ERR(dsi->bus_clk);
> > > > +        goto err_regmap;
> > > > +    } else {
> > > > +        printk("Jagan.. Got the BUS clock\n");
> > > > +        ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> > > > +        if (ret)
> > > > +            goto err_bus_clk;
> > > > +    }
> > > > +
> > > >      if (dsi->variant->has_mod_clk) {
> > > >          dsi->mod_clk = devm_clk_get(dev, "mod");
> > > >          if (IS_ERR(dsi->mod_clk)) {
> > > >              dev_err(dev, "Couldn't get the DSI mod clock\n");
> > > > -            return PTR_ERR(dsi->mod_clk);
> > > > +            ret = PTR_ERR(dsi->mod_clk);
> > > > +            goto err_attach_clk;
> > > >          }
> > > >      }
> > > >
> > > > @@ -1167,6 +1179,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > > >  err_unprotect_clk:
> > > >      if (dsi->variant->has_mod_clk)
> > > >          clk_rate_exclusive_put(dsi->mod_clk);
> > > > +err_attach_clk:
> > > > +    if (!IS_ERR(dsi->bus_clk))
> > > > +        regmap_mmio_detach_clk(dsi->regs);
> > > > +err_bus_clk:
> > > > +    if (!IS_ERR(dsi->bus_clk))
> > > > +        clk_put(dsi->bus_clk);
> > > > +err_regmap:
> > > > +    regmap_exit(dsi->regs);
> > > >      return ret;
> > > >  }
> > > >
> > > > @@ -1181,6 +1201,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> > > >      if (dsi->variant->has_mod_clk)
> > > >          clk_rate_exclusive_put(dsi->mod_clk);
> > > >
> > > > +    if (!IS_ERR(dsi->bus_clk)) {
> > > > +        regmap_mmio_detach_clk(dsi->regs);
> > > > +        clk_put(dsi->bus_clk);
> > >
> > > This will trigger a warning, you put down the reference twice
> >
> > You mean regmap_mmio_detach_clk will put the clk?
>
> No, devm_clk_get will.

Got it. Will update and send v12.

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
