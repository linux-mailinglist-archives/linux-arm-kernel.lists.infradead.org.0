Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EB512E8C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXAPQwbylvYA4Y2VZCuJLJfsR8T63jqO15vk3XU7F84=; b=HlZ0q6SQ1cw2ih
	AwXOAlqWk9MTtWvxHkzIVF3+9/0C7xkw2QbIhS5BllwWrQl3lypuzHMSDqWZgYQL+Q/ChEA43WvXY
	yyiw6Ca/N/TeDra4bkT/GILMdDv9iI7iZ1T1EXS4xZLf37C1Dccl8VCCWFjDbCubffL0OGM3op5XX
	8YWzChvGAPF7YtSuifbNpvY2bqoh9FtqG5srirRuNVbepqeVIwCFL1DBBN9Pn8gfMIw8vNF9OslhX
	V8kZJjw5bgSHasElYld+Tigwa8Lq708/7WV45/Go7lX4EXedS8oRavjcirtXf6rOaftKQJMFp4fO3
	Qoe23rRxKrVP5v4wwswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3R7-0005ee-LS; Thu, 02 Jan 2020 16:35:01 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3Qy-0005dC-76
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:34:54 +0000
Received: by mail-io1-xd43.google.com with SMTP id i11so38766174ioi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 08:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n02NZb1q13MC+D+YIZeKacRc8gevOmHNy1haOLJb4io=;
 b=gelJmfqDyUmjwBH/XMMX/bBXaKDVC6YTmAj8rPELVV13MZipjbHUb7JPhFkSuDop1U
 ByiLKjmlDBsd8mhMeRa6Is5L7PN0Wzk2rxFBkZqRfzxyPP1Bgn9Y5J2iih8/libglJ22
 dOtjW3gXu4mZCdjaMzxLU4AnQWrng2RGMawBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n02NZb1q13MC+D+YIZeKacRc8gevOmHNy1haOLJb4io=;
 b=GRgLdzrv9g4hW5nFirwM8jMVZPx5FdAMXaqdPpUe5URsuPF4JDaTty5H40xC8tdPvQ
 njqF9fd9XXH0z/uE9pS5eSwJco68bKc3kBaLjIzyyCs+/fZAfnHMVZ7afWdXVhBbpCNR
 e4tahxwPi2lQyNJl+NYsS4w0n74FE/qGgB9dUd4cvzOhEahwNB5TNjerw1kzgotWyYHc
 CY+SvLwX6t512MrlOTJUavEPpZBww+QZUFwZtDHwB0ktfy2KdEw5e8wat8CPEiqK3Lo0
 VFtkkOTl961WRJm0vI/pI3wN+92Dv6X+ZGNCMEyhKMy6iak9MbPaVVthSuBQInVsivqR
 NRzw==
X-Gm-Message-State: APjAAAWqQ3RP65Gg6mMzH16PhxKFMFXHyeAz3THEThM/NUHLKYbS/zem
 4YE6RhnD0kAxlVh2xNLdYkbgGF39MZOA3/eDcxTjLg==
X-Google-Smtp-Source: APXvYqz8y/GovnsF0D2tm3lNOpYaS0G7+35htjGwpcyBgB9MdOWIe9CYMW8Ole+deE4SlX9aakNc01/kDuMb4EgOvMg=
X-Received: by 2002:a02:b897:: with SMTP id p23mr67001302jam.58.1577982891338; 
 Thu, 02 Jan 2020 08:34:51 -0800 (PST)
MIME-Version: 1.0
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-3-jagan@amarulasolutions.com>
 <20200102105424.kmte7aooh2gkrcnu@gilmour.lan>
 <CAMty3ZA0e8eJZWvAh0x=KGAZVL3apdao3COvR6j3-ckv0cdvcg@mail.gmail.com>
 <20200102154703.3prgwcjyo36g5g5u@gilmour.lan>
In-Reply-To: <20200102154703.3prgwcjyo36g5g5u@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 2 Jan 2020 22:04:40 +0530
Message-ID: <CAMty3ZB_6GyK=hhJU-8yAQiom1Uq25ojFbKaGrK1fmW8SnDV_A@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_083452_700256_4C200E20 
X-CRM114-Status: GOOD (  23.66  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 9:17 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Jan 02, 2020 at 09:10:31PM +0530, Jagan Teki wrote:
> > On Thu, Jan 2, 2020 at 4:24 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Tue, Dec 31, 2019 at 06:35:21PM +0530, Jagan Teki wrote:
> > > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > > LCD interfaces like RGB, LVDS and DSI.
> > > >
> > > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > > tcon top.
> > > >
> > > > Add support for it, in tcon driver.
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > > Changes for v3:
> > > > - none
> > > >
> > > >  drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > index fad72799b8df..69611d38c844 100644
> > > > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > > > @@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
> > > >       .has_channel_1          = true,
> > > >  };
> > > >
> > > > +static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
> > > > +     .supports_lvds          = true,
> > > > +     .has_channel_0          = true,
> > > > +     /* TODO Need to support TCON output muxing via GPIO pins */
> > > > +     .set_mux                = sun8i_r40_tcon_tv_set_mux,
> > >
> > > What is this muking about? And why is it a TODO?
> >
> > Muxing similar like how TCON TOP handle TV0, TV1 I have reused the
> > same so-that it would configure de port selection via
> > sun8i_tcon_top_de_config
> >
> > TCON output muxing have gpio with GPIOD and GPIOH bits, which select
> > which of LCD or TV TCON outputs to the LCD function pins. I have
> > marked these has TODO for further support as mentioned by Chen-Yu in
> > v1[1].
>
> It should be in the commit log.

Make sense.

>
> What's the plan to support that when needed? And that means that the
> LCD and TV outputs are mutually exclusive? We should at the very least
> check that both aren't enabled at the same time.

Yes, LCD or TV within the outselect seems to be mutually exclusive.
Like LCD0 or TV0 can output to GPIOD incase of TV0_OUTSEL and LCD1 or
TV1 can output to GPIOH incase of TV1_OUTSEL. I think checking them
before configuring TCON_TOP_PORT_SEL_REG would make sense, let me know
if you have any suggestions?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
