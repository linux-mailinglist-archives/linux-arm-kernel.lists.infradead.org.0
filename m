Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34249637D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f0D6dGG6JpQ7ACcJd12whRKRidZrgJEqgHMpR8MqXP0=; b=kh6Efr5vc5pPHpCqhEz6dTIj2
	RYtWXZZwYOqqW0eGVwO3Kh857AdsTWcKj3DImIBDbB/wKILF6hjiHLKF2IrQbOSyOKRZz9a2VeVk7
	CqFaPIqlycu5Dzojm3Cks9XHAHroaxJJanEYXJkN5W3/BfXL7Uh9cS1CbxrxMAvsIc6kiAvpnqoX5
	eVFwO8n7T7ma2QEQjsW+cGHp9BsohUpVZSsuaIa2Huevd5hlteR6X7mRFywBcMOwqlM7kqql67gkM
	UcWLZqk+XpJxVSdtu/vvd07RzicTsufiDCjxOJeyIgTO9td4+k6Ai8XJWcGs29nTjTZUlf0Y/B9Pr
	+BO0rAtjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkr0j-0003Kh-7J; Tue, 09 Jul 2019 14:22:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkr0Q-0003Jm-GD
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:22:08 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EA3DB20001A;
 Tue,  9 Jul 2019 14:21:55 +0000 (UTC)
Date: Tue, 9 Jul 2019 16:21:55 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190709142155.2blclgbqapjeifv3@flea>
References: <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
 <72E7C765-3660-413A-8450-94BE4B3D1345@aosc.io>
MIME-Version: 1.0
In-Reply-To: <72E7C765-3660-413A-8450-94BE4B3D1345@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_072206_852321_6570FDCB 
X-CRM114-Status: GOOD (  23.61  )
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>, Torsten Duwe <duwe@lst.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7445550463905465285=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7445550463905465285==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="en37fuotj5a3o4w2"
Content-Disposition: inline


--en37fuotj5a3o4w2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2019 at 04:58:35PM +0800, Icenowy Zheng wrote:
>
>
> =E4=BA=8E 2019=E5=B9=B47=E6=9C=889=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=884=
:55:32, Maxime Ripard <maxime.ripard@bootlin.com> =E5=86=99=E5=88=B0:
> >On Mon, Jul 08, 2019 at 05:49:21PM -0700, Vasily Khoruzhick wrote:
> >> > > Maybe instead of edp-connector one would introduce integrator's
> >specific
> >> > > connector, for example with compatible
> >"olimex,teres-edp-connector"
> >> > > which should follow edp abstract connector rules? This will be at
> >least
> >> > > consistent with below presentation[1] - eDP requirements depends
> >on
> >> > > integrator. Then if olimex has standard way of dealing with
> >panels
> >> > > present in olimex/teres platforms the driver would then create
> >> > > drm_panel/drm_connector/drm_bridge(?) according to these rules, I
> >guess.
> >> > > Anyway it still looks fishy for me :), maybe because I am not
> >> > > familiarized with details of these platforms.
> >> >
> >> > That makes sense yes
> >>
> >> Actually, it makes no sense at all. Current implementation for
> >anx6345
> >> driver works fine as is with any panel specified assuming panel
> >delays
> >> are long enough for connected panel. It just doesn't use panel
> >timings
> >> from the driver. Creating a platform driver for connector itself
> >looks
> >> redundant since it can't be reused, it doesn't describe actual
> >> hardware and it's just defeats purpose of DT by introducing
> >> board-specific code.
> >
> >I'm not sure where you got the idea that the purpose of DT is to not
> >have any board-specific code.
> >
> >It's perfectly fine to have some, that's even why there's a compatible
> >assigned to each and every board.
> >
> >What the DT is about is allowing us to have a generic behaviour that
> >we can detect: we can have a given behaviour for a given board, and a
> >separate one for another one, and this will be evaluated at runtime.
> >
> >This is *exactly* what this is about: we can have a compatible that
> >sets a given, more specific, behaviour (olimex,teres-edp-connector)
> >while saying that this is compatible with the generic behaviour
> >(edp-connector). That way, any OS will know what quirk to apply if
> >needed, and if not that it can use the generic behaviour.
> >
> >And we could create a generic driver, for the generic behaviour if
> >needed.
> >
> >> There's another issue: if we introduce edp-connector we'll have to
> >> specify power up delays somewhere (in dts? or in platform driver?),
> >so
> >> edp-connector doesn't really solve the issue of multiple panels with
> >> same motherboard.
> >
> >And that's what that compatible is about :)
>
> Maybe we can introduce a connector w/o any driver just like hdmi-connecto=
r?

Ironically, a driver for it has been sent yesterday :)

But yeah, we can definitely do that too.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--en37fuotj5a3o4w2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXSSjAwAKCRDj7w1vZxhR
xRd1AQCJ5jZZvccoYKMTlhIFwESGq/tLGx3Ao78XQTTrIK5CFAEA11fhHaijvh3D
nQ4CuXzwsgPAxXOwMwPH8TV3F9oC/Aw=
=S7iw
-----END PGP SIGNATURE-----

--en37fuotj5a3o4w2--


--===============7445550463905465285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7445550463905465285==--

