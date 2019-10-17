Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5196BDA94A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NMwF+CMsMf0ej//JAhHKVF7AetJMaAx+Q3bqF2+E0lQ=; b=gomVrHUtSdw4s5LzcoqayZGvH
	PorTEb0zqeOyAHc3GmO4hYZnFd8lIGEA7CYCu/GwW1UsKedNZ+rih5gR4LB0CS/K3Bb5e3cJA/SUf
	PgxfYxJqwB8Y+w0nV0bWvhgFHXzNI5+DOZvfgl0yBXzQaDYB0Czm0FuK5eCMPCWztwqDyGbxW4RLG
	JWDqOdMsQykk6KoujWq8hxW0hxu8xo8QnoqWO3ZkqeBnfmtlDQQ9sUgSqbwGpYHATdabLFS+2o/6o
	3xhCbyALwSBckgJY10EP3mO0kzl2NLlbS0nrylCUT39i6B4SnoVBXbuBYAwiEZacDbLrZyOJPoeSk
	xoEj1+woQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2SZ-0000c7-C3; Thu, 17 Oct 2019 09:52:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2SK-0000ba-Kw
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:52:30 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B95B62089C;
 Thu, 17 Oct 2019 09:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571305948;
 bh=heLEKgwZ+8tjeXiZgv0CPgKfpmZiF5bmE7FHzvgHG+I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V+YmYI1z9eZrzwEKTLFUr4EVSMVwK9S3XiuOS6OyFaaq+ox6zAiNOaHGNcYHm9sEo
 SylGURPaZBepmZVpjBV+KovC6jML6u+iyobMfY9FjT+yOtJc8+7QGJhbK5lE2hk0yb
 +MHx+XDdULSnmYjPTqOAXJLSD3MyflKJ/JGrKKNw=
Date: Thu, 17 Oct 2019 11:52:25 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Message-ID: <20191017095225.ntx647ivegaldlyf@gilmour>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com>
 <20191007105708.raxavxk4n7bvxh7x@gilmour>
 <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
 <20191016080306.44pmo3rfmtnkgosq@gilmour>
 <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_025228_730426_9EA22E76 
X-CRM114-Status: GOOD (  28.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============4406484730232625230=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4406484730232625230==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qmuvblcb44ik4jdi"
Content-Disposition: inline


--qmuvblcb44ik4jdi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 16, 2019 at 02:19:44PM +0530, Jagan Teki wrote:
> On Wed, Oct 16, 2019 at 1:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Mon, Oct 14, 2019 at 05:37:50PM +0530, Jagan Teki wrote:
> > > On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > >
> > > > On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > > > > Add MIPI DSI pipeline for Allwinner A64.
> > > > >
> > > > > - dsi node, with A64 compatible since it doesn't support
> > > > >   DSI_SCLK gating unlike A33
> > > > > - dphy node, with A64 compatible with A33 fallback since
> > > > >   DPHY on A64 and A33 is similar
> > > > > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> > > > >
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > > > ---
> > > > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> > > > >  1 file changed, 38 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > index 69128a6dfc46..ad4170b8aee0 100644
> > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > @@ -382,6 +382,12 @@
> > > > >                                       #address-cells = <1>;
> > > > >                                       #size-cells = <0>;
> > > > >                                       reg = <1>;
> > > > > +
> > > > > +                                     tcon0_out_dsi: endpoint@1 {
> > > > > +                                             reg = <1>;
> > > > > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > > > > +                                             allwinner,tcon-channel = <1>;
> > > > > +                                     };
> > > > >                               };
> > > > >                       };
> > > > >               };
> > > > > @@ -1003,6 +1009,38 @@
> > > > >                       status = "disabled";
> > > > >               };
> > > > >
> > > > > +             dsi: dsi@1ca0000 {
> > > > > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > > > > +                     reg = <0x01ca0000 0x1000>;
> > > > > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > > > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > > > > +                     clock-names = "bus";
> > > >
> > > > This won't validate with the bindings you have either here, since it
> > > > still expects bus and mod.
> > > >
> > > > I guess in that cas, we can just drop clock-names, which will require
> > > > a bit of work on the driver side as well.
> > >
> > > Okay.
> > > mod clock is not required for a64, ie reason we have has_mod_clk quirk
> > > patch. Adjust the clock-names: on dt-bindings would make sense here,
> > > what do you think?
> >
> > I'm confused, what are you suggesting?
>
> Sorry for the confusion.
>
> The mod clock is not required for A64 and we have a patch for handling
> mod clock using has_mod_clk quirk(on the series), indeed the mod clock
> is available in A31 and not needed for A64. So, to satisfy this
> requirement the clock-names on dt-bindings can update to make mod
> clock-name is optional and bus clock is required.

No, the bus clock name is not needed if there's only one clock.

> I'm not exactly sure, this is correct but trying to understand if it
> is possible or not? something like
>
>    clocks:
>       minItems: 1
>       maxItems: 2
>      items:
>        - description: Bus Clock
>        - description: Module Clock

That's correct.

>    clock-names:
>       minItems: 1
>       maxItems: 2
>      items:
>        - const: bus
>        - const: mod

Here, just keep the current clock-names definition, and make it
required only for SoCs that are not the A64

Maxime

--qmuvblcb44ik4jdi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXag52QAKCRDj7w1vZxhR
xb61APwI3pT187DnoWidQOdHcwSDhwtfnY5i43XaAc7tdaAkdQEAp+g/w4/dneO3
Vt2IfHqycYDGHUPJU8g6q4R6umrzPA0=
=ObSz
-----END PGP SIGNATURE-----

--qmuvblcb44ik4jdi--


--===============4406484730232625230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4406484730232625230==--

