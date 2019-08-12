Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6100789886
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uekkMe3WyWu29onBCio4tmd84gX/FjniMLs00q20Xno=; b=U1P4TNNQaPdu4Vwn6An7Jf13N
	PaqdoJNtr8eOupZEk0DeYTvHnNshJY0FedmEpaF4eBcy3l54BhaiJi4PSMq0aUaapD5Td3Prswe/j
	S6zJO4pmrPp+ZLgTapcc1+dgeX/QGKJ5ZcDUNdLarMpnEKdF1nRMMQHYzz69oPqNnMc85XNz8LMzi
	DGY/hq7s5ytKrOzGjgACXd7kcYCsPvEbY+taXL1ALZf9luH0sQ8GycTkYYmaj0+JSRkFfPI64iiQb
	rfn3cSv3tbon2aAKT89HPyHnXUxALY+/U0Dovv3VhhlzXd9XBWc9RF+7AOXHwewMfBH7y9+z56vxl
	B8TKra93A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5U6-0005Fq-N3; Mon, 12 Aug 2019 08:15:18 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5Tr-0004Nc-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:15:05 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 6446E20011;
 Mon, 12 Aug 2019 08:14:46 +0000 (UTC)
Date: Mon, 12 Aug 2019 10:14:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH v8 0/4] Add support for Orange Pi 3
Message-ID: <20190812081445.kfsbikfrt3pmsh6d@flea>
References: <20190806155744.10263-1-megous@megous.com>
 <2218280.0sI6yjypBf@jernej-laptop>
 <CAGb2v67JVG2rhOdUwBmfsO0+RYb4DNOPmUo=Q_UhL3N+niLiEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67JVG2rhOdUwBmfsO0+RYb4DNOPmUo=Q_UhL3N+niLiEg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_011503_583327_E8E80EF3 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8917652046405112651=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8917652046405112651==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wnuh5gs25vfqywb6"
Content-Disposition: inline


--wnuh5gs25vfqywb6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 03:54:03PM +0800, Chen-Yu Tsai wrote:
> On Mon, Aug 12, 2019 at 3:45 PM Jernej =C5=A0krabec <jernej.skrabec@gmail=
=2Ecom> wrote:
> >
> > Dne torek, 06. avgust 2019 ob 17:57:39 CEST je megous@megous.com napisa=
l(a):
> > > From: Ondrej Jirman <megous@megous.com>
> > >
> > > This series implements support for Xunlong Orange Pi 3 board. There
> > > are only a few patches remaining.
> > >
> > > - ethernet support - just a DT change (patch 1)
> > > - HDMI support (patches 2-4)
> > >
> > > For some people, ethernet doesn't work after reboot because u-boot do=
esn't
> > > support AXP805 PMIC, and will not turn off the etherent PHY regulator=
s.
> > > So the regulator controlled by gpio will be shut down, but the other =
one
> > > controlled by the AXP PMIC will not.
> > >
> > > This is a problem only when running with a builtin driver. This needs
> > > to be fixed in u-boot.
> > >
> > >
> > > Please take a look.
> >
> > Is there anything missing? It would be nice to get this in 5.4. There i=
s a lot
> > of H6 boards which needs DDC bus enable mechanism (part of H6 reference
> > design), including Beelink GS1 which already has HDMI node in mainline =
kernel
> > DT, but due to disabled DDC lines works only with 1024x768 (fallback
> > resolution in DRM core).
>
> I have a few minor comments about patch 1.
>
> I think the HDMI bits are good, but I don't have maintainership / commit
> permissions for drm-misc, so I'll have to wait until someone applies patc=
hes
> 2 and 3 before I apply patch 4.

I've applied 2,3 and 4

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wnuh5gs25vfqywb6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEf9QAKCRDj7w1vZxhR
xXlgAP9MFKL3iPUwZUiy1/l5hoQrktuJFTIedDN9ko3r/H6TDAD/RZg3u4WBh6O3
tteR/L/slzyHzMHsyD72abKseY8/IQE=
=i2m2
-----END PGP SIGNATURE-----

--wnuh5gs25vfqywb6--


--===============8917652046405112651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8917652046405112651==--

