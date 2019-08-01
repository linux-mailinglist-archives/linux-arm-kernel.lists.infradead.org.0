Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB8C7E05E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bz7m+ljCgY6IYFWPmU83qVzh3ndRyvjNR9+KH0YHiq0=; b=KUeL6217J3P+XIWssB/elpiEh
	yTTZ+iME3PbIEyspVpytwVbToriybBI+KFpSuO9w3cc7eE9MV3InjIOMaK4cVaeTzpkcvs/8mClB/
	P8Om7lj3vZBHRRXRACYUYDOCNvayL1MgBMUTXHMQUlgp7lAEHAO8t/IXCR9hrl46JKRYiDvIFDIfm
	eKCMxJchsFhoYt+ZC7p+GNoGyoTuNxNCCnKJ3NtpzXGaA40+T/MJY4QJUi9eLj8NUzZ0Dp0rg9GO+
	aZdQ0HBYMn259/F3fe/5h0oJqFz8MQSKtdfCYWvknOllV59iSmH+o2PI7WHa820I4sgSexsRP92bD
	Ik6N9zp8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htE8i-00066H-RT; Thu, 01 Aug 2019 16:41:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htE8b-00065t-Ff; Thu, 01 Aug 2019 16:41:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E44E3AFA1;
 Thu,  1 Aug 2019 16:41:07 +0000 (UTC)
Message-ID: <4027201b6128b3f2b0ab941dc473ab143da64be2.camel@suse.de>
Subject: Re: [PATCH 5/8] arm64: use ZONE_DMA on DMA addressing limited devices
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>
Date: Thu, 01 Aug 2019 18:40:50 +0200
In-Reply-To: <e35dd4a5-281b-d281-59c9-3fc7108eb8be@arm.com>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-6-nsaenzjulienne@suse.de>
 <20190731170742.GC17773@arrakis.emea.arm.com>
 <d8b4a7cb9c06824ca88a0602a5bf38b6324b43c0.camel@suse.de>
 <e35dd4a5-281b-d281-59c9-3fc7108eb8be@arm.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_094109_815921_10A235D4 
X-CRM114-Status: GOOD (  19.18  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 wahrenst@gmx.net, eric@anholt.net, marc.zyngier@arm.com,
 frowand.list@gmail.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, mbrugger@suse.com,
 akpm@linux-foundation.org, Will Deacon <will@kernel.org>, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============4564154769566131230=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4564154769566131230==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-qAJVJtco/gH4l0Ax6g8O"


--=-qAJVJtco/gH4l0Ax6g8O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-08-01 at 17:07 +0100, Robin Murphy wrote:
> On 2019-08-01 4:44 pm, Nicolas Saenz Julienne wrote:
> > On Wed, 2019-07-31 at 18:07 +0100, Catalin Marinas wrote:
> > > On Wed, Jul 31, 2019 at 05:47:48PM +0200, Nicolas Saenz Julienne wrot=
e:
> > > > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > > > index 1c4ffabbe1cb..f5279ef85756 100644
> > > > --- a/arch/arm64/mm/init.c
> > > > +++ b/arch/arm64/mm/init.c
> > > > @@ -50,6 +50,13 @@
> > > >   s64 memstart_addr __ro_after_init =3D -1;
> > > >   EXPORT_SYMBOL(memstart_addr);
> > > >  =20
> > > > +/*
> > > > + * We might create both a ZONE_DMA and ZONE_DMA32. ZONE_DMA is nee=
ded
> > > > if
> > > > there
> > > > + * are periferals unable to address the first naturally aligned 4G=
B of
> > > > ram.
> > > > + * ZONE_DMA32 will be expanded to cover the rest of that memory. I=
f
> > > > such
> > > > + * limitations doesn't exist only ZONE_DMA32 is created.
> > > > + */
> > >=20
> > > Shouldn't we instead only create ZONE_DMA to cover the whole 32-bit
> > > range and leave ZONE_DMA32 empty? Can__GFP_DMA allocations fall back
> > > onto ZONE_DMA32?
> >=20
> > Hi Catalin, thanks for the review.
> >=20
> > You're right, the GFP_DMA page allocation will fail with a nasty dmesg =
error
> > if
> > ZONE_DMA is configured but empty. Unsurprisingly the opposite situation=
 is
> > fine
> > (GFP_DMA32 with an empty ZONE_DMA32).
>=20
> Was that tested on something other than RPi4 with more than 4GB of RAM?=
=20
> (i.e. with a non-empty ZONE_NORMAL either way)

No, all I did is play around with RPi4's memory size (1 GB vs 4 GB).

I'll see If I can get access to a dts based board with more than 4 GB, If n=
ot
I'll try to fake it. It's not ideal but I can set the limit on 3 GB and hav=
e
the 3 areas created (with and witouth an empty ZONE_DMA32).

On top of that, now that you ask, I realise I neglected all the ACPI based
servers. I have access to some so I'll make sure I test everything on them =
too
for the next series.

Regards,
Nicolas


--=-qAJVJtco/gH4l0Ax6g8O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1DFhIACgkQlfZmHno8
x/5YnAf/aih3gNCdpPnk9CDn+WHuChefMegomFiKPy7KLWGYmB9OrtzlXlYit3VU
z2zffpz7+B+tFBZWLyxyQfJ8sT8uogFFJR+HNsvucEC2z4cDMksEkCgYQRHcv5iq
4CDSPUrd5zuESxZjq3ne7sLGx0G41aVs7o+iKAaUls/WAhq7MbYiq8B/r9HPnS1/
qAxsHlnX0PASFIN3BCnr+1VSy+xbwpFNSNVfqLYtWRQZvI8ww3Epx/AbWcTKy3YC
3YbXITPMlA4Mf+0ROrmU4sf0dj/mdQkC6SYqPjTMqVYyzON4rJ/MvOChQDmEGPs6
WiNr9ZnC1GXA4QfwFXcRrfK85+Y0vw==
=e240
-----END PGP SIGNATURE-----

--=-qAJVJtco/gH4l0Ax6g8O--



--===============4564154769566131230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4564154769566131230==--


