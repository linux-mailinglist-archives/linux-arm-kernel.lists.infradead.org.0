Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493AA8212A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xGNdGsbWI7OhFBpp1Myjr67rXsyyzWrR11QPbslAGMU=; b=i2+XBsLxy+ObHxSxklISWwJRm
	75hLea6JPd5x0GURTu0Lj7jeK+jZTGYSs3DNYmKoZspSMkDSroWZxsKDlGRHllfHOGK0Eu/Awz/Wm
	yTETPNloRmicy1iQjSkKveiskY/qGxoPmdwewRXaNyUemuJ2gnUUzbruP2bkI7TE+Wf6Ny2EcFWxZ
	eXGlqXgPWxFcArnfyCG2/TrHsA+dTieAHfI2o7/7lFULaYm0NsSkfTWAzhSk2acpV1PT/chfZ3rSS
	UB7bTHK5NFkDo7wsAdD9X+tvRHygp5FMne/kPplWBIz96ymwEuTaK0li7S/8XoHtqjY8rVwQKi9IV
	gAUZiW6wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufTH-0006sX-H1; Mon, 05 Aug 2019 16:04:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufSq-0006n8-4c; Mon, 05 Aug 2019 16:04:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C834AAEFB;
 Mon,  5 Aug 2019 16:03:56 +0000 (UTC)
Message-ID: <2050374ac07e0330e505c4a1637256428adb10c4.camel@suse.de>
Subject: Re: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA
 addressable memory size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>,  Will Deacon <will@kernel.org>
Date: Mon, 05 Aug 2019 18:03:53 +0200
In-Reply-To: <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-4-nsaenzjulienne@suse.de>
 <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_090400_475358_C8C28D70 
X-CRM114-Status: GOOD (  22.90  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org, "moderated list:BROADCOM
 BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Matthias Brugger <mbrugger@suse.com>, wahrenst@gmx.net,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============4349280562514301993=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4349280562514301993==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-bHwRoCAB9PanvfyTc8AQ"


--=-bHwRoCAB9PanvfyTc8AQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,
Thanks for the review!

On Fri, 2019-08-02 at 11:17 -0600, Rob Herring wrote:
> On Wed, Jul 31, 2019 at 9:48 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Some SoCs might have multiple interconnects each with their own DMA
> > addressing limitations. This function parses the 'dma-ranges' on each o=
f
> > them and tries to guess the maximum SoC wide DMA addressable memory
> > size.
> >=20
> > This is specially useful for arch code in order to properly setup CMA
> > and memory zones.
>=20
> We already have a way to setup CMA in reserved-memory, so why is this
> needed for that?

Correct me if I'm wrong but I got the feeling you got the point of the patc=
h
later on.

> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> >  drivers/of/fdt.c       | 72 ++++++++++++++++++++++++++++++++++++++++++
> >  include/linux/of_fdt.h |  2 ++
> >  2 files changed, 74 insertions(+)
> >=20
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 9cdf14b9aaab..f2444c61a136 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -953,6 +953,78 @@ int __init early_init_dt_scan_chosen_stdout(void)
> >  }
> >  #endif
> >=20
> > +/**
> > + * early_init_dt_dma_zone_size - Look at all 'dma-ranges' and provide =
the
> > + * maximum common dmable memory size.
> > + *
> > + * Some devices might have multiple interconnects each with their own =
DMA
> > + * addressing limitations. For example the Raspberry Pi 4 has the
> > following:
> > + *
> > + * soc {
> > + *     dma-ranges =3D <0xc0000000  0x0 0x00000000  0x3c000000>;
> > + *     [...]
> > + * }
> > + *
> > + * v3dbus {
> > + *     dma-ranges =3D <0x00000000  0x0 0x00000000  0x3c000000>;
> > + *     [...]
> > + * }
> > + *
> > + * scb {
> > + *     dma-ranges =3D <0x0 0x00000000  0x0 0x00000000  0xfc000000>;
> > + *     [...]
> > + * }
> > + *
> > + * Here the area addressable by all devices is [0x00000000-0x3bffffff]=
.
> > Hence
> > + * the function will write in 'data' a size of 0x3c000000.
> > + *
> > + * Note that the implementation assumes all interconnects have the sam=
e
> > physical
> > + * memory view and that the mapping always start at the beginning of R=
AM.
>=20
> Not really a valid assumption for general code.

Fair enough. On my defence I settled on that assumption after grepping all =
dts
and being unable to find a board that behaved otherwise.

[...]

> It's possible to have multiple levels of nodes and dma-ranges. You need t=
o
> handle that case too. Doing that and handling differing address translati=
ons
> will be complicated.

Understood.

> IMO, I'd just do:
>=20
> if (of_fdt_machine_is_compatible(blob, "brcm,bcm2711"))
>     dma_zone_size =3D XX;
>=20
> 2 lines of code is much easier to maintain than 10s of incomplete code
> and is clearer who needs this. Maybe if we have dozens of SoCs with
> this problem we should start parsing dma-ranges.

FYI that's what arm32 is doing at the moment and was my first instinct. But=
 it
seems that arm64 has been able to survive so far without any machine specif=
ic
code and I have the feeling Catalin and Will will not be happy about this
solution. Am I wrong?


--=-bHwRoCAB9PanvfyTc8AQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1IU2kACgkQlfZmHno8
x/4vnwf/XE8+V9mimMzYNeVSaTESn/AL3orSEJeMoeUZ1CPBVspMiV34YhnJFTs+
P3QiXvdigSX/vj+I8400qhGBhIj/+34A+wdKwEYb80kh2OExM56tuKuptWLPuyPd
u9T3FLJ+NdnV8p6zloY7xYBtI62Hr618kOX/ku1lBC5sJX1y8bRjTpvKqOPnrcC/
lcwjF0tU+HjPtYVDvhm6Joe0DryRATvNyVHzFrzpmcnznP+/6JCSPcaeDzDgY5jK
6/oS4fQQuzbAasQYkJDdOtEbRkE6W933vTGU3+kBwMdMybPYJW47CWedJulvKZvJ
6UP+li0Bb59N44VHgsTjI8pB8bey3g==
=gqcX
-----END PGP SIGNATURE-----

--=-bHwRoCAB9PanvfyTc8AQ--



--===============4349280562514301993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4349280562514301993==--


