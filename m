Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9150429883
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tMGlOWFwJVAgITCaKDHky/Qm6SfYmWZ+De26IuVQkek=; b=AkydCtPdNpQNqIRExDcmE6DFw
	Z6O9A6nDTE5ionv6xXLvKyL1EyS5dUn7U5O8ixVSyBWB9WvhB0tpB2IGAGDdojWTBTH3pBRMAVnt0
	uH1hFkDCVLoOenc3NmHsnlSY8TE6s3m7n7yHO6GXzvltrHijGCdeo7ztxkZ0emML4mxI+JtNKWPx4
	CrlRfIOlq+wKbjVYXFRCPjgulh6OJTirZALcpi+V3F03soaxvk2EVbJBvYiCl3Diwznjl52V3LEPV
	7YXTfE9uG+UmrlZwY6o1SY1TV5Wiy9lyV8jvTllS1zGn3tnqXIVSnUGI61wk9rlKA2YbbGVpgW31f
	vAtP1v9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9uL-0007wN-2W; Fri, 24 May 2019 13:06:49 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9uE-0007vt-6X
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:06:43 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C20A420000F;
 Fri, 24 May 2019 13:06:23 +0000 (UTC)
Date: Fri, 24 May 2019 15:06:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH 6/6] arm64: dts: allwinner: a64: enable ANX6345 bridge on
 Teres-I
Message-ID: <20190524130623.dpkg5z5rdyc2bno4@flea>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065404.BB60F68B20@newverein.lst.de>
 <CA+E=qVdh-=C5zOYWYj95jLN51EaXFS6B+CQ101-f64q5QmgN3g@mail.gmail.com>
 <20190524121359.GE15685@lst.de>
MIME-Version: 1.0
In-Reply-To: <20190524121359.GE15685@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_060642_394881_CDBA702A 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============2937931105382282346=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2937931105382282346==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fsxi6i2r62yvgbvk"
Content-Disposition: inline


--fsxi6i2r62yvgbvk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 24, 2019 at 02:13:59PM +0200, Torsten Duwe wrote:
> On Thu, May 23, 2019 at 07:48:03AM -0700, Vasily Khoruzhick wrote:
> > On Wed, May 22, 2019 at 11:54 PM Torsten Duwe <duwe@lst.de> wrote:
> > >
> > >
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > @@ -65,6 +65,21 @@
> > >                 };
> > >         };
> > >
> > > +       panel: panel {
> > > +               compatible ="innolux,n116bge", "simple-panel";
> >
> > IIRC Rob wanted it to be edp-connector, not simple-panel. Also you
> > need to introduce edp-connector binding.
>
> This line is identically found in
> arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi and
> arch/arm64/boot/dts/nvidia/tegra132-norrin.dts

That's not really an argument though. These are using rather old
bindings, and realising that they are flawed and fixing these flaws is
a natural process.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fsxi6i2r62yvgbvk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOfsTwAKCRDj7w1vZxhR
xRybAP9iKNkCqyhXQ6xIsRZgZ0sNXT+q0aHuuuRwgIKZaEJwkwEAqakTF1EIu2Pr
7DcRHe8aaX/5zfuRYUOdKKZ/wNaOdQ0=
=Mlxd
-----END PGP SIGNATURE-----

--fsxi6i2r62yvgbvk--


--===============2937931105382282346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2937931105382282346==--

