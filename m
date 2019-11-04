Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56942EE5B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:20:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JhUSH//5QB2ObkJNOU7X1xZkloirY+vtxzBc6UNZBL4=; b=s3fvALiYn09vZpehlvJiqhRmI
	G07cr3DcLDvypmrf+/ciZXFq/2WurbkpBhOe7f5GfWh4Gw7N4HL9g5d4f03gjVYPP9QCNUjhhkbzV
	FW9gkHYYbU2ehI2IGQPsLRs661VDscUJqkUKWeV8rjPRTpIdrtB5zFV1VgkdvemBl0j28CEKQ2HGw
	+MGs+8p4goTsIoEVblVQbN/CNmx9YScd3mDzJ2D+zsHo3ECTJHKvJwZ+TFrEtz+EoMeLwaN497SWc
	Vr7D4nO1hBJ7xLIjR56vwWFkZt74fUyEXe+aaZyyBhsfqqbJGLcLhZE9BwzGQQ/OZOaXY0qZsmWc6
	Dz+TEBlog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRg1G-0002G8-FF; Mon, 04 Nov 2019 17:19:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRg19-0002FA-DV; Mon, 04 Nov 2019 17:19:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 55381B190;
 Mon,  4 Nov 2019 17:19:48 +0000 (UTC)
Message-ID: <34bd65923697528b5ee540ef30b31542cfc5ba8e.camel@suse.de>
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: force CMA into first GB of memory
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, catalin.marinas@arm.com, 
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>
Date: Mon, 04 Nov 2019 18:19:45 +0100
In-Reply-To: <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
References: <20191104135412.32118-1-nsaenzjulienne@suse.de>
 <20191104135412.32118-2-nsaenzjulienne@suse.de>
 <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_091951_605366_E7BE2DDC 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8763799606383744176=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8763799606383744176==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ILh2Kn6IzlMFXja+veOK"


--=-ILh2Kn6IzlMFXja+veOK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-11-04 at 18:09 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 04.11.19 um 14:54 schrieb Nicolas Saenz Julienne:
> > arm64 places the CMA in ZONE_DMA32, which is not good enough for the
> > Raspberry Pi 4 since it contains peripherals that can only address the
> > first GB of memory. Explicitly place the CMA into that area.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> do you want this in Linux 5.5 via devicetree/fixes? In this case please
> add an fixes tag.

This has to go into v5.5 if the second patch is accepted. That said I can't=
 add
a fixes tag as the code being fixed isn't yet in linus' tree.

Any suggestions? Maybe go through Catalin's tree?

> Otherwise this will be queued for Linux 5.6.
>=20
> > ---
> >  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > index cccc1ccd19be..3c7833e9005a 100644
> > --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > @@ -19,6 +19,25 @@
> >  		reg =3D <0 0 0>;
> >  	};
> >=20
> > +	reserved-memory {
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <1>;
> > +		ranges;
> > +
> > +		/*
> > +		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> > +		 * that's not good enough for the Raspberry Pi 4 as some
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
>=20
> i think this is a SoC-specific issue not a board specifc one. Please
> move this to bcm2711.dtsi

Noted, thanks!

Regards,
Nicolas


--=-ILh2Kn6IzlMFXja+veOK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3AXbIACgkQlfZmHno8
x/5bNQf+Pcwr9fITGn9iaLSMaqlCHQzeOM1OgDs4kXXqGotT/PNltTgdxEJIhFIp
5DAU9kQRHwIG/69W9dXmUngZQe7seTMSBvS2ZrSKxgU45h/O/L1dQbWePZrl1PEF
k4eXAWFJhwKQrFxBnT6F2IlCfoY5CrMikuhV+uSBP0UhLiAoWQ1h1fl0qnU57ODL
cFz0GYgNS45rFhQ1GNfb5daGUXxgJyjMwRokrBS7dT+fnC7BqmXGBRwAWT7n+MC1
9wyrMaWXVWpkrVCkKkhXsKjK9MBnqC+FIGIo06F/cttUQr24QOD8Xkcho+OXzKgP
HzfSwcMdLuACsoS8BonBZgS1YIzAOA==
=AtDb
-----END PGP SIGNATURE-----

--=-ILh2Kn6IzlMFXja+veOK--



--===============8763799606383744176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8763799606383744176==--


