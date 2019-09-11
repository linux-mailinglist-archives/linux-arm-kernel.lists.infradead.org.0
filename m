Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE29AFF6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 17:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MWDIA7ErzcWI2DwwgWP5TrqXrRWUuCUuyBIQ3XMxGHY=; b=fpz3gEoRJ6CSHalXidi5BNPYn
	61UiXSz4vjDvEy4TBiZCVLlvIfLUrOazSFw98vi0QeAp9CpM0nwdQ/OEYTp+ZBQGrxhMcdI+kX0nh
	S1tcW11fqgGZ2VfAUCGb0+RfPEViPaYUbvKoMOXE+Xn2WEodl6VN4dV+kKcyeUAGLiU6H3ajAwpVU
	uFZNfnUbQGmJn6sOy4gj6hG/Y6W1fxzOWl1H02Xo6+pEZvWN4cZlyezFHCL7+RFufY7NObPtRyUTx
	IcgGQpjQxe+pBN2hX5ijQMHypQn2mdRDyL1kVJsCuFcEzK99aEQycBNG/V42cfWAluCn7i5K5+tUT
	WBohl7Asw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i846e-0003My-FP; Wed, 11 Sep 2019 15:00:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i846I-0002J0-HE; Wed, 11 Sep 2019 15:00:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F3045B81C;
 Wed, 11 Sep 2019 15:00:02 +0000 (UTC)
Message-ID: <bf00a6cba91936a89d4495d7f73b874afeac2cb3.camel@suse.de>
Subject: Re: [PATCH v5 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Wed, 11 Sep 2019 17:00:00 +0200
In-Reply-To: <20190911143527.GB43864@C02TF0J2HF1T.local>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <20190909095807.18709-4-nsaenzjulienne@suse.de>
 <b0b824bebb9ef13ce746f9914de83126b0386e23.camel@suse.de>
 <20190911143527.GB43864@C02TF0J2HF1T.local>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_080006_905726_9B56D154 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 robh+dt@kernel.org, wahrenst@gmx.net, m.szyprowski@samsung.com,
 linux-riscv@lists.infradead.org, phill@raspberrypi.org,
 Will Deacon <will@kernel.org>, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7605957042783556132=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7605957042783556132==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-p7TAQdIbBeJ5BGhbbxNM"


--=-p7TAQdIbBeJ5BGhbbxNM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-09-11 at 15:35 +0100, Catalin Marinas wrote:
> On Wed, Sep 11, 2019 at 12:54:38PM +0200, Nicolas Saenz Julienne wrote:
> > On Mon, 2019-09-09 at 11:58 +0200, Nicolas Saenz Julienne wrote:
> > >  /*
> > > - * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(=
32)).
> > > It
> > > - * currently assumes that for memory starting above 4G, 32-bit devic=
es
> > > will
> > > - * use a DMA offset.
> > > + * Return the maximum physical address for a zone with a given addre=
ss
> > > size
> > > + * limit. It currently assumes that for memory starting above 4G, 32=
-bit
> > > + * devices will use a DMA offset.
> > >   */
> > > -static phys_addr_t __init max_zone_dma32_phys(void)
> > > +static phys_addr_t __init max_zone_phys(unsigned int zone_bits)
> > >  {
> > >         phys_addr_t offset =3D memblock_start_of_DRAM() & GENMASK_ULL=
(63,
> > > 32);
> > > -       return min(offset + (1ULL << 32), memblock_end_of_DRAM());
> > > +       return min(offset + (1ULL << zone_bits), memblock_end_of_DRAM=
());
> > >  }
> >=20
> > while testing other code on top of this series on odd arm64 machines I =
found
> > an
> > issue: when memblock_start_of_DRAM() !=3D 0, max_zone_phys() isn't taki=
ng into
> > account the offset to the beginning of memory. This doesn't matter with
> > zone_bits =3D=3D 32 but it does when zone_bits =3D=3D 30.
>=20
> I thought about this but I confused myself and the only case I had in
> mind was an AMD Seattle system with RAM starting at 4GB.

I found the issue on a Cavium ThunderX2 server. Oddly enough the memory sta=
rts
at 0x802f0000.

> What we need from this function is that the lowest naturally aligned
> 2^30 RAM is covered by ZONE_DMA while the rest to 2^32 are ZONE_DMA32.
> This assumed that devices only capable of 30-bit (or 32-bit), have the
> top address bits hardwired to be able access the bottom of the memory
> (and this would be expressed in DT as the DMA offset).

Ok, I was testing a fix I wrote under these assumptions...

> I guess the fix here is to use GENMASK_ULL(63, zone_bits).

...but this is way cleaner than my solution. Thanks!

Regards,
Nicolas


--=-p7TAQdIbBeJ5BGhbbxNM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl15C/AACgkQlfZmHno8
x/5f8ggAsuyzvV52JP8D4F3gMeBcgMlqN3+DQV47QfnPQoZyacvk5k1N3xUfcbNc
TnGiLoB3xsPta+yqccbFl2njg+FBjZc2Ja/+Natqxx+ulXxkIsp7eGP+yeWJiiw9
oUApF6wwL6WYXWn0H+ZoYfwjCFqUDGWuCUYP3K8vHSVytsTmYegU/B+9nvncBfmk
iF5Ql/Pd/TA0RLKvs2wftE8h889R2JSGWvdVMCIWWtC5qENC2ar2/ITluJ7kTCRX
9Ekkkh3L8fI6/qgPxKEcC8HuzO4aUTFlpWxxnfUMCd83wzWFWUUdOZ+rcaPpTMN2
ih1+8l3//QFXzpY5utTMqIWXxeKMKA==
=r2f7
-----END PGP SIGNATURE-----

--=-p7TAQdIbBeJ5BGhbbxNM--



--===============7605957042783556132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7605957042783556132==--


