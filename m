Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4374E961C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pIC9UenNzsk/0ffz1IJ5jcQ9zpreFT8znuAjs79GrQQ=; b=h8vVW4h0jfq+YRfkPCSe6oH+u
	8O+SbShFZTrr1AUEsCUrm7vXIeVrnUnyv7ZJhJnkOvCycEr9cibsF/vv2W5LSjekmoDWm988NrI3o
	qXwRGz56JnJ2WnjJ2PO1i7XVWE6L9MTP1GPds3u560vr5b7rRmUwb+GJOnBfJReC5ohXS0XMEPgQR
	UDV/5m2lVcINrI5/UVVy4f1vz2ph2pw5hi+YDQ6PPrkaZyI/M1yiee6uR80WNvNXD/GpDesbN7wvF
	HpsLHSaEQ4ZiAMWo2y0IIQqurFgnkE7sq4IugWxoPkhTpT4F3tx/2XoWNYgY8UFZA5JU3tOHz+Lfy
	tKVgiG4Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04ey-0003R9-Ie; Tue, 20 Aug 2019 13:58:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04eg-0003Qm-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:58:36 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E57822CF7;
 Tue, 20 Aug 2019 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566309513;
 bh=pMvIz+mq6VWpne36UBpOsUaqU/dm/wPGQJ9oTJGXrvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kuf5Os7msq5KuRaNHndumFwEM3gT2H3v3hnaBCW8oWAhOHF9glFEgLVilkCRmLhpy
 GMX37tmiMXQCNAjnMv/Ot8jrvZqDuykotUUA8HNbHdhH0N1duoHS4X19Y64ZAf5kbb
 5BZP3K/gQ1cKpY+abqeVJDvug8mfyothe1J3XlwQ=
Date: Tue, 20 Aug 2019 15:58:31 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
Message-ID: <20190820135831.hrvrgqhrvynntkbl@flea>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <20190812094000.ebdmhyxx7xzbevef@flea> <20190814131741.GB24324@Red>
 <20190814133322.dawzv3ityakxtqs4@flea> <20190816093513.GA25042@Red>
 <20190816113650.hstbi5ntstx3wh4a@flea> <20190816115750.GA24545@Red>
 <20190816135206.pnf3iperzyhcbg4h@flea> <20190816140016.GA30445@Red>
MIME-Version: 1.0
In-Reply-To: <20190816140016.GA30445@Red>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_065834_673339_716C5E89 
X-CRM114-Status: GOOD (  34.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8569337670216700470=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8569337670216700470==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iybud4mep663ygu6"
Content-Disposition: inline


--iybud4mep663ygu6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 16, 2019 at 04:00:16PM +0200, Corentin Labbe wrote:
> On Fri, Aug 16, 2019 at 03:52:06PM +0200, Maxime Ripard wrote:
> > On Fri, Aug 16, 2019 at 01:57:50PM +0200, Corentin Labbe wrote:
> > > On Fri, Aug 16, 2019 at 01:36:50PM +0200, Maxime Ripard wrote:
> > > > On Fri, Aug 16, 2019 at 11:35:13AM +0200, Corentin Labbe wrote:
> > > > > On Wed, Aug 14, 2019 at 03:33:22PM +0200, Maxime Ripard wrote:
> > > > > > On Wed, Aug 14, 2019 at 03:17:41PM +0200, Corentin Labbe wrote:
> > > > > > > On Mon, Aug 12, 2019 at 11:40:00AM +0200, Maxime Ripard wrote:
> > > > > > > > On Thu, Aug 08, 2019 at 10:42:53AM +0200, Corentin Labbe wrote:
> > > > > > > > > This patch adds the evaluation variant of the model A of the PineH64.
> > > > > > > > > The model A has the same size of the pine64 and has a PCIE slot.
> > > > > > > > >
> > > > > > > > > The only devicetree difference with current pineH64, is the PHY
> > > > > > > > > regulator.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > > > > > > ---
> > > > > > > > >  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
> > > > > > > > >  .../sun50i-h6-pine-h64-modelA-eval.dts        | 26 +++++++++++++++++++
> > > > > > > > >  2 files changed, 27 insertions(+)
> > > > > > > > >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > > > > >
> > > > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> > > > > > > > > index f6db0611cb85..9a02166cbf72 100644
> > > > > > > > > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > > > > > > > > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > > > > > > > > @@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
> > > > > > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
> > > > > > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
> > > > > > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> > > > > > > > > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA-eval.dtb
> > > > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > > > > > new file mode 100644
> > > > > > > > > index 000000000000..d8ff02747efe
> > > > > > > > > --- /dev/null
> > > > > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > > > > > @@ -0,0 +1,26 @@
> > > > > > > > > +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > > > > > > > > +/*
> > > > > > > > > + * Copyright (C) 2019 Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > > > > > > + */
> > > > > > > > > +
> > > > > > > > > +#include "sun50i-h6-pine-h64.dts"
> > > > > > > > > +
> > > > > > > > > +/ {
> > > > > > > > > +	model = "Pine H64 model A evaluation board";
> > > > > > > > > +	compatible = "pine64,pine-h64-modelA-eval", "allwinner,sun50i-h6";
> > > > > > > > > +
> > > > > > > > > +	reg_gmac_3v3: gmac-3v3 {
> > > > > > > > > +		compatible = "regulator-fixed";
> > > > > > > > > +		regulator-name = "vcc-gmac-3v3";
> > > > > > > > > +		regulator-min-microvolt = <3300000>;
> > > > > > > > > +		regulator-max-microvolt = <3300000>;
> > > > > > > > > +		startup-delay-us = <100000>;
> > > > > > > > > +		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
> > > > > > > > > +		enable-active-high;
> > > > > > > > > +	};
> > > > > > > > > +
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > +&emac {
> > > > > > > > > +	phy-supply = <&reg_gmac_3v3>;
> > > > > > > > > +};
> > > > > > > >
> > > > > > > > I might be missing some context here, but I'm pretty sure that the
> > > > > > > > initial intent of the pine h64 DTS was to support the model A all
> > > > > > > > along.
> > > > > > > >
> > > > > > >
> > > > > > > The regulator changed between modelA and B.
> > > > > > > See this old patchset (supporting modelA) https://patchwork.kernel.org/patch/10539149/ for example.
> > > > > >
> > > > > > I'm not sure what your point is, but mine is that everything about the
> > > > > > model A should be in sun50i-h6-pine-h64.dts.
> > > > > >
> > > > >
> > > > > model A and B are different enough for distinct dtb, (see sub-thread
> > > > > on HDMI difference for an other difference than PHY regulator)
> > > >
> > > > I don't mind having separate DTBs for model A and model B.
> > > >
> > > > > And clearly, the current dtb is for model B.
> > > >
> > > > That DTS was added almost a year before the model B was announced, and
> > > > no commit to that file mention the model B, so it's definitely not
> > > > clear.
> > >
> > > Normal it was added for model A (without any ethernet/HDMI support,
> > > so nothing distinct from model B), and the modelB ethernet/HDMI
> > > support cames after.
> >
> > Changing the board a DT is meant to halfway through the development is
> > definitely not ok.
> >
> > > > > So do you mean that we need to create a new dtb for model B ? (and
> > > > > hack the current back to model A ?)
> > > >
> > > > I'd prefer not to hack anything, but yes
> > > >
> > >
> > > Since model A is not public (only evaluations boards exists), the
> > > probability of a production model A is low and the current dtb is
> > > perfect for model B , could you reconsider this ?
> >
> > I mean, you could buy it, so it's definitely public.
>
> Where ? official pineh64 site speaks only of modelB.

It's not available anymore, but it used to be.

> >
> > Model A also had HDMI, and it doesn't look like there's anything
> > particularly specific with that board.
>
> A subthread just say the opposite, modelA need something more for HDMI
> https://lkml.org/lkml/2019/8/12/394

Right, but that's not in the DT at the moment.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--iybud4mep663ygu6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVv8hwAKCRDj7w1vZxhR
xUQVAQDpjE6pfwfq1hm5qCOte+Z0VwXncT+kH4FI/s3xOZN0sgD9HEAnSZc8ze3K
abYpHqQPigZzROvWYaABjpSQ+WUcqgE=
=qMN/
-----END PGP SIGNATURE-----

--iybud4mep663ygu6--


--===============8569337670216700470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8569337670216700470==--

