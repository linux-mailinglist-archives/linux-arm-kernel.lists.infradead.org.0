Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B4E12E82E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 16:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qyr9QS7on6okGu8nT5x/waPtVrPzZMivXORbB44f2o=; b=JIX1jp8cuYhaOp
	jN9Y2BgZrv1gk/iA8Vhy9z+39goxaagTOaxtaRVcE3AZCeZ30jDFGNjWkYDh8lEHIlrXkyPXNOHnc
	z8FsUFP6En77asfa4jso3PAydmgg/UicHVP/GTePkcufOI9i0xpHIpXGMyIuIXgoZdrJ1HGGTL6lC
	xqbgWJf/nh2rQRnD6Tako/7cgEvqp7nwWtU4Fh5D3VQMPxEHzDKJ/RAJRCO4V7j23RiJK96HCsZ+l
	YGumbCxUh9FrNATFDOU/GAg6+HPhrPEitKVGZq+wxR0Y4U/TO4LWK6q4hLdMJQsvineOxqjqy9f0y
	sd0BPa4aedIC2j7lYf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2aj-0001cX-8Z; Thu, 02 Jan 2020 15:40:53 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2aZ-0001bv-Rx
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 15:40:45 +0000
Received: by mail-il1-x143.google.com with SMTP id c4so34381835ilo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 07:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3572HIPczR9cTuPFxrESBoTgrX4d6H7x5Q/kXXuy428=;
 b=CsMdcshBDPMrQufZIZxdudBJtg7H5PXirvxIzG5GX86qw5BbrHfL3WRLl1u9msmugU
 4nlFujipIJd3har00SH658ONwyUzVLsynUhsbUkj7VjUYMY7VSo+tJ+VQS+oXCOGBFNH
 WPaOFGHhMYzcCPVHv/6ulHwsoyYUumKyKR21c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3572HIPczR9cTuPFxrESBoTgrX4d6H7x5Q/kXXuy428=;
 b=lZwUmCgZUMtI/cwkySkjRIydWF1idO9eFo8MNYmJDr5cdMSTQD0Avzh/POelz4K/A9
 cjXadwxX5hFdaDlAOMQQN7QiXlzOtlZKoDVj4vKhoHaq3BFLRPUrcB9QFf1HO7X113SB
 34aw9SqFMenUEgGUG5PbyJWFwymbLmBnQ+rlF+QkJYIGiVB65aaGyLBlcIYrXOFkm3d9
 76l3TvmqTShUTb6xCKB5Aw9sF/ygNNdCgNEqGrfBKbNIDAhpWUXIXFHGEBun2jFHrhfn
 peYG7ONij/E6Ph65QDAlVBgF2eul55toh/W1LJWWNdR06vJPMUQWHdEFlc1F+qaH9MNL
 3zkg==
X-Gm-Message-State: APjAAAUrkg4cRi/I43z6TzOGKmfW8H88TXJ9OCO9o1X4Wg1mzaO4D9jv
 PsC3BxTkPcGl9P2xFqbmxaOBfIH0f2UUGTz2czkVcQ==
X-Google-Smtp-Source: APXvYqyktr3CqCCGml7EeAho4GJqaINKtZEGl5yX5r/Y5VF4lK9Mx3hwHRBbOa/ZWlGpatq+4kooSat9lPiBhJb0M/8=
X-Received: by 2002:a92:c647:: with SMTP id 7mr71931846ill.28.1577979642064;
 Thu, 02 Jan 2020 07:40:42 -0800 (PST)
MIME-Version: 1.0
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-3-jagan@amarulasolutions.com>
 <20200102105424.kmte7aooh2gkrcnu@gilmour.lan>
In-Reply-To: <20200102105424.kmte7aooh2gkrcnu@gilmour.lan>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 2 Jan 2020 21:10:31 +0530
Message-ID: <CAMty3ZA0e8eJZWvAh0x=KGAZVL3apdao3COvR6j3-ckv0cdvcg@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_074044_042874_042C8ECD 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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

On Thu, Jan 2, 2020 at 4:24 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Tue, Dec 31, 2019 at 06:35:21PM +0530, Jagan Teki wrote:
> > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > LCD interfaces like RGB, LVDS and DSI.
> >
> > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > tcon top.
> >
> > Add support for it, in tcon driver.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - none
> >
> >  drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > index fad72799b8df..69611d38c844 100644
> > --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> > @@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
> >       .has_channel_1          = true,
> >  };
> >
> > +static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
> > +     .supports_lvds          = true,
> > +     .has_channel_0          = true,
> > +     /* TODO Need to support TCON output muxing via GPIO pins */
> > +     .set_mux                = sun8i_r40_tcon_tv_set_mux,
>
> What is this muking about? And why is it a TODO?

Muxing similar like how TCON TOP handle TV0, TV1 I have reused the
same so-that it would configure de port selection via
sun8i_tcon_top_de_config

TCON output muxing have gpio with GPIOD and GPIOH bits, which select
which of LCD or TV TCON outputs to the LCD function pins. I have
marked these has TODO for further support as mentioned by Chen-Yu in
v1[1].

[1] https://patchwork.freedesktop.org/patch/310210/?series=62062&rev=1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
