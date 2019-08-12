Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B393589A99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cz24F/my4yiXRVOCSM/XI0l2M3KqhUoK3mnoj4uCJiU=; b=Jiu5ZSSONO+a0Z4JHCQ886h3T
	4hgNCQG8GW/D4SCgHDYKP37CArMUwSbFFzEiixTvnK4t95s0dldC/7pMbFhzFbB/uFs0Nju1uqnsO
	vTEtPUUrx05myJjyOacgnJnwdb5X7nXMlMszEYs+SN5j+ButpXMjYpeAUO5n4Vrxca137zwWalwZL
	3BTRGDn5AKn6n2Lq1B/BphTjVoyf7FCnMlh5M+5JDk76nXGnU6hwtXBKqpw6yDGiycfBAeCoKixar
	/cSqnjmUiZ7i7EHw9i6hHhNn4qXGXOa0zm0DHXOJC9almanDXAcMernoE9RUgaBpvabd3vZPQa9/6
	W4RdBwvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx74X-0000u3-Vg; Mon, 12 Aug 2019 09:57:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx74N-0000tj-7h
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:56:52 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 566DF20684;
 Mon, 12 Aug 2019 09:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565603810;
 bh=A/SJfvATSN4T2NeYtNmguvU9gqhiJKXOJJn0Qjv6oQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iItkMi36gaqy4MhKshF+dGQNN0Zz+ZyUELM2LtQSLosN6wpAzb1ebD/H5Hg0gejle
 WCA8vVQE/s/0A7QtiRWiXQPCaZPw4VjwAzC0VvlmAmQQbe++cXcoFzouq2/vmwKqKS
 X2ZQ9kpI83x/JoKAafPqQWYYJ6SS/otgQMBRG5CU=
Date: Mon, 12 Aug 2019 11:56:48 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190812095648.wuefcr2mep3dpkth@flea>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <173825848.1FZsmuHfpq@jernej-laptop>
 <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
 <2452836.v7ux4bnEjb@jernej-laptop>
 <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
 <20190730170601.a7ei43wku6jsjanu@flea>
 <20190731065230.mqbtn5sfoxrkevw5@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190731065230.mqbtn5sfoxrkevw5@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_025651_325988_857B1FAB 
X-CRM114-Status: GOOD (  41.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1313817414640285454=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1313817414640285454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y6c37fu3l6pxfrzu"
Content-Disposition: inline


--y6c37fu3l6pxfrzu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 08:52:30AM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, Jul 30, 2019 at 07:06:01PM +0200, Maxime Ripard wrote:
> > On Tue, Jul 30, 2019 at 10:09:00AM +0200, Uwe Kleine-K=F6nig wrote:
> > > Hello Rob and Frank,
> > >
> > > Maxime and Jernej on one side and me on the other cannot agree about a
> > > detail in the change to the bindings here. I'm trying to objectively
> > > summarize the situation for you to help deciding what is the right th=
ing
> > > to do here.
> > >
> > > TLDR: The sun4i pwm driver is extended to support a new variant of th=
at
> > > device on the H6 SoC. Compared to the earlier supported variants
> > > allwinner,sun50i-h6-pwm on H6 needs to handle a reset controller and =
an
> > > additional clock.
> > >
> > > The two positions are:
> > >
> > >  - We need a new compatible because only then the driver and/or the dt
> > >    schema checker can check that each "allwinner,sun50i-h6-pwm" device
> > >    has a reset property and a "bus" clock; and the earlier variants
> > >    don't.
> >
> > There is two topics here, really. The binding itself really must have
> > those properties as required.
> >
> > You had an analogy before that we shouldn't really do that, since it
> > would be verification and that it would be similar to checking whether
> > the register range was right. This analogy isn't correct, a better one
> > would be checking that the register range exists in the first place.
>
> The relevant difference is that *all* devices supported by the driver
> have to have a register range. Compared to that only a subset of the
> devices have to have a bus clock.

That's true, but it still have nothing to do with validating its
presence vs its content. We never even mentionned the latter.

> > Indeed, if you don't have a register range, you have no register to
> > write to, and that's a showstopper for any driver. I'm pretty sure we
> > all agree on that. But on those SoCs, like Chen-Yu said, having no
> > resets or clocks properties result in an equally bad result: either
> > any write to that device is completely ignored (missing reset), or the
> > system completely (and silently) locks up (missing bus clock).
> >
> > We *have* to catch that somehow and not let anything like that happen.
>
> IIUC both the clock and the reset stuff is SoC specific, so it's the
> same for all machines with the H6, right?

Indeed

> So assuming this is correctly contained in the h6.dtsi, in which
> cases can this go wrong? I only see the cases that the dts author
> includes the wrong dtsi or overrides stuff.

The bootloader passed by the bootloader is not meant for Linux but for
another OS, the bootloader loaded a DT not meant for mainline but some
BSP that happen to have the same compatible, the user has applied a
work in progress patch to its DT, and then updates the kernel, the
user applied a poorly written overlay, etc...

We really shouldn't support those cases in the first place, but a
silent lockup of the system is the worst way to treat those errors.

> In the first case a non-working PWM is probably one of the smaller
> problems and the second is something we're not really able to catch.
>
> But even if each machine's dts author has to get this right, I don't
> think the dts schema is the right place to assert this.

We shouldn't assert this *only* in the schema, but if it's cheap and
it can catch some mistakes, then why not?

Worst case scenario, the DTSI will be correct all the time, and it
will never generate any error. Just like 90% of all the constraints in
the schemas.

> > That being said, we can't really validate that the clock pointed is
> > the right one, just like we can't really check that the register range
> > is the proper one. Or rather, we could, but it's completely
> > impractical and we do agree on that as well.
> >
> > Having the bus clock and reset line being required however is only a
> > few lines in the binding though, and is very practical.
> >
> > >  - The driver can be simpler and the device specific knowledge is only
> > >    in a single place (the dt) if the device tree is considered valid =
and
> > >    a reset property and "bus" clock is used iff it's provided in the
> > >    device tree without additional comparison for the compatible.
> >
> > And now we have the discussion on how it's implemented in a
> > driver. Since it's pretty cheap to implement (only a couple of lines:
> > two for the if block, one for the additional field in the structure,
> > one for each SoC using that) and have huge benefits (not silently
> > locking up the system at boot), then I'd say we should go for it.
>
> Right, it's only a few lines. Still it (IMHO needlessly) complicates the
> driver. From the driver's POV the device tree defines the
> characteristics of the device and if the dts defines an h6-pwm without a
> bus clock then maybe this is the PWM on the next generation SoC that
> doesn't need it. And maybe you're happy in a few year's time when you
> don't have to touch the driver again for this next generation SoC
> because the driver is not only simpler but also flexible enough to
> handle the new PWM without adaptions.

You've been doing SoC support for a while, how many times did this
truly happen to you, whithout a single change to the driver?

> All in all I don't care much about the dt schema stuff, I want to keep
> the driver simple. So if we agree that the schema ensures that the h6
> pwms have a reset and a bus clock and we just use reset_get_optional and
> clk_get_optional that's a compromise I can agree to.

Fine, let's do that then

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--y6c37fu3l6pxfrzu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVE34AAKCRDj7w1vZxhR
xfjsAQCi9p+sgp4RxEbNUMzq8rb2Y4T0OeR6wlO/kDxLFLmeSwEAymvqet93MIGN
uZGgT9hgrlKJk45BOiroEe9Jc98oBgA=
=VVaB
-----END PGP SIGNATURE-----

--y6c37fu3l6pxfrzu--


--===============1313817414640285454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1313817414640285454==--

