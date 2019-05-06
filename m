Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5095914AF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 15:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/R0dWm6qZdP0YTUwO5xB1DGSVfEIWooEWTTPwXozQ0=; b=ghWN3iWaq4lsKZ
	xK96NpPv2owRAimlBpH01P4V96CEIVI6nbgEZVqX+huNh+IFEzwZZ3R9qmRNhjkFGTWYadSQH9cJx
	RyIqFa3DptRzEMf/hdC4bQCsD8T+u8Th8+USU9ESV/jsefsTrRkaHWLohScUlxyCiZMmX9xuuRPff
	yy7BEZvMN7PQZoTDBQuhpu+Dj7rSeFJEPbx8tIHSYeEfaLtHko8TFJqCvYj/42i4adMKrZPRa70G7
	RsV9m4xnZSWSAqcKgv98wVLK3AEesxIsfF/IyG//+K22Ec8hWngrBm6ilW6JoR31ewK7jVtC43n7J
	jrg0VPRk67wTpyb/+dpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdi9-0006Ny-Sm; Mon, 06 May 2019 13:31:17 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdi0-0006M1-V5
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 13:31:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1557149462; bh=5NaP41T2tboqejgP6JhPceVbZhbz7QlauYREMH66sUE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rffGOnol+UCVtuc4lDzDpU7ZELd4yFrvN3P6lLYRyUkMf2wJhR1AX8b8lMAji2h0n
 2hcL/yQD/1SZ52jNLuAZBeuMne37sNSo4TNFrHQfo/McQbm19+xPw/4MvcC02mOFbD
 hwZXO1KICQaLB/t3qCIZHRwM9Q6pRPorlo98oDeI=
Date: Mon, 6 May 2019 15:31:01 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: allwinner: h6:
 orangepi-one-plus: Add Ethernet support
Message-ID: <20190506133101.c3twwwydy5mez3db@core.my.home>
Mail-Followup-To: Jagan Teki <jagan@amarulasolutions.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20190503115928.27662-1-jagan@amarulasolutions.com>
 <20190503144651.ttqfha656dykqjzo@flea>
 <CAMty3ZCQTiX5OvCG_uMRS02vFu0c1-bkcyauLD6oaFcd=y3RNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMty3ZCQTiX5OvCG_uMRS02vFu0c1-bkcyauLD6oaFcd=y3RNA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_063109_342497_8B400537 
X-CRM114-Status: GOOD (  29.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 03:03:15PM +0530, Jagan Teki wrote:
> On Fri, May 3, 2019 at 8:16 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, May 03, 2019 at 05:29:28PM +0530, Jagan Teki wrote:
> > > Add Ethernet support for orangepi-one-plus board,
> > >
> > > - Ethernet port connected via RTL8211E PHY
> > > - PHY suppiled with
> > >   GMAC-2V5, fixed regulator with GMAC_EN pin via PD6
> > >   GMAC-3V, which is supplied by VCC3V3-MAC via aldo2
> > > - RGMII-RESET pin connected via PD14
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > Your commit log should be improved. We can get those informations from
> > the patch itself...
> 
> Thought it was a clear commit log :)  will update anyway.
> 
> >
> > > ---
> > > Changes for v2:
> > > - emac changes on top of https://patchwork.kernel.org/cover/10899529/
> > >   series
> > >
> > >  .../allwinner/sun50i-h6-orangepi-one-plus.dts |  8 ++++
> > >  .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 42 +++++++++++++++++++
> > >  2 files changed, 50 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > index 12e17567ab56..9e8ed1053715 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > @@ -9,4 +9,12 @@
> > >  / {
> > >       model = "OrangePi One Plus";
> > >       compatible = "xunlong,orangepi-one-plus", "allwinner,sun50i-h6";
> > > +
> > > +     aliases {
> > > +             ethernet0 = &emac;
> > > +     };
> > > +};
> > > +
> > > +&emac {
> > > +     status = "okay";
> > >  };
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > > index 62e27948a3fa..c48e24acaf8a 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > > @@ -45,6 +45,48 @@
> > >               regulator-max-microvolt = <5000000>;
> > >               regulator-always-on;
> > >       };
> > > +
> > > +     /*
> > > +      * The board uses 2.5V RGMII signalling. Power sequence to enable
> > > +      * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power rails
> > > +      * at the same time and to wait 100ms.
> > > +      */
> > > +     reg_gmac_2v5: gmac-2v5 {
> > > +             compatible = "regulator-fixed";
> > > +             regulator-name = "gmac-2v5";
> > > +             regulator-min-microvolt = <2500000>;
> > > +             regulator-max-microvolt = <2500000>;
> > > +             startup-delay-us = <100000>;
> > > +             enable-active-high;
> > > +             gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* GMAC_EN: PD6 */
> > > +
> > > +             /* The real parent of gmac-2v5 is reg_vcc5v, but we need to
> > > +              * enable two regulators to power the phy. This is one way
> > > +              * to achieve that.
> > > +              */
> > > +             vin-supply = <&reg_aldo2>; /* VCC3V3-MAC: GMAC-3V */
> > > +     };
> > > +};
> > > +
> > > +&emac {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&ext_rgmii_pins>;
> > > +     phy-mode = "rgmii";
> > > +     phy-handle = <&ext_rgmii_phy>;
> > > +     phy-supply = <&reg_gmac_2v5>;
> > > +     allwinner,rx-delay-ps = <1500>;
> > > +     allwinner,tx-delay-ps = <700>;
> > > +};
> > > +
> > > +&mdio {
> > > +     ext_rgmii_phy: ethernet-phy@1 {
> > > +             compatible = "ethernet-phy-ieee802.3-c22";
> > > +             reg = <1>;
> > > +
> > > +             reset-gpios = <&pio 3 14 GPIO_ACTIVE_LOW>; /* RGMII-RESET: PD14 */
> > > +             reset-assert-us = <15000>;
> > > +             reset-deassert-us = <40000>;
> > > +     };
> > >  };
> >
> > ... however, at no point in time you explain why you made that switch,
> > and while most of the definition of the EMAC nodes is in the DTSI, you
> > only enable it in one DTS.
> 
> The dtsi is shared b/w 1+ and lite2 and 1+ has emac, so I enabled the
> status directly on dts and keeping the relevant nodes on dtsi just
> like SoC dtsi does. do I need to mention this in commit log?

Lite 2 doesn't have reg_gmac_2v5 and it also doesn't have the external phy.
But with this patch, reg_gmac_2v5 will also show up in the Lite 2's final
DTB.

Comapred to SoC dtsi, the SoC always has things that are in the dtsi, they
are just not enabled/used by the board, but they are present on the chip.

So this comes down to what the meaning of board-level dtsi should be. I
doubt we want it to mean "a collection of stuff that may or may not be
present on the boards that depend on it".

regards,
	o.

> -- 
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
