Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9BFF2AF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:42:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B0NsG0qJALUqh2pYshqZ/GFH6VHxdBco/Q8zD106P3I=; b=VnKxtqUr/oxfx9cAyt0VJCPMh
	Q7ilwzZwtMvoUqtBiTgVvtw6tk5F4v+phWKEVKuaBN7Hn5wmhZKpXYjuV7dkRPqRszO/S9Zd8azmm
	le8SxTXbTiBM7c/OLjCCYyhkKr3qI1Oehs6nWhpDwpWfCoEoshplNpddSCNjrW80g3EgAEb8TT7OL
	QwUAyoOn+L2ti7o7fVWAqFofq8Ta2/JrgUEcgnQ5YoirJDfm8Yf23u+RzeeRmm5mp1fMcU0gT3NIc
	zG8SlqeEhgzPCO25Di6qAxTCkSPLkB+wYZhpzK/0vDZ5lESCKAljUs7DrUjec4rfHNDwMQo3KpO0W
	KdfWiXHKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeJN-0005Tt-Ub; Thu, 07 Nov 2019 09:42:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeJG-0005TF-GB; Thu, 07 Nov 2019 09:42:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 71C67B1B8;
 Thu,  7 Nov 2019 09:42:32 +0000 (UTC)
Message-ID: <b63a382c72bec9e52ea10f9d41aa45c6b1147eba.camel@suse.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: bcm2711: force CMA into first GB of
 memory
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, catalin.marinas@arm.com, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>
Date: Thu, 07 Nov 2019 10:42:30 +0100
In-Reply-To: <09138a9d-40a5-4c5f-0cf4-1cb73579c600@gmx.net>
References: <20191106095945.22933-1-nsaenzjulienne@suse.de>
 <20191106095945.22933-2-nsaenzjulienne@suse.de>
 <09138a9d-40a5-4c5f-0cf4-1cb73579c600@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_014234_684987_FA3B0954 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2590330347157965906=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2590330347157965906==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-kpHq0CYDmXDh0eqViyTB"


--=-kpHq0CYDmXDh0eqViyTB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-07 at 07:23 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 06.11.19 um 10:59 schrieb Nicolas Saenz Julienne:
> > arm64 places the CMA in ZONE_DMA32, which is not good enough for the
> > Raspberry Pi 4 since it contains peripherals that can only address the
> > first GB of memory. Explicitly place the CMA into that area.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > Changes since v1:
> >   - Move into bcm2711.dtsi
> >=20
> >  arch/arm/boot/dts/bcm2711.dtsi | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711=
.dtsi
> > index 1f3acd3363ea..6000a01652fa 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -12,6 +12,26 @@
> >=20
> >  	interrupt-parent =3D <&gicv2>;
> >=20
> > +	reserved-memory {
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <1>;
> > +		ranges;
> > +
> > +		/*
> > +		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> > +		 * that's not good enough for the Raspberry Pi 4 as some
>=20
> sorry for the nitpicking but i hope the Raspberry Pi 4 B wont be the
> only user of BCM2711.

No worries :)

It's better that way anyway.

>=20
> So please s/Raspberry Pi 4/BCM2711/
>=20
> Beside that:
>=20
> Acked-by: Stefan Wahren <wahrenst@gmx.net>

Thanks!

>=20
> > +		 * devices can only address the lower 1G of memory (ZONE_DMA).
> > +		 */
> > +		linux,cma {
> > +			compatible =3D "shared-dma-pool";
> > +			size =3D <0x2000000>; /* 32MB */
> > +			alloc-ranges =3D <0x0 0x00000000 0x40000000>;
> > +			reusable;
> > +			linux,cma-default;
> > +		};
> > +	};
> > +
> > +
> >  	soc {
> >  		/*
> >  		 * Defined ranges:
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


--=-kpHq0CYDmXDh0eqViyTB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3D5wYACgkQlfZmHno8
x/6Z9wf+Ix7scgFz+3M7rFkw5LPO3vRxZIa27azCPt/YhruRqYjIFxhJRtvND+Bj
aA7Lv1P9AayPq9Wzf+9SXpe8kV9075JIwkePxHpSxYRKQO2OxY9PyK79qgi/lEZG
uFX3nwYBQL28v2DF+Sg12VLrtKuZI+azxLxiv936jZKV58RO+gfCHWulheO+MSiL
8chl+ZRp0dUehw2squNSbwtcZnr/IcFLx5vDW+EaJdYwNqq+N07LlSeTqxNsPK9a
RUkOOpOqjv6V8va7RVy4I07aAlRBHrCX34+hvTcZPJkXk3ev5XCGzPZBUPjlklYW
V4IwN6QZQWEaEO0X/W+lryiJzePQ+w==
=1rN1
-----END PGP SIGNATURE-----

--=-kpHq0CYDmXDh0eqViyTB--



--===============2590330347157965906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2590330347157965906==--


