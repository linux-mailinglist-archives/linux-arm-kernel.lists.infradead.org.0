Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190C549A59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSKtN550YNZEAhCo4mcQaP3ZmLY06SVh4VkCfD8/jfU=; b=Umdze7+HQLBQK/
	WckH1B5EKhKz6oDMT+qY+6ZBHd1L5nzhXVDTvQe49COuYiiQzvJ62QKScuLh13wYw82r8FMCC/NfW
	EmBU1at6rC7YOUSgPGefjUcxAT2Vjp/1y5F9Yk3TukQMUKA2wxx6GJeES43gg9WmnzcS4vQDXwUSQ
	pn5gRZZM4F88JVZWaovy2KZ6vKC8n+Is80g35Mrd66UdAnDt7CG5JrgDd8H3Ciqd2ha1+Y9Y/LF4a
	PngokIarHpNT/GFQmDLhMbqHCBnHSsIpVT85McoML3t3/zUA7atxJNMwCXJUEWurV8SNMegBkAxZU
	vFLiE4PPFRfwVK/Mm38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8Ph-0007i4-QM; Tue, 18 Jun 2019 07:20:17 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8PP-0007P6-Q1
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:20:01 +0000
Received: by mail-ed1-f67.google.com with SMTP id k21so20138524edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:19:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lGRhkqGQodehH6nOoVQY2z539WKIaQS1uhzFQI2YTfU=;
 b=onCOpI0IHFo4DJHuySBGbKJ02so5+Vj/P41g0yjRTJAd38iMPxShgdZ4mAh/AyJe2i
 n8FokTi/DUgD53u0ggRKe0s4xvvJ14VlUmMKI/1G49TmSCXMJq5XsbuZiw4fkFiKscmZ
 nYdlRd45+SVy9XzHAECPv2scBKDjaxlags9OVjKtctZ0vRcbfM8ufIFHwVk3/PnIB0Tr
 3z6/qF6bPIggsdJ0nl0dSREFzlNwjrWD7I8+G7OuO/Oik0+CsDimblNBDMhuKiUoWl/n
 akWKDtrdHvTWNFOSNAgxw4NuQ/o/QIMefNiK/FA600KGVuI5LLnvfuqz9y4NPtARKqXj
 imZw==
X-Gm-Message-State: APjAAAUyIqmkNKHwkwe76o/Kq0Jc2rsID3ALkTdHgTItsdCgguuRuiKC
 /CNutoCx0yD1gz1T5XyCqktv3jhnTRs=
X-Google-Smtp-Source: APXvYqx8EAvWzUVNwQaeCFRkW0OAa6eh+8/6j+eRFmpeBaji4ju5BreVtUvp/kMk+CXcsC6YjlvCVg==
X-Received: by 2002:a17:906:708d:: with SMTP id
 b13mr19152269ejk.89.1560842396186; 
 Tue, 18 Jun 2019 00:19:56 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id d3sm4466646edd.88.2019.06.18.00.19.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 00:19:55 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id n4so12641742wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:19:55 -0700 (PDT)
X-Received: by 2002:adf:fc85:: with SMTP id g5mr79869381wrr.324.1560842394887; 
 Tue, 18 Jun 2019 00:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
 <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
In-Reply-To: <CAMty3ZDRYBPKrGQxAZoB+trFiDLJ5BxDfNUOnPzgd+UWcpwCoQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 18 Jun 2019 15:19:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v67uNhie9mb2-m04FGEi4Z7q7TYChOogGj2HgmSmEo4Arg@mail.gmail.com>
Message-ID: <CAGb2v67uNhie9mb2-m04FGEi4Z7q7TYChOogGj2HgmSmEo4Arg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_001959_950030_282C4E8A 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Mon, Jun 17, 2019 at 6:30 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Sun, Jun 16, 2019 at 11:01 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > now these are register during bind call.
> > >
> > > Of which, dsi clock gate would required during DPHY probe
> > > but same can miss to get since tcon top is not bound at
> > > that time.
> > >
> > > To solve, this circular dependency move the clock gate
> > > registration from bind to probe so-that DPHY can get the
> > > dsi gate clock on time.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
> > >  1 file changed, 49 insertions(+), 45 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > index 465e9b0cdfee..a8978b3fe851 100644
> > > --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> > > @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
> > >  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
> > >                                void *data)
> > >  {
> > > -       struct platform_device *pdev = to_platform_device(dev);
> > > +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> > > +       int ret;
> > > +
> > > +       ret = reset_control_deassert(tcon_top->rst);
> > > +       if (ret) {
> > > +               dev_err(dev, "Could not deassert ctrl reset control\n");
> > > +               return ret;
> > > +       }
> > > +
> > > +       ret = clk_prepare_enable(tcon_top->bus);
> > > +       if (ret) {
> > > +               dev_err(dev, "Could not enable bus clock\n");
> > > +               goto err_assert_reset;
> > > +       }
> >
> > You have to de-assert the reset control and enable the clock before the
> > clocks it provides are registered. Otherwise a consumer may come in and
> > ask for the provided clock to be enabled, but since the TCON TOP's own
> > reset and clock are still disabled, you can't actually access the registers
> > that controls the provided clock.
>
> These rst and bus are common reset and bus clocks not tcon top clocks
> that are trying to register here. ie reason I have not moved it in
> top.

And you're sure that toggling bits in the TCON TOP block doesn't require
the reset to be de-asserted and the bus clock enabled?

Somehow I doubt that.

Once the driver register the clocks it provides, they absolutely must work.
They can't only work after the bind phase when the reset gets de-asserted
and the bus clock enabled. Or you should provide proper error reporting
in the clock ops. I doubt you want to go that way either.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
