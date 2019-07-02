Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444FF5CB90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=45M5IzW80B6zPRTWKqVSVnhPqZyhCYHyI1S85wn8Crg=; b=dHDD866N+JOBJ0qQFj693pbB4
	viYS6Ep/AjtA4tZrxvP7vKH2nAMWdrkSzsDKumNGVysIK0c//PZb/8+gE9UmjZr5QZUcAbIXUOykI
	I/6Vp0acZeVqPsdpnpD++zfz/OselFZDALkbns51nsnfUuEOrVw6PZLup8QG7GV2FDRrglVTLITQQ
	22Dh0hRKMMlS33rO/A131PvtrMrqC/xUljzMWDrjW45FiyHDrDD7LiiWm7YMTZFeKLpadIHv5N6ji
	ojKKL1Hzxu9uHzd7SBaW9+pADboPom1u4dMQISWdragnbaM+/vFNyTNuKLeNmH8mF4nKqX8sQ1jp0
	pTR6wDpYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDvk-0002SA-LP; Tue, 02 Jul 2019 08:14:24 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDvX-0002QQ-VA
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:14:14 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 29E16FF807;
 Tue,  2 Jul 2019 08:13:47 +0000 (UTC)
Date: Tue, 2 Jul 2019 10:13:46 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190702081346.4hlb53qcajhz4ckl@flea>
References: <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <64471471-5b4d-3c1f-a0e3-e02ee78ca23c@samsung.com>
MIME-Version: 1.0
In-Reply-To: <64471471-5b4d-3c1f-a0e3-e02ee78ca23c@samsung.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_011412_320787_FACC4A43 
X-CRM114-Status: GOOD (  30.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============5448406954130883482=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5448406954130883482==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ysvumhfqulaacx3l"
Content-Disposition: inline


--ysvumhfqulaacx3l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 01, 2019 at 02:27:51PM +0200, Andrzej Hajda wrote:
> On 01.07.2019 11:58, Maxime Ripard wrote:
> > On Fri, Jun 28, 2019 at 12:39:32PM +0200, Andrzej Hajda wrote:
> >> On 12.06.2019 17:20, Maxime Ripard wrote:
> >>>> I am not sure if I understand whole discussion here, but I also do not
> >>>> understand whole edp-connector thing.
> >>> The context is this one:
> >>> https://patchwork.freedesktop.org/patch/257352/?series=51182&rev=1
> >>> https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1
> >>> https://patchwork.freedesktop.org/patch/286468/?series=56776&rev=2
> >>>
> >>> TL;DR: This bridge is being used on ARM laptops that can come with
> >>> different eDP panels. Some of these panels require a regulator to be
> >>> enabled for the panel to work, and this is obviously something that
> >>> should be in the DT.
> >>>
> >>> However, we can't really describe the panel itself, since the vendor
> >>> uses several of them and just relies on the eDP bus to do its job at
> >>> retrieving the EDIDs. A generic panel isn't really working either
> >>> since that would mean having a generic behaviour for all the panels
> >>> connected to that bus, which isn't there either.
> >>>
> >>> The connector allows to expose this nicely.
> >> As VESA presentation says[1] eDP is based on DP but is much more
> >> flexible, it is up to integrator (!!!) how the connection, power
> >> up/down, initialization sequence should be performed. Trying to cover
> >> every such case in edp-connector seems to me similar to panel-simple
> >> attempt failure. Moreover there is no such thing as physical standard
> >> eDP connector. Till now I though DT connector should describe physical
> >> connector on the device, now I am lost, are there some DT bindings
> >> guidelines about definition of a connector?
> > This might be semantics but I guess we're in some kind of grey area?
> >
> > Like, for eDP, if it's soldered I guess we could say that there's no
> > connector. But what happens if for some other board, that signal is
> > routed through a ribbon?
> >
> > You could argue that there's no physical connector in both cases, or
> > that there's one in both, or one for the ribbon and no connector for
> > the one soldered in.
>
> This is not about ribbon vs soldering. It is about usage: this
> connection is static across the whole life of the device (except
> exceptional things: repair, non-standard usage, etc).

It doesn't have to be.

> And "the real connector" is (at least for me) something where
> end-user can connect/disconnect different things: USB, HDMI,
> ethernet, etc. And obviously to be functional it should be somehow
> standardized. So even if there could be some grey area, I do not see
> it here.

Well, if there's a ribbon connector, then you have a physical
connector, with the end user being able to connect / disconnect
various displays. It might not be the case with actual products, but
it's pretty common with SBCs to have that signal routed through a
connector, and the user has several options to connect a display to
it.

The line really is blurred.

> >> Maybe instead of edp-connector one would introduce integrator's specific
> >> connector, for example with compatible "olimex,teres-edp-connector"
> >> which should follow edp abstract connector rules? This will be at least
> >> consistent with below presentation[1] - eDP requirements depends on
> >> integrator. Then if olimex has standard way of dealing with panels
> >> present in olimex/teres platforms the driver would then create
> >> drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
> >> Anyway it still looks fishy for me :), maybe because I am not
> >> familiarized with details of these platforms.
>
> > That makes sense yes
>
> And what if some panel can be used with this pseudo-connecter and in
> some different hw directly? Code duplication? DT overlays?

Overlays are a solution, but I would advocate to always have the
connector.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ysvumhfqulaacx3l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRsSOgAKCRDj7w1vZxhR
xULUAPsGQYzNIZSTC25p24UViIRLulmthcOhzTK4JDdmTudgfAD+LA/mKeRDEVmr
5I2K+qvDzz8yXwdP9AtgR/XK8mhHSQ8=
=dLkQ
-----END PGP SIGNATURE-----

--ysvumhfqulaacx3l--


--===============5448406954130883482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5448406954130883482==--

