Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12325E3BBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 21:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q6bxoJ+giqlhh72pUB5y4JxNmSFUK/SwNV5Mz5lpQ4=; b=A8TGgLPLUuMsQD
	XyIJBju3EHLxIV7gKIM9X11++r9gieQQpkqR7B3V/hEtC1E4UhBQX536hh4Cv2pki9pZAxgpoQN41
	bo15ONOznVl7O2/KDxj+Dc8o1cHTexG4a6R8quaY0qgQfAd28u91GAXEkI95FDtbpOVcDNBb0vPL0
	FUQkTXx1q1zhOM44cf/nVLISkzcNawXj9oEzh/2CwhjBV00zfKhuTjXiN1ggDo9M83z2GfqJ26HLR
	e6CiCsXx2gjDMPWumLllNYSHQCrD3wuOO0C1DSMZZx4aTzERsGKWpvwNfeVRjbuUrcDKSpD7bdIZZ
	MOlgyeGjgfKJ9AuYhVGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNiOR-0007Dt-KZ; Thu, 24 Oct 2019 19:03:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNiOE-0007DS-15
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 19:03:19 +0000
Received: from localhost (unknown [109.190.253.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBE492070B;
 Thu, 24 Oct 2019 19:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571943797;
 bh=ePbGhKrM0X2X47Ig0cCqNbkm6vptO7VyM2yJnt4HOIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RtSj9ZsU+Qi/+k4LBe1ymBcSWx41hn33zdDT0kZRVK/BKRx2NjzZaugw+m+Ax7OgR
 1of8SxMH/iJeyGtG2GxLaBGjUnkI9tRXqPBq3sj8s9batNIfLycusnajxA8I1HUfEF
 l9r+xiRzlYUv7fKlZKX/QOAKdLIBdxgGFsrUltjA=
Date: Thu, 24 Oct 2019 20:27:49 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Message-ID: <20191024182749.czihj3gnvj5yz2eo@hendrix>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
 <20191007105708.raxavxk4n7bvxh7x@gilmour>
 <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
 <20191016080306.44pmo3rfmtnkgosq@gilmour>
 <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
 <20191017095225.ntx647ivegaldlyf@gilmour>
 <CAMty3ZAvqRLh16vFd-63h4+SzQkNydGfNKX_pByqFD-hZfncpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMty3ZAvqRLh16vFd-63h4+SzQkNydGfNKX_pByqFD-hZfncpQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_120318_114467_CA62B0DD 
X-CRM114-Status: GOOD (  30.88  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [109.190.253.11 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu, Oct 24, 2019 at 01:28:28PM +0530, Jagan Teki wrote:
> On Thu, Oct 17, 2019 at 3:22 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Wed, Oct 16, 2019 at 02:19:44PM +0530, Jagan Teki wrote:
> > > On Wed, Oct 16, 2019 at 1:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > >
> > > > On Mon, Oct 14, 2019 at 05:37:50PM +0530, Jagan Teki wrote:
> > > > > On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > > >
> > > > > > On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > > > > > > Add MIPI DSI pipeline for Allwinner A64.
> > > > > > >
> > > > > > > - dsi node, with A64 compatible since it doesn't support
> > > > > > >   DSI_SCLK gating unlike A33
> > > > > > > - dphy node, with A64 compatible with A33 fallback since
> > > > > > >   DPHY on A64 and A33 is similar
> > > > > > > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> > > > > > >
> > > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > > > > > ---
> > > > > > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> > > > > > >  1 file changed, 38 insertions(+)
> > > > > > >
> > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > index 69128a6dfc46..ad4170b8aee0 100644
> > > > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > @@ -382,6 +382,12 @@
> > > > > > >                                       #address-cells = <1>;
> > > > > > >                                       #size-cells = <0>;
> > > > > > >                                       reg = <1>;
> > > > > > > +
> > > > > > > +                                     tcon0_out_dsi: endpoint@1 {
> > > > > > > +                                             reg = <1>;
> > > > > > > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > > > > > > +                                             allwinner,tcon-channel = <1>;
> > > > > > > +                                     };
> > > > > > >                               };
> > > > > > >                       };
> > > > > > >               };
> > > > > > > @@ -1003,6 +1009,38 @@
> > > > > > >                       status = "disabled";
> > > > > > >               };
> > > > > > >
> > > > > > > +             dsi: dsi@1ca0000 {
> > > > > > > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > > > > > > +                     reg = <0x01ca0000 0x1000>;
> > > > > > > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > > > > > > +                     clock-names = "bus";
> > > > > >
> > > > > > This won't validate with the bindings you have either here, since it
> > > > > > still expects bus and mod.
> > > > > >
> > > > > > I guess in that cas, we can just drop clock-names, which will require
> > > > > > a bit of work on the driver side as well.
> > > > >
> > > > > Okay.
> > > > > mod clock is not required for a64, ie reason we have has_mod_clk quirk
> > > > > patch. Adjust the clock-names: on dt-bindings would make sense here,
> > > > > what do you think?
> > > >
> > > > I'm confused, what are you suggesting?
> > >
> > > Sorry for the confusion.
> > >
> > > The mod clock is not required for A64 and we have a patch for handling
> > > mod clock using has_mod_clk quirk(on the series), indeed the mod clock
> > > is available in A31 and not needed for A64. So, to satisfy this
> > > requirement the clock-names on dt-bindings can update to make mod
> > > clock-name is optional and bus clock is required.
> >
> > No, the bus clock name is not needed if there's only one clock.
>
> Okay, is it because the same clock handle it on PHY side?

No, because there's only one clock and thus you don't need to
differentiate them.

> >
> > > I'm not exactly sure, this is correct but trying to understand if it
> > > is possible or not? something like
> > >
> > >    clocks:
> > >       minItems: 1
> > >       maxItems: 2
> > >      items:
> > >        - description: Bus Clock
> > >        - description: Module Clock
> >
> > That's correct.
> >
> > >    clock-names:
> > >       minItems: 1
> > >       maxItems: 2
> > >      items:
> > >        - const: bus
> > >        - const: mod
> >
> > Here, just keep the current clock-names definition, and make it
> > required only for SoCs that are not the A64
>
> Okay, please have a look here I have pasted the diff for comments.
>
>    clocks:
> +    minItems: 2
>      items:
>        - description: Bus Clock
>        - description: Module Clock

Didn't you tell me that you didn't need the module clock?

How do you handle the case were you just have the bus clock then?

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
