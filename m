Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD707306D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vIXMlvPiZ7zfmEhiRWmefqzLOBh2VdAc/qCVk80HAQE=; b=fKBIa3gHh0NRSl9yORDZh86FA
	SFgAD5vYzcdaHz3N8aSV2ibF3gsOGNlqjfA7iL/UUL/VVY9rHmJVfnQZ3Btut+3wH5qY/IzFV8BDg
	VpgMm7dK/jxHAIFXqd0L4q8WKcuprlgIi0kD45e+I611hmr8PbnreXA9NrH9UCQhh5OrRkS8n74Qt
	ryuti6IMOr2SMKOkL00eNnLBxe8frsVgH2mkmZM0K7IukgoLhSRZoCkdZknWR1MynPfZ8SoAzMlhg
	Qc3vYe6p3xXsrozR43P82bE28++WtHhGykkZRU3UArrQBuHIBMyrCMOdCpmjxiU2EsEBhkM8Bn2fX
	G7g8fWd/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHnq-0005K1-7D; Wed, 24 Jul 2019 13:59:34 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHnH-0004xK-Se
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:59:02 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C4C96200004;
 Wed, 24 Jul 2019 13:58:46 +0000 (UTC)
Date: Wed, 24 Jul 2019 15:58:46 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190724135846.7mnuau4aih4zqm6a@flea>
References: <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
 <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
 <20190710114042.ybgavnxb4hgqrtor@flea>
 <CA+E=qVdFoT137pADfxz3uMwhOqjqrA9+6hBeOfbJxuH-M-3Pjw@mail.gmail.com>
 <20190712201543.krhsfjepd3cqndla@flea>
 <CA+E=qVeDpLqAM6Qsd6oHfeYHB_JHdSb5GtY7i994GT5_RW4_Bg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVeDpLqAM6Qsd6oHfeYHB_JHdSb5GtY7i994GT5_RW4_Bg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065900_257656_14D80B99 
X-CRM114-Status: GOOD (  32.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============2635115858786540365=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2635115858786540365==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ga3sbptupgkf2nsb"
Content-Disposition: inline


--ga3sbptupgkf2nsb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 15, 2019 at 05:28:53PM -0700, Vasily Khoruzhick wrote:
> On Fri, Jul 12, 2019 at 1:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Wed, Jul 10, 2019 at 03:11:04PM -0700, Vasily Khoruzhick wrote:
> > > On Wed, Jul 10, 2019 at 4:40 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > There's another issue: if we introduce edp-connector we'll have to
> > > > > > > specify power up delays somewhere (in dts? or in platform driver?), so
> > > > > > > edp-connector doesn't really solve the issue of multiple panels with
> > > > > > > same motherboard.
> > > > > >
> > > > > > And that's what that compatible is about :)
> > > > >
> > > > > Sorry, I fail to see how it would be different from using existing
> > > > > panels infrastructure and different panels compatibles. I think Rob's
> > > > > idea was to introduce generic edp-connector.
> > > >
> > > > Again, there's no such thing as a generic edp-connector. The spec
> > > > doesn't define anything related to the power sequence for example.
> > > >
> > > > > If we can't make it generic then let's use panel infrastructure.
> > > >
> > > > Which uses a device specific compatible. Really, I'm not sure what
> > > > your objection and / or argument is here.
> > > >
> > > > In addition, when that was brought up in the discussion, you rejected
> > > > it because it was inconvenient:
> > > > https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1#comment_535206
> > >
> > > It is inconvenient, but I don't understand how having board-specific
> > > connectors fixes it.
> >
> > How it would not fix it?
>
> I think I got your idea, but yet I think it's not the best solution.
>
> Do I understand correctly that you're proposing to introduce
> board-specific edp-connector driver that will be aware of worst case
> power up delays and will control backlight and power?
>
> Then why not to add another board-specific panel (e.g.
> "pine64,pinebook-panel") to simple-panel.c that does the same?

That would be fine for me too. Thierry was against it though IIRC, and
I don't recall why exactly.

> > You'll have one connector, without the need to describe each and every
> > panel in the device tree and rely on the EDID instead, and you'll have
> > the option to power up the regulator you need.
> >
> > I really don't understand what's the issue here, so let's take a step
> > back. What are is the issue , what are your requirements, and how
> > would you like that to be described ?
>
> We have a device (Pinebook) that uses the same board with multiple edp
> panels. So far there're pinebooks with 3 different panels: 11" with
> 768p panel, 11" with 1080p panel, 14" with 768p panel.
>
> Currently there's no way to describe all pinebooks with a single dts.
> There's a simple workaround though -- we can just specify a panel with
> worst power up delays in dts and it'll work since anx6345 driver
> ignores panel modes anyway and uses EDID.
>
> Originally I proposed to extend simple-panel driver to support generic
> edp-panel but it was rejected. I still believe that it's the best
> solution assuming we can specify delays in dts, since panels list is
> specific to particular device and it probably can't be reused, i.e.
> there's no good reason to move it into C code.
>
> Rob Herring proposed to introduce edp-connector. While I still believe
> that it's not accurate description of hardware since it'll have to
> have backlight node (backlight is actually panel property) I was OK
> with this approach assuming we can store delays in dts.
>
> Later it evolved into board-specific edp-connector.

I think you got that wrong. As far as I'm concerned, the plan was to
have two compatibles: the board-specific one, and the generic one.

Something like compatible = "pine64,pinebook-edp-connector",
"edp-connector"; or whatever.

> So far I don't understand why everyone is trying to avoid introducing
> edp-panel driver that can read delays from dts. Basically, I don't
> understand what's the magic behind simple-panel.c and why new panels
> should be added there rather than described in dts. [1] Doesn't
> explain that.

So others might have different viewpoints here as well, but the major
downside I see in putting those kind of values in the device tree is
that at some point, someone will get it wrong, and chances are that
even for the same panel, everyone will use a slightly different set of
timings.

And once it's wrong, then it's a mess to fix. You have to track down
every DT using it, make sure it's corrected, and then every user will
have to change their DT in their system. Whereas if you have just a
compatible and those timings in the kernel, then the only thing
required is a kernel update, which should be a pretty standard
operation.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ga3sbptupgkf2nsb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXThkFgAKCRDj7w1vZxhR
xdmDAP9yBWH/KYH8hNsfJpjtSxRuDZg1xa/Ai5yq/48P70rBqQEAxJBFYLdvAn8g
WJBWvY6ToqNpGVah2fBV3mDR/Au2/wc=
=7SCN
-----END PGP SIGNATURE-----

--ga3sbptupgkf2nsb--


--===============2635115858786540365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2635115858786540365==--

