Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5223900D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 13:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yCS1XOIGkNsNOSNZVMCTk7IZdPHrqlCZ+FKD0V0JVrg=; b=k+j3Z5T4zRZMe50dxE9ACfKGS
	Sf9M8XHGOdp783oed0zIXrQJBFu+LFXtd2twFBXnByKGhtFy3H2ChK7xWCEyUchQoz8n33ZUw8bol
	beujnONoJkHubWFywXhX8K6W5fGa/nPNA7luNmYA4xXtoqcVGYT/WdWKc+rDsDq89bhKcuu/HZZkv
	bYhSczsmJkjynkzBJvrNLKUaXS1GJ/hvOTJnZwfenIQlk759iNvqBDBOSPD2HTKqT5qVdel1ard5p
	6WuiKxQucLJPF7KBCmkWPZX9vSLYOiqs0XRDZJZgpsDovdMZMT9WT3ppFDiQ3g+9jhCcbjKPfvMEI
	7g5TSqGVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyaXf-0002k9-1e; Fri, 16 Aug 2019 11:37:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyaXN-0002jj-J3
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 11:36:55 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24F512086C;
 Fri, 16 Aug 2019 11:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565955412;
 bh=vD+403fDWzOTXm4yLYYxDJeR+/uVSDkz2gQBIlyh3ZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R2xQtr32cwnPPiwrIfF0oMWPZjytfUeznC+rX+bqO1P8KG1BPItqtTry+jZbSSxSY
 tgqwEkOzX8XzwqfBXJAnjUpw4KrCVcqdup3JuC15gjujHXdDo8guKxxhGt0x2ZNvKE
 U5VcqKrvwqcnI/VSBdOB0SAJVgF2WvbxAcqs0Gkk=
Date: Fri, 16 Aug 2019 13:36:50 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
Message-ID: <20190816113650.hstbi5ntstx3wh4a@flea>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <20190812094000.ebdmhyxx7xzbevef@flea> <20190814131741.GB24324@Red>
 <20190814133322.dawzv3ityakxtqs4@flea> <20190816093513.GA25042@Red>
MIME-Version: 1.0
In-Reply-To: <20190816093513.GA25042@Red>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_043653_676142_BFB96233 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============3938055419108739160=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3938055419108739160==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qzjcq6rd7xgmbg4h"
Content-Disposition: inline


--qzjcq6rd7xgmbg4h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 16, 2019 at 11:35:13AM +0200, Corentin Labbe wrote:
> On Wed, Aug 14, 2019 at 03:33:22PM +0200, Maxime Ripard wrote:
> > On Wed, Aug 14, 2019 at 03:17:41PM +0200, Corentin Labbe wrote:
> > > On Mon, Aug 12, 2019 at 11:40:00AM +0200, Maxime Ripard wrote:
> > > > On Thu, Aug 08, 2019 at 10:42:53AM +0200, Corentin Labbe wrote:
> > > > > This patch adds the evaluation variant of the model A of the PineH64.
> > > > > The model A has the same size of the pine64 and has a PCIE slot.
> > > > >
> > > > > The only devicetree difference with current pineH64, is the PHY
> > > > > regulator.
> > > > >
> > > > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
> > > > >  .../sun50i-h6-pine-h64-modelA-eval.dts        | 26 +++++++++++++++++++
> > > > >  2 files changed, 27 insertions(+)
> > > > >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> > > > > index f6db0611cb85..9a02166cbf72 100644
> > > > > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > > > > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > > > > @@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
> > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
> > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
> > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> > > > > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA-eval.dtb
> > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > new file mode 100644
> > > > > index 000000000000..d8ff02747efe
> > > > > --- /dev/null
> > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > @@ -0,0 +1,26 @@
> > > > > +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > > > > +/*
> > > > > + * Copyright (C) 2019 Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > > + */
> > > > > +
> > > > > +#include "sun50i-h6-pine-h64.dts"
> > > > > +
> > > > > +/ {
> > > > > +	model = "Pine H64 model A evaluation board";
> > > > > +	compatible = "pine64,pine-h64-modelA-eval", "allwinner,sun50i-h6";
> > > > > +
> > > > > +	reg_gmac_3v3: gmac-3v3 {
> > > > > +		compatible = "regulator-fixed";
> > > > > +		regulator-name = "vcc-gmac-3v3";
> > > > > +		regulator-min-microvolt = <3300000>;
> > > > > +		regulator-max-microvolt = <3300000>;
> > > > > +		startup-delay-us = <100000>;
> > > > > +		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
> > > > > +		enable-active-high;
> > > > > +	};
> > > > > +
> > > > > +};
> > > > > +
> > > > > +&emac {
> > > > > +	phy-supply = <&reg_gmac_3v3>;
> > > > > +};
> > > >
> > > > I might be missing some context here, but I'm pretty sure that the
> > > > initial intent of the pine h64 DTS was to support the model A all
> > > > along.
> > > >
> > >
> > > The regulator changed between modelA and B.
> > > See this old patchset (supporting modelA) https://patchwork.kernel.org/patch/10539149/ for example.
> >
> > I'm not sure what your point is, but mine is that everything about the
> > model A should be in sun50i-h6-pine-h64.dts.
> >
>
> model A and B are different enough for distinct dtb, (see sub-thread
> on HDMI difference for an other difference than PHY regulator)

I don't mind having separate DTBs for model A and model B.

> And clearly, the current dtb is for model B.

That DTS was added almost a year before the model B was announced, and
no commit to that file mention the model B, so it's definitely not
clear.

> So do you mean that we need to create a new dtb for model B ? (and
> hack the current back to model A ?)

I'd prefer not to hack anything, but yes

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qzjcq6rd7xgmbg4h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVaVUgAKCRDj7w1vZxhR
xQYxAP9kR+PnYnOwBKFxW4HwUV9pEEcT1+VA/ujbIaOvnwPfOwEAphQg1tuO5yP2
DI52+L4m40IPmBjnFMXOdMsrCVezBgk=
=R7nF
-----END PGP SIGNATURE-----

--qzjcq6rd7xgmbg4h--


--===============3938055419108739160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3938055419108739160==--

