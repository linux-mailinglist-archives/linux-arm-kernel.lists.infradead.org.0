Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F375DFC2F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MMgicGfL1FgYj0YOZ7AoCZueBGzTdbCa6Gb5x5Gqb64=; b=V1OK1UcH7xhbI9RKu0JK5QJCX
	FZmBuwP/x9ej4d7rsNmdpNYwzVE/3oNUdjw8tLCzr4wqYruv0KoNkxM97k9ldH1A6A0ZnKLsNQe16
	Olw58iGPJAEtB1C/zAEgV/Fl6VD1Z/i8Ef8PrvkwsJMkGp0mNJ26z8xU/y+ZDmp6supFaekjkbOaT
	73jsjz/YVDdr7WmxVXVqFS6wOQcmwjzsMFTY7+Rr5wpOlLQEc44MqHBfWNhFwbG0Pg/JPrNmQHzsf
	z8inqMqVK09kEi9wUElGFk9/UoipyB2vqs16e3LFlMHRL3Mf3Gt3QhQUFw3BoZbLXfFmVE3X9mAXC
	B7eeLAdzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBie-0003f4-EZ; Thu, 14 Nov 2019 09:47:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBiV-0003e2-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:47:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B254CB14D;
 Thu, 14 Nov 2019 09:47:04 +0000 (UTC)
Message-ID: <33ba915ee84839286c69d048b15758a911c02844.camel@suse.de>
Subject: Re: [PATCH] dma-mapping: treat dev->bus_dma_mask as a DMA limit
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, Dave Hansen
 <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, Peter
 Zijlstra <peterz@infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo
 <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>, Jens Axboe
 <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Christoph
 Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 14 Nov 2019 10:47:00 +0100
In-Reply-To: <f74cd8a6-00bf-46c3-8e2e-d278e72d6e0e@arm.com>
References: <20191113161340.27228-1-nsaenzjulienne@suse.de>
 <f74cd8a6-00bf-46c3-8e2e-d278e72d6e0e@arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_014707_777068_67DCCC2E 
X-CRM114-Status: GOOD (  24.90  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter
 Anvin" <hpa@zytor.com>, Paul Burton <paulburton@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org, phil@raspberrypi.org,
 linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============5706516496816828565=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5706516496816828565==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-wOQXYnHdB19ozhE01VMB"


--=-wOQXYnHdB19ozhE01VMB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-13 at 20:34 +0000, Robin Murphy wrote:
> On 13/11/2019 4:13 pm, Nicolas Saenz Julienne wrote:
> > Using a mask to represent bus DMA constraints has a set of limitations.
> > The biggest one being it can only hold a power of two (minus one). The
> > DMA mapping code is already aware of this and treats dev->bus_dma_mask
> > as a limit. This quirk is already used by some architectures although
> > still rare.
> >=20
> > With the introduction of the Raspberry Pi 4 we've found a new contender
> > for the use of bus DMA limits, as its PCIe bus can only address the
> > lower 3GB of memory (of a total of 4GB). This is impossible to represen=
t
> > with a mask. To make things worse the device-tree code rounds non power
> > of two bus DMA limits to the next power of two, which is unacceptable i=
n
> > this case.
> >=20
> > In the light of this, rename dev->bus_dma_mask to dev->bus_dma_limit al=
l
> > over the tree and treat it as such. Note that dev->bus_dma_limit is
> > meant to contain the higher accesible DMA address.
>=20
> Neat, you win a "why didn't I do it that way in the first place?" :)

:)

> Looking at it without all the history of previous attempts, this looks=
=20
> entirely reasonable, and definitely a step in the right direction.
>=20
> [...]
> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > index 5a7551d060f2..f18827cf96df 100644
> > --- a/drivers/acpi/arm64/iort.c
> > +++ b/drivers/acpi/arm64/iort.c
> > @@ -1097,7 +1097,7 @@ void iort_dma_setup(struct device *dev, u64 *dma_=
addr,
> > u64 *dma_size)
> >   		 * Limit coherent and dma mask based on size
> >   		 * retrieved from firmware.
> >   		 */
> > -		dev->bus_dma_mask =3D mask;
> > +		dev->bus_dma_limit =3D mask;
>=20
> Although this preserves the existing behaviour, as in of_dma_configure()=
=20
> we can do better here since we have the original address range to hand.=
=20
> I think it's worth keeping the ACPI and OF paths in sync for minor=20
> tweaks like this, rather than letting them diverge unnecessarily.

I figure you mean something like this:

@@ -1085,19 +1085,15 @@ void iort_dma_setup(struct device *dev, u64 *dma_ad=
dr,
u64 *dma_size)
        }

        if (!ret) {
-               msb =3D fls64(dmaaddr + size - 1);
-               /*
-                * Round-up to the power-of-two mask or set
-                * the mask to the whole 64-bit address space
-                * in case the DMA region covers the full
-                * memory window.
-                */
-               mask =3D msb =3D=3D 64 ? U64_MAX : (1ULL << msb) - 1;
+               /* Round-up to the power-of-two */
+               end =3D dmaddr + size - 1;
+               mask =3D DMA_BIT_MASK(ilog2(end) + 1);
+
                /*
                 * Limit coherent and dma mask based on size
                 * retrieved from firmware.
                 */
-               dev->bus_dma_limit =3D mask;
+               dev->bus_dma_limit =3D end;
                dev->coherent_dma_mask =3D mask;
                *dev->dma_mask =3D mask;
        }

> Otherwise, the rest looks OK to me - in principle we could store it as=
=20
> an exclusive limit such that we could then streamline the min_not_zero()=
=20
> tests to just min(mask, limit - 1), but that's probably too clever for=
=20
> its own good.

Yes, that was my first intuition and in a perfect world I'd prefer it like
that. But as you say, it's probably going to cause more trouble than anythi=
ng.

Regards,
Nicolas


--=-wOQXYnHdB19ozhE01VMB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3NIpQACgkQlfZmHno8
x/4XNggAtctjofJ4XldVo+K1/P/rLILA/Y+cKWu8qACkyx4o0VedANdaK2iANvY3
NSFryeYrZSSQS9AGVUcXKwxvBIuLvE2BX6jm7CLSMgir0EIWBOQLWq/RidFZYqm7
OGFkiOaN1/+XW8Gh8tLu63CtAYXisZ7O7jsxv+qqlXqAmBpChHR3+NimdDsxevgf
zm6Uk7GEgwPcenlzAFYGaVyhIelfXxB64OJoGJZ3xybsLmBBoa8nlL/vC1QfzNsj
kGlc4Mc3c6ySI9vpf2Mgn/9pSkOoFvoOsXGEsrbz/qtrpQrC+gpBvYbeLZicVl6G
Z5EX/OFky1O9iMZTL99Sb2tEonSNlw==
=17Ah
-----END PGP SIGNATURE-----

--=-wOQXYnHdB19ozhE01VMB--



--===============5706516496816828565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5706516496816828565==--


