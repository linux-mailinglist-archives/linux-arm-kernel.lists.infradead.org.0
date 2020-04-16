Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C51AC240
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dzi1KdRQ4jx7xY5pdELrmKTOdWdxiJj+PlCjOjRZpPs=; b=QGkR8nUDRhQ4++YBxrYWcrOro
	u2pljW4KfZSi9Os6cftGkqf5Mgc0rTSwXs4F2eHdohaOL+9KWS0vtUkwUjdVGEx8T8vHx0OEhoKAX
	J9C6sLg7mnwi66wN+wq7OO0U20aTTTwljS/mJPKAS+9PaWrG1sRb04u7wVdSfHIe6LFDvxh8Hg3Oa
	qjVDE+8ir6qtSR4rtm17jTb7mC7Xqk5xiGl7Z8ZGwKHOC0RRzbFdDHzLRVuORsQhOBPwMnE4TP0Dq
	kYwQ+DJaiAq0Abkg8QTqTh0fFGxg53wDvSPLR4cPYjaP91soukAhPHe+PqD9SQkwPcyek1UfosvUN
	Nu+ioB9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4Vl-0004oc-MP; Thu, 16 Apr 2020 13:24:57 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4Vd-0004ni-Bv; Thu, 16 Apr 2020 13:24:51 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AF69AE0003;
 Thu, 16 Apr 2020 13:24:42 +0000 (UTC)
Date: Thu, 16 Apr 2020 15:24:42 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Message-ID: <20200416132442.GI125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
MIME-Version: 1.0
In-Reply-To: <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_062449_676094_5F659605 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8794346680711234054=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8794346680711234054==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+PbGPm1eXpwOoWkI"
Content-Disposition: inline


--+PbGPm1eXpwOoWkI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
> Hi Paul,
>=20
> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
> has been approved by robh.

Huh, I looked around for ongoing related work but missed it.
I'll definitely rebase on top of your series and use the yaml description
instead. Thanks!

> Maybe place dts patches at the end of a patch serie.
> Could you include a &rga patch if your device is supported in mainline,
> so we can test with:
> make ARCH=3Darm64 dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/media/rockchip-rga.ya=
ml

I tested with the PX30 EVB so I can surely add a node there if that turns
out necessary (see below).

> Johan
>=20
> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
> > The PX30 features a RGA block: add the necessary node to support it.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/d=
ts/rockchip/px30.dtsi
> > index 75908c587511..4bfbee9d4123 100644
> > --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
> >  		status =3D "disabled";
> >  	};
> > =20
> > +	rga: rga@ff480000 {
> > +		compatible =3D "rockchip,px30-rga";
> > +		reg =3D <0x0 0xff480000 0x0 0x10000>;
> > +		interrupts =3D <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> > +		clock-names =3D "aclk", "hclk", "sclk";
> > +		resets =3D <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> > +		reset-names =3D "core", "axi", "ahb";
> > +		power-domains =3D <&power PX30_PD_VO>;
>=20
> 		status =3D "disabled";

As of 5.6, the rk3399 has the node enabled by default. Did that change?

Since it's a standalone block that has no I/O dependency, I don't really see
the point of disabling it by default.

What do you think?

Cheers,

Paul

> > +	};
> > +
> >  	qos_gmac: qos@ff518000 {
> >  		compatible =3D "syscon";
> >  		reg =3D <0x0 0xff518000 0x0 0x20>;
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--+PbGPm1eXpwOoWkI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6YXJoACgkQ3cLmz3+f
v9Ho3wf/d9zxV64Bwt9TC0ABSimMOz4E7MQphqkXg/XbCpShScAkCWfzSQ71WxB4
T0+gL2hGnJEua+rGBrWyXst54nDhfUvqmiKw2VDC+ukjpVgGwNNP1UFFWGf5rTqM
TNY4QMIqmVhU1hvIGLYIT3iFZl66I1jlzBlywy1tM5SqC6B2N7Xy7P1FgtfVt7Wr
iz3jUXj1tqFrSB4sFdr2HFkOV48LLhtzjfSEPJI5ZtIsgM+jh/fGYu/v38kPlDW5
2bjcC2ZLiwHQyUpV8/+vEHFo8Ged/qocFyPrKtI1mCZd+Yd/VYRP85f551sbc0uz
uuYKH6JbkP37Fdz/ONOdyMbAqj+dNg==
=RgMQ
-----END PGP SIGNATURE-----

--+PbGPm1eXpwOoWkI--


--===============8794346680711234054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8794346680711234054==--

