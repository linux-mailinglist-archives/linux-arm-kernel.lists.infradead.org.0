Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8879A645DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 13:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vsG2m/664vLzfnoNRhhOmj+zPg/nAiNlZPrmiF0iq/k=; b=LX9vjg6o6rYiAEjxb/ChBB1nj
	dJqLgY+08IEp8TjgEIh+ipEekKBG/hpPz7JxHbwBaRmHtxAWe0ldUdjTJ4VdgHjAQUt6b3r2EHgk5
	SCUhycGEkEL5aCyedlSXtprXxuV03D/tJP/Mye0rXyKk19vXFSkT/JwlA1zpPR6LYWtAcMDGJDxKA
	n8PdPKwFWQ+F0NKQqN45VjAxA9XjtdY4R+Cn94HQQ00gwhWqZUm/GDs8njd/HNfuDATC8oOf3tKbm
	5mrMyHoAx9c339eSj4Up5octgmp2eU+ACMrXj7qLS7asfHmNdGJ6OhNfRRn4GJI2oH1MNhigFCHwr
	UyFESgecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlAyM-00067j-KD; Wed, 10 Jul 2019 11:41:18 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAyA-00066L-8y
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 11:41:09 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id CFA7B60004;
 Wed, 10 Jul 2019 11:40:42 +0000 (UTC)
Date: Wed, 10 Jul 2019 13:40:42 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190710114042.ybgavnxb4hgqrtor@flea>
References: <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
 <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_044106_637439_8ECEE9CC 
X-CRM114-Status: GOOD (  34.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8309068559625457640=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8309068559625457640==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="escjyxb6ltmmy4x5"
Content-Disposition: inline


--escjyxb6ltmmy4x5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 09, 2019 at 01:30:18PM -0700, Vasily Khoruzhick wrote:
> On Tue, Jul 9, 2019 at 1:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, Jul 08, 2019 at 05:49:21PM -0700, Vasily Khoruzhick wrote:
> > > > > Maybe instead of edp-connector one would introduce integrator's specific
> > > > > connector, for example with compatible "olimex,teres-edp-connector"
> > > > > which should follow edp abstract connector rules? This will be at least
> > > > > consistent with below presentation[1] - eDP requirements depends on
> > > > > integrator. Then if olimex has standard way of dealing with panels
> > > > > present in olimex/teres platforms the driver would then create
> > > > > drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
> > > > > Anyway it still looks fishy for me :), maybe because I am not
> > > > > familiarized with details of these platforms.
> > > >
> > > > That makes sense yes
> > >
> > > Actually, it makes no sense at all. Current implementation for anx6345
> > > driver works fine as is with any panel specified assuming panel delays
> > > are long enough for connected panel. It just doesn't use panel timings
> > > from the driver. Creating a platform driver for connector itself looks
> > > redundant since it can't be reused, it doesn't describe actual
> > > hardware and it's just defeats purpose of DT by introducing
> > > board-specific code.
> >
> > I'm not sure where you got the idea that the purpose of DT is to not
> > have any board-specific code.
>
> I believe DT was an attempt to move to declarative approach for
> describing hardware. Yes, we have different compatibles for different
> devices but they're specific to particular device rather than
> particular board. Device interconnection is described in DT along with
> some properties rather than in board-specific C-file.

You're right, but it's not incompatible with having some code to deal
with some board quirk.

> Introducing board-specific compatible for a connector isn't looking
> right to me.

If that board has a board-specific behaviour for it's connector, then
what's the issue?

You can't describe all the quirks in the all boards using purely
properties.

> > It's perfectly fine to have some, that's even why there's a compatible
> > assigned to each and every board.
> >
> > What the DT is about is allowing us to have a generic behaviour that
> > we can detect: we can have a given behaviour for a given board, and a
> > separate one for another one, and this will be evaluated at runtime.
> >
> > This is *exactly* what this is about: we can have a compatible that
> > sets a given, more specific, behaviour (olimex,teres-edp-connector)
> > while saying that this is compatible with the generic behaviour
> > (edp-connector). That way, any OS will know what quirk to apply if
> > needed, and if not that it can use the generic behaviour.
> >
> > And we could create a generic driver, for the generic behaviour if
> > needed.
> >
> > > There's another issue: if we introduce edp-connector we'll have to
> > > specify power up delays somewhere (in dts? or in platform driver?), so
> > > edp-connector doesn't really solve the issue of multiple panels with
> > > same motherboard.
> >
> > And that's what that compatible is about :)
>
> Sorry, I fail to see how it would be different from using existing
> panels infrastructure and different panels compatibles. I think Rob's
> idea was to introduce generic edp-connector.

Again, there's no such thing as a generic edp-connector. The spec
doesn't define anything related to the power sequence for example.

> If we can't make it generic then let's use panel infrastructure.

Which uses a device specific compatible. Really, I'm not sure what
your objection and / or argument is here.

In addition, when that was brought up in the discussion, you rejected
it because it was inconvenient:
https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1#comment_535206

And I agree with you on that one.

> > > I'd say DT overlays should be preferred solution here, not another
> > > connector binding.
> >
> > Overlays are a way to apply a device tree dynamically. It's orthogonal
> > to the binding.
>
> It isn't orthogonal to original problem though.

It is. The original problem is that you want to power up whatever is
on the other side of a eDP link using an arbitrary regulator.

This is a "how do I describe that in my DT" problem, and it really has
nothing to do with how the DT is being passed to the kernel.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--escjyxb6ltmmy4x5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXSXOugAKCRDj7w1vZxhR
xdG+AP9pfxb7uYcDFKG6xikGZewhXzpg/acmPfrETXLF2B1jZQD7Bc2oEF0IKqh7
tiE8F0AU/5LApsNMhblCY9s+dkDrFwU=
=gnu6
-----END PGP SIGNATURE-----

--escjyxb6ltmmy4x5--


--===============8309068559625457640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8309068559625457640==--

