Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880CEC47E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQSA5ia0UlEaBJnIzrd137j/uO39ONKguVylBoKWhLc=; b=uiqrUv0iCViQg0
	LplVIWTVaRDMGcO4F4MdBiQG+2kmHzr8lcz7b7QXJ8n7N3ep2KFA5Umj6cSZ0uzIRVTb1sX69Et33
	5ieOu+8xzkAG86VXLwQQgXyTdiMzqF6MnAqbHzpaLJ9Jvczl4J2sFt/UZb5nom3lYuwHHDOOraMdO
	6puHTs0b4dbpId4IgyuaRmZvlBQgoIUG1HHLxhNkDUCB7fMzgXOTLrhXDdT/udIqX7qc41Td2CbHt
	68bxHWrgabrEa61HuwSWuwF53BZDXDW5kpuEYx+HY/HER0hbEDydDQk92J7xgMo8dDeIIPNqyb4db
	44DtCGQoJReBq6hzrRdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXj9-0007Or-OC; Fri, 01 Nov 2019 14:16:35 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXfq-00037t-Cg
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:13:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id 18so11033558ion.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 07:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TlYI6UI9fS5d9yjIzRHk5DK4kYPW9gPr3Mb6SrPAxFE=;
 b=DY+6pMGsOyfGXGpiBchev1A8MThpoGrRVDP4c2kL1T2x4iLT/1Oqzt0RbI2ugp6JUB
 jckKQDRHFHVY5qfJ+Q4esI6fnzcsXhgeDDJSWIDSEmHIwj3RqKsHUvNZWM1tGAt7NrsV
 znRnibutxTKLGXs71MnmqdNJnPvXmveeL+O9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TlYI6UI9fS5d9yjIzRHk5DK4kYPW9gPr3Mb6SrPAxFE=;
 b=ijby4urLzWb0wV3BOzomzIQZ0lRIWWN8FK9dWc750wDBTDktiyPfxohdpsr5InP3Qp
 iBZ/N8899k03jbIHFCM72gy2Z+bnruUmzsepuye5EEv40VTT3vnQGo+8faqY2zKfGeV/
 P8ODdbHqnvtJRkcp8N6e0t1TyQz65XFADhRZGuFAB+qXqb8WRxyaVgbxs8gP+CSM1CDQ
 /mwQYlHX0RqLObMLb6rOKeyd5aW6rZbTj2uuLNLxf7IYSs9QYVlfVmbuaZIAGKwbTLGa
 9obFlyyOENI25DRGykm3aIPKXvkjr65/NC/ubmnhYHwrUBPrfKZ90t0RorMqPvwmLFsD
 s6xg==
X-Gm-Message-State: APjAAAWeBiJ7omsuyD/s5PU/xoDC4e+QjyMCbgMSB+N8DsHKyj7+wwJa
 GbEd/ZTs/suBejwCtKK324ojo3LpnoQ95dugY+lScA==
X-Google-Smtp-Source: APXvYqyMLNtzaVw0BMP+EGUQO4Zl/cXY4bdNL2Xb19JBMdareqJEAqq7IY7jnvNWY72KqdWH+k6HJ4EIjuJgdGAsAFQ=
X-Received: by 2002:a5e:d917:: with SMTP id n23mr1074088iop.28.1572617587422; 
 Fri, 01 Nov 2019 07:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
 <20191029085401.gvqpwmmpyml75vis@hendrix>
In-Reply-To: <20191029085401.gvqpwmmpyml75vis@hendrix>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 1 Nov 2019 19:42:55 +0530
Message-ID: <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_071310_583481_8BB44B92 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Maxime,

On Tue, Oct 29, 2019 at 2:24 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Tue, Oct 29, 2019 at 04:03:56AM +0530, Jagan Teki wrote:
> > > > explicit handling of common clock would require since the A64
> > > > doesn't need to mention the clock-names explicitly in dts since it
> > > > support only one bus clock.
> > > >
> > > > Also pass clk_id NULL instead "bus" to regmap clock init function
> > > > since the single clock variants no need to mention clock-names
> > > > explicitly.
> > >
> > > You don't need explicit clock handling. Passing NULL as the argument
> > > in regmap_init_mmio_clk will make it use the first clock, which is the
> > > bus clock.
> >
> > Indeed I tried that, since NULL clk_id wouldn't enable the bus clock
> > during regmap_mmio_gen_context code, passing NULL triggering vblank
> > timeout.
>
> There's a bunch of users of NULL in tree, so finding out why NULL
> doesn't work is the way forward.

I'd have looked the some of the users before checking the code as
well. As I said passing NULL clk_id to devm_regmap_init_mmio_clk =>
__devm_regmap_init_mmio_clk would return before processing the clock.

Here is the code snippet on the tree just to make sure I'm on the same
page or not.

static struct regmap_mmio_context *regmap_mmio_gen_context(struct device *dev,
                                        const char *clk_id,
                                        void __iomem *regs,
                                        const struct regmap_config *config)
{
        -----------------------
        --------------
        if (clk_id == NULL)
                return ctx;

        ctx->clk = clk_get(dev, clk_id);
        if (IS_ERR(ctx->clk)) {
                ret = PTR_ERR(ctx->clk);
                goto err_free;
        }

        ret = clk_prepare(ctx->clk);
        if (ret < 0) {
                clk_put(ctx->clk);
                goto err_free;
        }
        -------------
        ---------------
}

Yes, I did check on the driver in the tree before committing explicit
clock handle, which make similar requirements like us in [1]. this
imx2 wdt driver is handling the explicit clock as well. I'm sure this
driver is updated as I have seen few changes related to this driver in
ML.

Let me know if I still miss any key change or note here, I will dig
further on this for sure.

[1] https://elixir.bootlin.com/linux/v5.4-rc4/source/drivers/watchdog/imx2_wdt.c#L264

thanks,
Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
