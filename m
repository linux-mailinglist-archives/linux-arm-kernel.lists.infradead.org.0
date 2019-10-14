Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4B4D620A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htnhyIt3GJQn9rz3q2cPj1f8gWTMlBX5fwY1QWhOzgI=; b=M6Y6E+lyKlf4lK
	sQ6PKQZQ4MvXJAZShHeu9yADdgI5A0YIiuWCMwlt5JxdXsCx7KqFKoQfzKZQJpXk/MuZdl0Ru//LB
	JbN41sTvAEIYv+ToXMhnVsuT98gI3khEw+5nhJo/iKsWpJm+cNqxo3Y+isGS67XHpVIJKJPl1QkUG
	Pc3buFbiIYnii2uayXmyplYM1yt7U5EmicxSCaR2O0OPd220X043JkwR2EtEb/7CC4uOWdABDW40E
	zWKVI8cGsu6DhnYgwNgBafHtrP6r3rtCHOO9EBPGu6ZTxTFvsRlJYC2lXhI3daF2d84mIrKWL+YYi
	76f+WP12BrFP6WALkmag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz9B-0006Ur-Tl; Mon, 14 Oct 2019 12:08:21 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz8u-0006Nj-2S
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:08:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id c6so37224432ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6crmpTwGnz+uFcnLN62tbtxngSexhL6XeYQRkm/JhoY=;
 b=gQEUAXsMwogpgVvZgUXndfP8Yx1YL+c7KNJMu+nO1RwHxW4SfBzwf+tTSjUdob83Lt
 8bjCllxos6er4GVPWpid4x2QZH+CKRzOyTW+27zQjnfWvMatBzD0PFfILP+3UmKhPM8Z
 CoPSGPu5lzhnetQrfUKDbabRzqD5JKJCzT9Pw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6crmpTwGnz+uFcnLN62tbtxngSexhL6XeYQRkm/JhoY=;
 b=Aol2EyH4pfOElyu4/jVlQVXQqvOT1HgZb98DZWLLbBtRP9GdlxEbq+KS5y/bHiXaLB
 137JICisQ2W3wsXMLKKHpDlQSqdsFWk8p4xcWMsfqxHqgQlHQNjhgYQALHxoacMA/y+1
 yZFlNgGtzkKk4gNVj1FavO6ElYQMl6gR9w7rXb82tSFxTqd2HqlFTs1/82oIrN+zb8ZE
 9L391KEUxh5syZwdZ0dETIbn/xTg+5+Kg2HHB2t+UygJPP+uCChIx6QV3TKfbcrYaIp5
 s79CQ/qHWAsja9bAY00lTZkQZioY7lNoeSNCad3vF77Ynwn7yfbYbhPLjFHE9B5IRMxA
 ytcw==
X-Gm-Message-State: APjAAAUdgSFtUBaPoLn2pOf8xuaZBOv/056ZHpHpz9Sig0uRn1taVNmi
 kAKG8C+vK6EH9MLe6l6Du1uYzFrLQr08iG+vYMbXUw==
X-Google-Smtp-Source: APXvYqxpgGP82G+0e/506RQFRNOo+V1cYmj86xwy/H75qzek0TZSuNPkcdhhBjRp/kGb802FWG6ooo62z42OJaaLFpU=
X-Received: by 2002:a6b:37c6:: with SMTP id e189mr18175247ioa.61.1571054882584; 
 Mon, 14 Oct 2019 05:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
 <20191007105708.raxavxk4n7bvxh7x@gilmour>
In-Reply-To: <20191007105708.raxavxk4n7bvxh7x@gilmour>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 14 Oct 2019 17:37:50 +0530
Message-ID: <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_050804_284951_DDA45BEE 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > Add MIPI DSI pipeline for Allwinner A64.
> >
> > - dsi node, with A64 compatible since it doesn't support
> >   DSI_SCLK gating unlike A33
> > - dphy node, with A64 compatible with A33 fallback since
> >   DPHY on A64 and A33 is similar
> > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> >  1 file changed, 38 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 69128a6dfc46..ad4170b8aee0 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -382,6 +382,12 @@
> >                                       #address-cells = <1>;
> >                                       #size-cells = <0>;
> >                                       reg = <1>;
> > +
> > +                                     tcon0_out_dsi: endpoint@1 {
> > +                                             reg = <1>;
> > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > +                                             allwinner,tcon-channel = <1>;
> > +                                     };
> >                               };
> >                       };
> >               };
> > @@ -1003,6 +1009,38 @@
> >                       status = "disabled";
> >               };
> >
> > +             dsi: dsi@1ca0000 {
> > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > +                     reg = <0x01ca0000 0x1000>;
> > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > +                     clock-names = "bus";
>
> This won't validate with the bindings you have either here, since it
> still expects bus and mod.
>
> I guess in that cas, we can just drop clock-names, which will require
> a bit of work on the driver side as well.

Okay.
mod clock is not required for a64, ie reason we have has_mod_clk quirk
patch. Adjust the clock-names: on dt-bindings would make sense here,
what do you think?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
