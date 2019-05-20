Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CD022CDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IyiaZaGwKbhMo6p3tjMZEdwlAkuHtgApMgPc4kpDjbs=; b=f/WFfRIBNC2szxSzSE+v9Zyf9
	FWc09Dl/Pm0V9QUQvYStbkBUG+KJfzpvWrKjIuhVl3/CqK1vr4Ntu0aksRaFcuL3yUgcAMjwrpr5s
	uYyYOeGqwk+KZvT74ZFkWGNMk5qY6oZmZQZVSFXzKJ+YF+yBzf2WDCQBmDXPcgxSLHdACC3c+sbxR
	xlBLb2vyhrDwTMAdCpz/jEhq6iSUPp6Y9FAwchvlusrffQaby24juhVi66T90+7INwozgv2n6WPF5
	lWHJsIVY5YoqBMJMtYw/z7dWniUse02dkBsFiuBtTIDYUjKKCHwcKptU14VOhg3ML4ddhC+cT4ER3
	VK67E5TYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScfY-0001Gq-JN; Mon, 20 May 2019 07:25:12 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScfN-0000eX-Qh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:25:03 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 846DB1BF218;
 Mon, 20 May 2019 07:24:48 +0000 (UTC)
Date: Mon, 20 May 2019 09:24:47 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH] ARM: dts: sun8i-h3: Fix wifi in Beelink X2 DT
Message-ID: <20190520072447.snt4phx57b5rfjv4@flea>
References: <20190516161039.18534-1-jernej.skrabec@siol.net>
 <20190517073048.y6mzgbhhryfmuckl@flea>
 <36237813.UWQAqNRFN9@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <36237813.UWQAqNRFN9@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_002502_023172_32436DAF 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1127402881223396194=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1127402881223396194==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ctmlzvhrt42rr7y5"
Content-Disposition: inline


--ctmlzvhrt42rr7y5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 18, 2019 at 05:07:11PM +0200, Jernej =C5=A0krabec wrote:
> Dne petek, 17. maj 2019 ob 09:30:48 CEST je Maxime Ripard napisal(a):
> > Hi,
> >
> > On Thu, May 16, 2019 at 06:10:39PM +0200, Jernej Skrabec wrote:
> > > mmc1 node where wifi module is connected doesn't have properly defined
> > > power supplies so wifi module is never powered up. Fix that by
> > > specifying additional power supplies.
> > >
> > > Additionally, this STB may have either Realtek or Broadcom based wifi
> > > module. One based on Broadcom module also needs external clock to work
> > > properly. Fix that by adding clock property to wifi_pwrseq node.
> > >
> > > Fixes: e582b47a9252 ("ARM: dts: sun8i-h3: Add dts for the Beelink X2 =
STB")
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >
> > >  arch/arm/boot/dts/sun8i-h3-beelink-x2.dts | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
> > > b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts index
> > > 6277f13f3eb3..6a0ac85b4616 100644
> > > --- a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
> > > +++ b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
> > > @@ -89,7 +89,10 @@
> > >
> > >  	wifi_pwrseq: wifi_pwrseq {
> > >
> > >  		compatible =3D "mmc-pwrseq-simple";
> > >
> > > +		pinctrl-names =3D "default";
> >
> > pinctrl-names only make sense with another pinctrl-[0-255]
> > property. Did you forgot something here?
>
> No, I just took BananaPi M2+ as a example, which has pinctrl-names proper=
ty
> too and no "pinctrl-*". But digging through history of this DT, it seems =
that
> this is just leftover which somebody forgot to remove.
>
> I'll send v2.

This should be fixed in 5.2 thanks to the commit 75f9a058838b

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ctmlzvhrt42rr7y5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJWPwAKCRDj7w1vZxhR
xYE+AP9QhFtjiygFXgICwzp6Lq1kpc5kHMNcjkJ+93Xus3Y9QwD+Kfwc+m/R0CkH
brzk6h/WxMESpp9HioHOUA0ql3LAWAk=
=go8o
-----END PGP SIGNATURE-----

--ctmlzvhrt42rr7y5--


--===============1127402881223396194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1127402881223396194==--

