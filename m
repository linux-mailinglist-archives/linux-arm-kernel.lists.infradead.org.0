Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B84D83875
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 20:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NcWcU5HbamT9rj04wcQjgsywKf105jJmmpDHG+potOE=; b=PXQxg6JX4IWC8jpI5i3mX4lxY
	K79Bvw/dcR2NKVq2CaCA+TJEeFkhGFnKL9ANd5fM2I+NOFaOcm3Q9V+sPbvEe8U33laIJgl2es+ud
	6QOz9kRUK+cxgLw1GckHm1EIyGbxhYwRGDo/rKN84aPzaaP4lHQe9Ne9rd/t9o30Xb2r/X9B8ObPS
	k5JdfXu2ibPYKXVAzVbFNCnYp65vBd5xSJcrX03SpEP93dLcURL50BDtE++8XE4dl7U4566IHHuic
	jS663jI3IXQL3ZGPeZSQ90ldUkXpNCMAgi3JggdllI/YPrChIdDme8ITJWOKjKhrbBZl1+ZTd2Tig
	r3IMB8GDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv3wk-0000B6-0H; Tue, 06 Aug 2019 18:12:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv3wc-00009L-R3; Tue, 06 Aug 2019 18:12:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A6E40AEF6;
 Tue,  6 Aug 2019 18:12:17 +0000 (UTC)
Message-ID: <12eb3aba207c552e5eb727535e7c4f08673c4c80.camel@suse.de>
Subject: Re: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA
 addressable memory size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>
Date: Tue, 06 Aug 2019 20:12:10 +0200
In-Reply-To: <CAL_Jsq+LjsRmFg-xaLgpVx3miXN3hid3aD+mgTW__j0SbEFYjQ@mail.gmail.com>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-4-nsaenzjulienne@suse.de>
 <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
 <2050374ac07e0330e505c4a1637256428adb10c4.camel@suse.de>
 <CAL_Jsq+LjsRmFg-xaLgpVx3miXN3hid3aD+mgTW__j0SbEFYjQ@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_111223_169929_5F35CDD0 
X-CRM114-Status: GOOD (  29.93  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org, "moderated list:BROADCOM
 BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Will Deacon <will@kernel.org>,
 Eric Anholt <eric@anholt.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Matthias Brugger <mbrugger@suse.com>, wahrenst@gmx.net,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============1948862156932385252=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1948862156932385252==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-BWDWLSX5DbZPpBq0FAfV"


--=-BWDWLSX5DbZPpBq0FAfV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Mon, 2019-08-05 at 13:23 -0600, Rob Herring wrote:
> On Mon, Aug 5, 2019 at 10:03 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Hi Rob,
> > Thanks for the review!
> >=20
> > On Fri, 2019-08-02 at 11:17 -0600, Rob Herring wrote:
> > > On Wed, Jul 31, 2019 at 9:48 AM Nicolas Saenz Julienne
> > > <nsaenzjulienne@suse.de> wrote:
> > > > Some SoCs might have multiple interconnects each with their own DMA
> > > > addressing limitations. This function parses the 'dma-ranges' on ea=
ch of
> > > > them and tries to guess the maximum SoC wide DMA addressable memory
> > > > size.
> > > >=20
> > > > This is specially useful for arch code in order to properly setup C=
MA
> > > > and memory zones.
> > >=20
> > > We already have a way to setup CMA in reserved-memory, so why is this
> > > needed for that?
> >=20
> > Correct me if I'm wrong but I got the feeling you got the point of the =
patch
> > later on.
>=20
> No, for CMA I don't. Can't we already pass a size and location for CMA
> region under /reserved-memory. The only advantage here is perhaps the
> CMA range could be anywhere in the DMA zone vs. a fixed location.

Now I get it, sorry I wasn't aware of that interface.

Still, I'm not convinced it matches RPi's use case as this would hard-code
CMA's size. Most people won't care, but for the ones that do, it's nicer to
change the value from the kernel command line than editing the dtb. I get t=
hat
if you need to, for example, reserve some memory for the video to work, it'=
s
silly not to hard-code it. Yet due to the board's nature and users base I s=
ay
it's important to favor flexibility. It would also break compatibility with
earlier versions of the board and diverge from the downstream kernel behavi=
our.
Which is a bigger issue than it seems as most users don't always understand
which kernel they are running and unknowingly copy configuration options fr=
om
forums.

As I also need to know the DMA addressing limitations to properly configure
memory zones and dma-direct. Setting up the proper CMA constraints during t=
he
arch's init will be trivial anyway.

> > > IMO, I'd just do:
> > >=20
> > > if (of_fdt_machine_is_compatible(blob, "brcm,bcm2711"))
> > >     dma_zone_size =3D XX;
> > >=20
> > > 2 lines of code is much easier to maintain than 10s of incomplete cod=
e
> > > and is clearer who needs this. Maybe if we have dozens of SoCs with
> > > this problem we should start parsing dma-ranges.
> >=20
> > FYI that's what arm32 is doing at the moment and was my first instinct.=
 But
> > it
> > seems that arm64 has been able to survive so far without any machine
> > specific
> > code and I have the feeling Catalin and Will will not be happy about th=
is
> > solution. Am I wrong?
>=20
> No doubt. I'm fine if the 2 lines live in drivers/of/.
>=20
> Note that I'm trying to reduce the number of early_init_dt_scan_*
> calls from arch code into the DT code so there's more commonality
> across architectures in the early DT scans. So ideally, this can all
> be handled under early_init_dt_scan() call.

How does this look? (I'll split it in two patches and add a comment explain=
ing
why dt_dma_zone_size is needed)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index f2444c61a136..1395be40b722 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -30,6 +30,8 @@
=20
 #include "of_private.h"
=20
+u64 dt_dma_zone_size __ro_after_init;
+
 /*
  * of_fdt_limit_memory - limit the number of regions in the /memory node
  * @limit: maximum entries
@@ -802,6 +805,11 @@ const char * __init of_flat_dt_get_machine_name(void)
        return name;
 }
=20
+static const int __init of_fdt_machine_is_compatible(char *name)
+{
+       return of_compat_cmp(of_flat_dt_get_machine_name(), name, strlen(na=
me));
+}
+
 /**
  * of_flat_dt_match_machine - Iterate match tables to find matching machin=
e.
  *
@@ -1260,6 +1268,14 @@ void __init early_init_dt_scan_nodes(void)
        of_scan_flat_dt(early_init_dt_scan_memory, NULL);
 }
=20
+void __init early_init_dt_get_dma_zone_size(void)
+{
+       dt_dma_zone_size =3D 0;
+
+       if (of_fdt_machine_is_compatible("brcm,bcm2711"))
+               dt_dma_zone_size =3D 0x3c000000;
+}
+
 bool __init early_init_dt_scan(void *params)
 {
        bool status;
@@ -1269,6 +1285,7 @@ bool __init early_init_dt_scan(void *params)
                return false;
=20
        early_init_dt_scan_nodes();
+       early_init_dt_get_dma_zone_size();
        return true;
 }
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index 2ad36b7bd4fa..b5a9f685de14 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -27,6 +27,8 @@ extern void *of_fdt_unflatten_tree(const unsigned long *b=
lob,
                                   struct device_node *dad,
                                   struct device_node **mynodes);
=20
+extern u64 dt_dma_zone_size __ro_after_init;
+
 /* TBD: Temporary export of fdt globals - remove when code fully merged */
 extern int __initdata dt_root_addr_cells;
 extern int __initdata dt_root_size_cells;

=20
Regards,
Nicolas



--=-BWDWLSX5DbZPpBq0FAfV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1JwvoACgkQlfZmHno8
x/5f/QgAsruOFQ8PvpoSHvG6DlzmdqSfRJK2v/9MyF59tpuvGoJUQggc4SObGIz8
/Nk2Md0j7gXdLjr+t1elpo6xBmJxLWhZPw7HfIx1ejSHv2QK+gJopm/BJ54gV8cl
oUh+Ed8eD1FBlYszwI3YRaKY/HXcQaZn97el4/AaCbztxkkAg1xEH/1L6XPwf2FC
j9/TMxpFyE6aWdQ5GtOzxL1RVmzOEYgpvsr+mKxOFHX9V5+8UXNnLDRDjR36Ms78
NVgFECrTr4rxiU2UJalTgyyPtch73aj8xMNKwHkOyiagITz9PhesPdVYy9sLWTM+
KTFFdX5XzhKpZAHyjtBWPWEKO34aqg==
=JTdS
-----END PGP SIGNATURE-----

--=-BWDWLSX5DbZPpBq0FAfV--



--===============1948862156932385252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1948862156932385252==--


