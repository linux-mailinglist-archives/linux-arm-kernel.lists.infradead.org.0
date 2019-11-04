Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308C8EE7BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VSwJp+K47O9bVapSYZo0/jPNm7RhzF1N58VxlERR7wE=; b=bz1nNLQhmUgpLm0Xosz5AfIwf
	6RLWj/RmmouA8mEObmdKkUJOsbOH6LwyNPveN9JAnFWqhhJjdAQmbbu2PCb7PWj1u8mY2sHYNTpR3
	NtTAEUyNnHRLjuvIGLizewKlO9Vt0SHvPgFlWnbv9l6Kazo36z6F97cwFyZsIdtmVUUxedVVLCouR
	l9tF+TReHctyYwz7RqyKr3PM5EBhOFuqsLKZeShCSYqizefdC+x5dg5VLD6L9CULTKZ2TFo2bgKJl
	qzhsUiGcc5upZa+W+sUWM9LR+IOU526HCVykEKPodalpYMoJ1rGgupCwfcZvaXO+G8NJjyi+GbuSc
	rJA62vEXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhU9-0002ch-JC; Mon, 04 Nov 2019 18:53:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhU1-0002bl-Ao; Mon, 04 Nov 2019 18:53:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 300D5B26B;
 Mon,  4 Nov 2019 18:53:43 +0000 (UTC)
Message-ID: <95359117f4f14f296db1cabc6fa68fbfcf78b2f5.camel@suse.de>
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: force CMA into first GB of memory
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren
 <wahrenst@gmx.net>,  catalin.marinas@arm.com, devicetree@vger.kernel.org, 
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>
Date: Mon, 04 Nov 2019 19:53:39 +0100
In-Reply-To: <05f00d57-6151-45df-67ee-b49a18a611c7@gmail.com>
References: <20191104135412.32118-1-nsaenzjulienne@suse.de>
 <20191104135412.32118-2-nsaenzjulienne@suse.de>
 <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
 <05f00d57-6151-45df-67ee-b49a18a611c7@gmail.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_105345_519573_87220751 
X-CRM114-Status: GOOD (  17.57  )
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
Content-Type: multipart/mixed; boundary="===============2709317091003999068=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2709317091003999068==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-e3thndAXgfBLu9QjwnR4"


--=-e3thndAXgfBLu9QjwnR4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-11-04 at 09:51 -0800, Florian Fainelli wrote:
> On 11/4/19 9:09 AM, Stefan Wahren wrote:
>=20
> [snip]
>=20
> > > +	reserved-memory {
> > > +		#address-cells =3D <2>;
> > > +		#size-cells =3D <1>;
> > > +		ranges;
> > > +
> > > +		/*
> > > +		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> > > +		 * that's not good enough for the Raspberry Pi 4 as some
> > > +		 * devices can only address the lower 1G of memory (ZONE_DMA).
> > > +		 */
> > > +		linux,cma {
> > > +			compatible =3D "shared-dma-pool";
> > > +			size =3D <0x2000000>; /* 32MB */
> > > +			alloc-ranges =3D <0x0 0x00000000 0x40000000>;
> > > +			reusable;
> > > +			linux,cma-default;
> > > +		};
> > > +	};
> > > +
> >=20
> > i think this is a SoC-specific issue not a board specifc one. Please
> > move this to bcm2711.dtsi
>=20
> This sounds like a possibly fragile solution if someone changes
> CONFIG_CMA_SIZE_MBYTES to a value greater than 32MB no?

I agree it's not the most flexible solution in the world. It also bypasses =
the
command line interface. But I can't see any alternatives as of today.

Overall, I suggest that we set CMA's size to whatever is needed for a sensi=
ble
desktop use. And let odd users with custom HW modify it trough overlays (wh=
ich
they will most likely be forced to do anyway).

That said I'm open to suggestions.

Regards,
Nicolas


--=-e3thndAXgfBLu9QjwnR4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3Ac7QACgkQlfZmHno8
x/7dgQf+KKHvYx6jBZi1K73PiGBWn2BOWGIQhxgKf2zuOoGEIPWIdft+iR+7QqfT
AteKjVlETbdYvyjxZm+k0YI7ngTvy1vC/xoHmz4tyxIKoxM89PjLeEudUI7UtBxT
O5EOdCfEbJ4hFBrHk9u141lq2i+D2BJXKfK9m/jM6SbgGQGlznafVowiEw1A/n9i
V3QPFNEiibV/wUQxsPMZ44KbCb0P+L48N76fmyBmH5uAgQnenTgStw31HCdXxYrN
V7QQa/3QKU2msgZZXT3beRih+dM4mnSdwokKH3RSr11/2/8KGOeVJ022+pMl+Swe
Nan0j4uEsyir/r4g0b0pKXrONC8HAg==
=iJ8o
-----END PGP SIGNATURE-----

--=-e3thndAXgfBLu9QjwnR4--



--===============2709317091003999068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2709317091003999068==--


