Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CF69792F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOhldvyi5qfKmBg1OpbhDmxbnMov2fiGkzaSnn+Do8U=; b=pK+WFDLlZ2ZnoFGEmnZIV0O85
	mg6vgmE4o0yCp1P/rfcO7Mo/5bCNSgSjXsycQ4XjKDDT/TkAvcIpZbswl9DR7PqT9N8eD+PWD33sU
	nPng1ANRS0W6yWsv+ZcvmJhsWKnOCpPZx/1SkyLH5SNB2ExSQpVL+AeMvHsr30M/ni3LuhXhWHosH
	g9TpmuAU10aAKmP9pZTgPc0753JP/pgjsXv7snAB1rg5+AkhngQlarPtC5WbZ85qR1d2eAEkGdEpR
	BV9XB6sDyAadp2osEywRnHrZFJQJsQqJZp+8awKKq4YkMFlv/R+A3ymRY/XXTk7FDg2KOftl0ulIU
	4QaGkElFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Pfw-0007nT-LY; Wed, 21 Aug 2019 12:25:16 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PfV-0007n6-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:24:52 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C6283100009;
 Wed, 21 Aug 2019 12:24:36 +0000 (UTC)
Date: Wed, 21 Aug 2019 14:24:36 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 02/10] clk: sunxi-ng: Mark AR100 clocks as critical
Message-ID: <20190821122436.k3s7srhraphfnvgp@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-3-samuel@sholland.org>
 <20190820071142.2bgfsnt75xfeyusp@flea>
 <3b67534a-eb1b-c1e8-b5e8-e0a74ae85792@sholland.org>
MIME-Version: 1.0
In-Reply-To: <3b67534a-eb1b-c1e8-b5e8-e0a74ae85792@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_052450_389864_8A5C8F11 
X-CRM114-Status: GOOD (  33.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6584788364562364563=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6584788364562364563==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="snmlyl3zckhtzbxo"
Content-Disposition: inline


--snmlyl3zckhtzbxo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 20, 2019 at 08:02:55AM -0500, Samuel Holland wrote:
> On 8/20/19 2:11 AM, Maxime Ripard wrote:
> > On Mon, Aug 19, 2019 at 10:23:03PM -0500, Samuel Holland wrote:
> >> On sun8i, sun9i, and sun50i SoCs, system suspend/resume support requires
> >> firmware running on the AR100 coprocessor (the "SCP"). Such firmware can
> >> provide additional features, such as thermal monitoring and poweron/off
> >> support for boards without a PMIC.
> >>
> >> Since the AR100 may be running critical firmware, even if Linux does not
> >> know about it or directly interact with it (all requests may go through
> >> an intermediary interface such as PSCI), Linux must not turn off its
> >> clock.
>
> This paragraph here is the key. The firmware won't necessarily have a device
> tree node, and in the current design it will not, since Linux never communicates
> with it directly. All communication goes through ATF via PSCI.

Sorry, I'm a bit lost in all those ARM firmware interfaces.

I thought SCPI was supposed to be a separate interface that had
nothing to do with PSCI?

Anyway, my main concern is that I don't really want to make exceptions
to the clock handling for everyone's usecase, and this creates a
precedent (and not even a permanent one, since eventually the plan is
to have all the clock handling happening in the firmware, right?).

There's the protected-clocks property in the DT though that will
achieve the same goal. The code to deal with it is not generic at the
moment, but it could be made that way. Would patching the DT to
protect the clock you care about, when you care about protecting them,
be an option for you?

> >> At this time, such power management firmware only exists for the A64 and
> >> H5 SoCs.  However, it makes sense to take care of all CCU drivers now
> >> for consistency, and to ease the transition in the future once firmware
> >> is ported to the other SoCs.
> >>
> >> Leaving the clock running is safe even if no firmware is present, since
> >> the AR100 stays in reset by default. In most cases, the AR100 clock is
> >> kept enabled by Linux anyway, since it is the parent of all APB0 bus
> >> peripherals. This change only prevents Linux from turning off the AR100
> >> clock in the rare case that no peripherals are in use.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >
> > So I'm not really sure where you want to go with this.
> >
> > That clock is only useful where you're having a firmware running on
> > the AR100, and that firmware would have a device tree node of its own,
> > where we could list the clocks needed for the firmware to keep
> > running, if it ever runs. If the driver has not been compiled in /
> > loaded, then we don't care either.
>
> See above. I don't expect that the firmware would have a device tree node,
> because the firmware doesn't need any Linux drivers.
>
> > But more fundamentally, if we're going to use SCPI, then those clocks
> > will not be handled by that driver anyway, but by the firmware, right?
>
> In the future, we might use SCPI clocks/sensors/regulators/etc. from Linux, but
> that's not the plan at the moment. Given that it's already been two years since
> I started this project, I'm trying to limit its scope so I can get at least some
> part merged. The first step is to integrate a firmware that provides
> suspend/resume functionality only. That firmware does implement SCPI, and if the
> top-level Linux SCPI driver worked with multiple mailbox channels, it could
> query the firmware's version and fetures. But all of the SCPI commands used for
> suspend/resume must go through ATF via PSCI.

I didn't know that you could / should do that with PSCI / SCPI.

> > So I'm not really sure that we should do it statically this way, and
> > that we should do it at all.
>
> Do you have a better way to model "firmware uses this clock behind the scenes,
> so Linux please don't touch it"? It's unfortunate that we have Linux and
> firmware fighting over the R_CCU, but since we didn't have firmware (e.g. SCPI
> clocks) in the beginning, it's where we are today.
>
> The AR100 clock doesn't actually have a gate, and it generally has dependencies
> like R_INTC in use. So as I mentioned in the commit message, the clock will
> normally be on anyway. The goal was to model the fact that there are users of
> this clock that Linux doesn't/can't know about.

Like I said, if that's an option, I'd prefer to have protected-clocks
work for everyone / for sunxi.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--snmlyl3zckhtzbxo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV04BAAKCRDj7w1vZxhR
xS0LAQDZ8OikHErqcPJLseJu5A6h3Khvp5dBxyNeyrFMp0lL8wEArJwL9KB6PPko
ri9L7Fwdaj4FYWJQt1qILg/laEndlg0=
=irmF
-----END PGP SIGNATURE-----

--snmlyl3zckhtzbxo--


--===============6584788364562364563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6584788364562364563==--

