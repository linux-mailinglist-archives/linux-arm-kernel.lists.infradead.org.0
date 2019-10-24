Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E56E3335
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNaGGhPLWzeXEEz+9QE+Pp0zof4JRnfgI1qdDeux7M8=; b=sF1y71sBGIrRnZ
	G90ccHnvIMUldES4ShoIFdP5w45Dp+JwoE6qDWrTIkxa6wwVzRgsgy8jdo8DqhMuE+ZDtnzHXfnVa
	6QvS6UOnKjL4QtnxhdphN+qYPRxIhjpSZJbil/TntD55NVOUXWeBLmwRS8pCeCr5Yu8rOc2V5auWA
	NjDxQ1rRb3rnixsLegmBy0IgzC5qLFPK0lXkU/3u8JDN7Z+F7dMQD6BF8cEXM+ipywZs7epbIN8wW
	nFhMgPvAryazN52DAu81uVhcywXosB4/7NhQqSKTbmzN+CZHOjFLmN7TtiVgJImoSS61rR70EMbjT
	KPilN6gENDy0xbiJQsrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcfo-00064G-9o; Thu, 24 Oct 2019 12:57:04 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcfb-0005uK-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:56:53 +0000
Received: by mail-io1-xd43.google.com with SMTP id z19so29393951ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 05:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aTdM6kx15igVuSSKMbiCTSzmlWnq1yiOzOY1SuHhFrs=;
 b=hbo6HBALmJDGv9jgxlTtf+xksm9OJfWjLr2jEs1YgJaKNaoOQZiQIwRBkCZXab9vC8
 xlZ7f1bHG9D+YTORvlGPIf0LAoOoY5uPWuaoiiz8LEammkRzU8H5R/4MLt5ZAOXKal79
 TECVYmuEMl7GwJJokwPwayW76Qjpo9wnLDenY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aTdM6kx15igVuSSKMbiCTSzmlWnq1yiOzOY1SuHhFrs=;
 b=XFFu7ZZ7Hi+8Ws+RkLQl0w2qdLjb84tvnKy1BOTLfgsRzeU2IsVyKRQNAMsJh6NtpE
 tz+nxpIePxyoxEU66vweSh9fyKjxBYe2JBeNPYlsc+whRZTFGWcYoYw4DIMCX0+gdSoV
 VPo0v06CY2tX62uk6s32gvxPMQZHWR1lRwTF+IVvNXzIXvbrpH0+SIz8cAIYkU2AQdRP
 yl69b9Yew2AnwMojaBTJylQ9HnBBiwOcstkuR1KF0PTB2JKprYY1kqggWcW6SxGRCNcq
 kynvDvKUVhNeS7Vq5A5P2caAUyXTnszO1DSJUvTzNj5Itqqwaf0V8EPbpVjHeh+LCD6O
 KKRw==
X-Gm-Message-State: APjAAAXJkpAMUguNQpcC/l8z3nja7g/epQ68IpGMeVKG0MjS/c3Gp319
 0k/GNyNpYqO4yNJuRrQjz5w9KQGVkOqFBuNFKfJOww==
X-Google-Smtp-Source: APXvYqzkszCGtKnl0Ho1P2Ch5cLL32TntiFQ+qXfuG+AJKZ9bQz72BttFsscY6YYlFZWJiYiZXLcIz32vRnBFLkhYy0=
X-Received: by 2002:a02:694e:: with SMTP id e75mr14609645jac.85.1571921807602; 
 Thu, 24 Oct 2019 05:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
 <20191007105708.raxavxk4n7bvxh7x@gilmour>
 <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
 <20191016080306.44pmo3rfmtnkgosq@gilmour>
 <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
 <20191017095225.ntx647ivegaldlyf@gilmour>
In-Reply-To: <20191017095225.ntx647ivegaldlyf@gilmour>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 24 Oct 2019 18:26:36 +0530
Message-ID: <CAMty3ZDYcwJ4XMm45BLjXnvPXeu-rMAiN5v=CDhvuLsAm5tf=Q@mail.gmail.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_055651_594956_F6E69351 
X-CRM114-Status: GOOD (  26.18  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Oct 17, 2019 at 3:22 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Wed, Oct 16, 2019 at 02:19:44PM +0530, Jagan Teki wrote:
> > On Wed, Oct 16, 2019 at 1:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Mon, Oct 14, 2019 at 05:37:50PM +0530, Jagan Teki wrote:
> > > > On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > > > > > Add MIPI DSI pipeline for Allwinner A64.
> > > > > >
> > > > > > - dsi node, with A64 compatible since it doesn't support
> > > > > >   DSI_SCLK gating unlike A33
> > > > > > - dphy node, with A64 compatible with A33 fallback since
> > > > > >   DPHY on A64 and A33 is similar
> > > > > > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> > > > > >
> > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> > > > > >  1 file changed, 38 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > index 69128a6dfc46..ad4170b8aee0 100644
> > > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > @@ -382,6 +382,12 @@
> > > > > >                                       #address-cells = <1>;
> > > > > >                                       #size-cells = <0>;
> > > > > >                                       reg = <1>;
> > > > > > +
> > > > > > +                                     tcon0_out_dsi: endpoint@1 {
> > > > > > +                                             reg = <1>;
> > > > > > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > > > > > +                                             allwinner,tcon-channel = <1>;
> > > > > > +                                     };
> > > > > >                               };
> > > > > >                       };
> > > > > >               };
> > > > > > @@ -1003,6 +1009,38 @@
> > > > > >                       status = "disabled";
> > > > > >               };
> > > > > >
> > > > > > +             dsi: dsi@1ca0000 {
> > > > > > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > > > > > +                     reg = <0x01ca0000 0x1000>;
> > > > > > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > > > > > +                     clock-names = "bus";
> > > > >
> > > > > This won't validate with the bindings you have either here, since it
> > > > > still expects bus and mod.
> > > > >
> > > > > I guess in that cas, we can just drop clock-names, which will require
> > > > > a bit of work on the driver side as well.
> > > >
> > > > Okay.
> > > > mod clock is not required for a64, ie reason we have has_mod_clk quirk
> > > > patch. Adjust the clock-names: on dt-bindings would make sense here,
> > > > what do you think?
> > >
> > > I'm confused, what are you suggesting?
> >
> > Sorry for the confusion.
> >
> > The mod clock is not required for A64 and we have a patch for handling
> > mod clock using has_mod_clk quirk(on the series), indeed the mod clock
> > is available in A31 and not needed for A64. So, to satisfy this
> > requirement the clock-names on dt-bindings can update to make mod
> > clock-name is optional and bus clock is required.
>
> No, the bus clock name is not needed if there's only one clock.

Looks like we need "bus" clock required since the
devm_regmap_init_mmio_clk is created only if bus clock-names added in
dt.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
