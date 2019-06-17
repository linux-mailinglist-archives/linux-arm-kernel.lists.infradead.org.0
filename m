Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4189B47FAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQFe31q8iVOwxlRLtlfSWiwXiNEU+onLNFk7AmkgSsg=; b=j/37x5PjE0NfLA
	H+qQvIjvcfU3mixHI191VtE+UtAldHb/BHFXAGzmWJJ+xBus7K8jiIWLh14pjTCSLn5U+yFtt2WV9
	298/blrOFnGpnnG+tUTkuE9lUxoHcyscTElFPs94oPtpXC2xDa4aW0AAYSOd9ZInohYDnY4+98SAO
	pvkHhOcYCiTM9Ihm6fa32O95Hq+/A+xhvIlmK5r6dM6NbpRQmJxyE+oDt1Qg8e4WsYojQ/sXPDunV
	eyMVF0CZz6ySkAwOID/1PrZsVnFooUQ/WpDXKrGMkvi2vKd91AHLSL4ldsUpqsX+IfwCei10R37NK
	XCZmo9Ys0ZUipKPcJeug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoty-0002xW-JJ; Mon, 17 Jun 2019 10:30:14 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcotn-0002C2-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:30:05 +0000
Received: by mail-io1-xd43.google.com with SMTP id n5so19955347ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 03:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A3LvCS5kePEpWEvClGh/PP2SpGvm/yzihiihioMrY5k=;
 b=jqOLuFeF4GE1iGwe0cDirezg+Mb6UQt3wXl2PORtVhgBmE9NFT/nmPOxg0c7AfaGQh
 EgRs0yehyHSaINpG+JBfl2z9p4qjCTaHYSNjRWS7+//YkWGC9Z63BrC4T0eWwes7EQWK
 Pb7HfML/Ga1WpDYchH7O24sH/hoVsOgWkj7So=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A3LvCS5kePEpWEvClGh/PP2SpGvm/yzihiihioMrY5k=;
 b=f/3xvVJDvkCvDVVQcz/srVX7tXNSFg3xR7MKv9Q9Y6Ydngq+oHbsqtzwLuCwNv65Ci
 CFd7ETTxJADXQpsshlVgieYu9k+7A35VflfeMFJWMV50YDSjlEF2CNQwAHYw1TRGZ66J
 X9iAguSDcae8VrmPS+eZWimmZvoz4dHImbq/heXC1zAqHztAAiLsMKRLjEkJR9/2uR5N
 XD438kIFGV68DXxEAs7FUtfdgz1O0TzIrbJ+by7603gTteswhUDxsZuNHFoBhI23T6qw
 yJq0oKyL2/WO8A+balHIHROwKCkRtH6bVu6IdCtzTjJjA34c5K/dOwdLJRTTq+NWvmKl
 g9fQ==
X-Gm-Message-State: APjAAAUzmwybfJ5udf+i5IJLDuJ8uavjxzza2qES6xx57N1uR1yD+WW3
 0D051zRQczJ3USPjZjjvZCGpjeAZHGd3ZV55z2WaOQ==
X-Google-Smtp-Source: APXvYqwFp+6Q3sGP5PFjt5uFYyYV/cL8x1qFEQcCbsgfGJqgag+OTV6Q8i7mdcX7I9kfq1V+jaLpKIKwbvN+TA1OVNU=
X-Received: by 2002:a02:3217:: with SMTP id j23mr84513181jaa.79.1560767401947; 
 Mon, 17 Jun 2019 03:30:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
In-Reply-To: <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 17 Jun 2019 15:59:50 +0530
Message-ID: <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_033004_268746_CBF4CBEA 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 16, 2019 at 11:01 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > TCON TOP have clock gates for TV0, TV1, dsi and right
> > now these are register during bind call.
> >
> > Of which, dsi clock gate would required during DPHY probe
> > but same can miss to get since tcon top is not bound at
> > that time.
> >
> > To solve, this circular dependency move the clock gate
> > registration from bind to probe so-that DPHY can get the
> > dsi gate clock on time.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
> >  1 file changed, 49 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > index 465e9b0cdfee..a8978b3fe851 100644
> > --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
> >  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
> >                                void *data)
> >  {
> > -       struct platform_device *pdev = to_platform_device(dev);
> > +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> > +       int ret;
> > +
> > +       ret = reset_control_deassert(tcon_top->rst);
> > +       if (ret) {
> > +               dev_err(dev, "Could not deassert ctrl reset control\n");
> > +               return ret;
> > +       }
> > +
> > +       ret = clk_prepare_enable(tcon_top->bus);
> > +       if (ret) {
> > +               dev_err(dev, "Could not enable bus clock\n");
> > +               goto err_assert_reset;
> > +       }
>
> You have to de-assert the reset control and enable the clock before the
> clocks it provides are registered. Otherwise a consumer may come in and
> ask for the provided clock to be enabled, but since the TCON TOP's own
> reset and clock are still disabled, you can't actually access the registers
> that controls the provided clock.

These rst and bus are common reset and bus clocks not tcon top clocks
that are trying to register here. ie reason I have not moved it in
top.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
