Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91388680D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YK1whkSexyn7tDmdf8CeYqMSUxQ6B/3S1juqUnxFV0o=; b=KR4OAcc2WrUa6OlaV52j4WRId
	E135TUnLFtotzDZEVmr9Ft/lvgTjMnqDdnh8bepjYhw1coPUrQMIR212++UDZCVc4HSRSaFaJxQtV
	HVaAm4qBW1gQggKQdeJYXhMI9/cNWeEf+m9mMht6D8YaBsSdKCvfk206OlyupQ/s/qGVYJq18PTTk
	EmaBXAerZ7z8vlg3yv16Yevx2lLhAlGnyZzhQH5XPm3KXcxnHVz4xH9P3giV9BHni9Sq7z8hsojTv
	x2EHkJtdyMC0Ri2MoI7NsbjizjP9zS9s5XGCtjc6K84LzoSX1ETWJ51a2x9eE3hSpnNZHjrKrV68o
	uTU2Kq4WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmFe-0005Mk-BM; Thu, 08 Aug 2019 17:30:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmFU-0005Lu-Hn; Thu, 08 Aug 2019 17:30:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E72A0AF4C;
 Thu,  8 Aug 2019 17:30:44 +0000 (UTC)
Message-ID: <6917ea286e76cb0f3f3bea23552a00d1b2a381de.camel@suse.de>
Subject: Re: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA
 addressable memory size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>
Date: Thu, 08 Aug 2019 19:30:42 +0200
In-Reply-To: <CAL_JsqJS6XBSc8DuK2sJApHtY4nCSFpLezf003YMD75THLHAqg@mail.gmail.com>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-4-nsaenzjulienne@suse.de>
 <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
 <2050374ac07e0330e505c4a1637256428adb10c4.camel@suse.de>
 <CAL_Jsq+LjsRmFg-xaLgpVx3miXN3hid3aD+mgTW__j0SbEFYjQ@mail.gmail.com>
 <12eb3aba207c552e5eb727535e7c4f08673c4c80.camel@suse.de>
 <CAL_JsqJS6XBSc8DuK2sJApHtY4nCSFpLezf003YMD75THLHAqg@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_103048_883798_58425232 
X-CRM114-Status: GOOD (  35.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-mm@kvack.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Matthias Brugger <mbrugger@suse.com>, "moderated
 list:BROADCOM BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============5860687532907909304=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5860687532907909304==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-aUnd1sGElH9S49gE7iVL"


--=-aUnd1sGElH9S49gE7iVL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-08-08 at 09:02 -0600, Rob Herring wrote:
> On Tue, Aug 6, 2019 at 12:12 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Hi Rob,
> >=20
> > On Mon, 2019-08-05 at 13:23 -0600, Rob Herring wrote:
> > > On Mon, Aug 5, 2019 at 10:03 AM Nicolas Saenz Julienne
> > > <nsaenzjulienne@suse.de> wrote:
> > > > Hi Rob,
> > > > Thanks for the review!
> > > >=20
> > > > On Fri, 2019-08-02 at 11:17 -0600, Rob Herring wrote:
> > > > > On Wed, Jul 31, 2019 at 9:48 AM Nicolas Saenz Julienne
> > > > > <nsaenzjulienne@suse.de> wrote:
> > > > > > Some SoCs might have multiple interconnects each with their own=
 DMA
> > > > > > addressing limitations. This function parses the 'dma-ranges' o=
n
> > > > > > each of
> > > > > > them and tries to guess the maximum SoC wide DMA addressable me=
mory
> > > > > > size.
> > > > > >=20
> > > > > > This is specially useful for arch code in order to properly set=
up
> > > > > > CMA
> > > > > > and memory zones.
> > > > >=20
> > > > > We already have a way to setup CMA in reserved-memory, so why is =
this
> > > > > needed for that?
> > > >=20
> > > > Correct me if I'm wrong but I got the feeling you got the point of =
the
> > > > patch
> > > > later on.
> > >=20
> > > No, for CMA I don't. Can't we already pass a size and location for CM=
A
> > > region under /reserved-memory. The only advantage here is perhaps the
> > > CMA range could be anywhere in the DMA zone vs. a fixed location.
> >=20
> > Now I get it, sorry I wasn't aware of that interface.
> >=20
> > Still, I'm not convinced it matches RPi's use case as this would hard-c=
ode
> > CMA's size. Most people won't care, but for the ones that do, it's nice=
r to
> > change the value from the kernel command line than editing the dtb.
>=20
> Sure, I fully agree and am not a fan of the CMA DT overlays I've seen.
>=20
> > I get that
> > if you need to, for example, reserve some memory for the video to work,=
 it's
> > silly not to hard-code it. Yet due to the board's nature and users base=
 I
> > say
> > it's important to favor flexibility. It would also break compatibility =
with
> > earlier versions of the board and diverge from the downstream kernel
> > behaviour.
> > Which is a bigger issue than it seems as most users don't always unders=
tand
> > which kernel they are running and unknowingly copy configuration option=
s
> > from
> > forums.
> >=20
> > As I also need to know the DMA addressing limitations to properly confi=
gure
> > memory zones and dma-direct. Setting up the proper CMA constraints duri=
ng
> > the
> > arch's init will be trivial anyway.
>=20
> It was really just commentary on commit text as for CMA alone we have
> a solution already. I agree on the need for zones.

Ok, understood :)

> > > > > IMO, I'd just do:
> > > > >=20
> > > > > if (of_fdt_machine_is_compatible(blob, "brcm,bcm2711"))
> > > > >     dma_zone_size =3D XX;
> > > > >=20
> > > > > 2 lines of code is much easier to maintain than 10s of incomplete=
 code
> > > > > and is clearer who needs this. Maybe if we have dozens of SoCs wi=
th
> > > > > this problem we should start parsing dma-ranges.
> > > >=20
> > > > FYI that's what arm32 is doing at the moment and was my first insti=
nct.
> > > > But
> > > > it
> > > > seems that arm64 has been able to survive so far without any machin=
e
> > > > specific
> > > > code and I have the feeling Catalin and Will will not be happy abou=
t
> > > > this
> > > > solution. Am I wrong?
> > >=20
> > > No doubt. I'm fine if the 2 lines live in drivers/of/.
> > >=20
> > > Note that I'm trying to reduce the number of early_init_dt_scan_*
> > > calls from arch code into the DT code so there's more commonality
> > > across architectures in the early DT scans. So ideally, this can all
> > > be handled under early_init_dt_scan() call.
> >=20
> > How does this look? (I'll split it in two patches and add a comment
> > explaining
> > why dt_dma_zone_size is needed)
> >=20
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index f2444c61a136..1395be40b722 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -30,6 +30,8 @@
> >=20
> >  #include "of_private.h"
> >=20
> > +u64 dt_dma_zone_size __ro_after_init;
>=20
> Avoiding a call from arch code by just having a variable isn't really
> better. I'd rather see a common, non DT specific variable that can be
> adjusted. Something similar to initrd_start/end. Then the arch code
> doesn't have to care what hardware description code adjusted the
> value.

Way better, I'll update it.


--=-aUnd1sGElH9S49gE7iVL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1MXEIACgkQlfZmHno8
x/4I5gf6A+XJGnTIx+91Jp1InIYL3ffBEX7UUGqmhdiznnad0gVF6JWh/Kq6dJyQ
zkCiCoziJ5AFuNeS3Akpa7psFTnLYsWWaeL+FzWvSvLntp6ti6URyBlx5v4JeKT2
QaGzJsdWWGEMXA8QIHk309B127xqqgKqFJKnOYubd1h7xdULE11Ht1Ur+mTlkur/
AEaSkGTAJHap13dIxCnV2cdHt8u/79mL/vDRSCDLmUrJxaOcvQPSDQHIK86j+cBb
OEzAaU89Ektf1Uq1GI5yjn0gBRcOiPw+TaMlJw4PcPWZN1Lfz8M9lb3+QZOrykTs
KgzRXlmzYbKR0CO/8rK+dbxSO+x9gg==
=JXPI
-----END PGP SIGNATURE-----

--=-aUnd1sGElH9S49gE7iVL--



--===============5860687532907909304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5860687532907909304==--


