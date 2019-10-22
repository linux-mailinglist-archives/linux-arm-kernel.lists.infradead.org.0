Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F77E02C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JM9s9YpU/zXpYI5/mLyQd0OYNeQnHE3l6dR6vH3oYgk=; b=jE18wSapcdOQX2g8lKgfnLKXJ
	te4RZYA3q/W13SbK+QVazsR8ssfwfgg0vdjvCKfmhbVy/Thpe64AFE0biYMvpZ44jZBhN6g64Ht34
	yaSrQx3KgZzH3b4Rasj5Oz3NRimdurhvkf8lg0SWykh9U5KX1hnBAJGDAyNgJXHITgE1K2BsLCiyy
	+/Bi8w+s2F/u5Lf1s0RwBiuZUTzqI+6i/7ZGNym6bVX+2+0QPme2DfWEVlXDVDNlomQy+NZ8EtW0I
	kMIGbV5/gZsUOUpx1pywcupnY03jl5dav0olniY0ukbzPLPx+5aXN7mrA3j3dKqqie1E1qfz8gNjd
	G11W+NyVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMsGU-0002ZQ-FM; Tue, 22 Oct 2019 11:23:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsGJ-0002YD-QA; Tue, 22 Oct 2019 11:23:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4AB83BA67;
 Tue, 22 Oct 2019 11:23:37 +0000 (UTC)
Message-ID: <1956a2c8f4911b2a7e2ba3c53506c0f06efb93f8.camel@suse.de>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Qian Cai <cai@lca.pw>, catalin.marinas@arm.com
Date: Tue, 22 Oct 2019 13:23:32 +0200
In-Reply-To: <AA6D37F1-A1B3-4EC4-8620-007095168BC7@lca.pw>
References: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
 <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
 <9208de061fe2b9ee7b74206b3cd52cc116e43ac0.camel@suse.de>
 <AA6D37F1-A1B3-4EC4-8620-007095168BC7@lca.pw>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_042340_140798_215177CD 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: f.fainelli@gmail.com, wahrenst@gmx.net, mbrugger@suse.com,
 marc.zyngier@arm.com, will@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 Rob Herring <robh+dt@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 phill@raspberrypi.org, Robin Murphy <Robin.Murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============9119352591659839101=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9119352591659839101==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ZViq16FRQSdNTssKSEjh"


--=-ZViq16FRQSdNTssKSEjh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-10-21 at 16:36 -0400, Qian Cai wrote:
> I managed to get more information here,
>=20
> [    0.000000] cma: dma_contiguous_reserve(limit c0000000)
> [    0.000000] cma: dma_contiguous_reserve: reserving 64 MiB for global a=
rea
> [    0.000000] cma: cma_declare_contiguous(size 0x0000000004000000, base
> 0x0000000000000000, limit 0x00000000c0000000 alignment 0x0000000000000000=
)
> [    0.000000] cma: Failed to reserve 512 MiB
>=20
> Full dmesg:
>=20
> https://cailca.github.io/files/dmesg.txt

OK I got it, reproduced it too.

Here are the relevant logs:

	[    0.000000]   DMA      [mem 0x00000000802f0000-0x00000000bfffffff]
	[    0.000000]   DMA32    [mem 0x00000000c0000000-0x00000000ffffffff]
	[    0.000000]   Normal   [mem 0x0000000100000000-0x00000097fcffffff]

As you can see ZONE_DMA spans from 0x00000000802f0000-0x00000000bfffffff wh=
ich
is slightly smaller than 1GB.

	[    0.000000] crashkernel reserved: 0x000000009fe00000 - 0x00000000bfe000=
00 (512 MB)

Here crashkernel reserved 512M in ZONE_DMA.

	[    0.000000] cma: Failed to reserve 512 MiB

CMA tried to allocate 512M in ZONE_DMA which fails as there is no enough sp=
ace.
Makes sense.

A fix could be moving crashkernel reservations after CMA and then if unable=
 to
fit in ZONE_DMA try ZONE_DMA32 before bailing out. Maybe it's a little over=
 the
top, yet although most devices will be fine with ZONE_DMA32, the RPi4 needs
crashkernel to be reserved in ZONE_DMA.

My knowledge of Kdump is limited, so I'd love to see what Catalin has to sa=
y.
Here's a tested patch of what I'm proposing:

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 120c26af916b..49f3c3a34ae2 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -76,6 +76,7 @@ phys_addr_t arm64_dma32_phys_limit __ro_after_init;
 static void __init reserve_crashkernel(void)
 {
        unsigned long long crash_base, crash_size;
+       phys_addr_t limit =3D arm64_dma_phys_limit;
        int ret;

        ret =3D parse_crashkernel(boot_command_line, memblock_phys_mem_size=
(),
@@ -86,11 +87,14 @@ static void __init reserve_crashkernel(void)

        crash_size =3D PAGE_ALIGN(crash_size);

+again:
        if (crash_base =3D=3D 0) {
                /* Current arm64 boot protocol requires 2MB alignment */
-               crash_base =3D memblock_find_in_range(0, ARCH_LOW_ADDRESS_L=
IMIT,
-                               crash_size, SZ_2M);
-               if (crash_base =3D=3D 0) {
+               crash_base =3D memblock_find_in_range(0, limit, crash_size,
SZ_2M);
+               if (!crash_base && limit =3D=3D arm64_dma_phys_limit) {
+                       limit =3D arm64_dma32_phys_limit;
+                       goto again;
+               } else if (!crash_base && limit =3D=3D arm64_dma32_phys_lim=
it) {
                        pr_warn("cannot allocate crashkernel (size:0x%llx)\=
n",
                                crash_size);
                        return;
@@ -448,13 +452,13 @@ void __init arm64_memblock_init(void)
        else
                arm64_dma32_phys_limit =3D PHYS_MASK + 1;

-       reserve_crashkernel();
-
        reserve_elfcorehdr();

        high_memory =3D __va(memblock_end_of_DRAM() - 1) + 1;

        dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_li=
mit);
+
+       reserve_crashkernel();
 }

 void __init bootmem_init(void)


Regards,
Nicolas


--=-ZViq16FRQSdNTssKSEjh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2u5rQACgkQlfZmHno8
x/4iHgf+PQFTC5EpDaf7AMHfaNb/EWdnE8V/VYNH9X+f8B3poHPSE7yvhZSQO1vE
xebs4G5cpgU47VqnQ/MCpiozB5KKZcBpPnrUHL+pa3P/p8FQJkwLx+m/AR4ZOcX8
7v3pg5xDHcu/bfz0ge9i9JxPFG/KUKsK7PGpBuiLCmzLEUcXillwOnq9xtbhp9fJ
JMizkcYBz6K/PKG9/OIfgioOcMU1Cc0NtE+kexLO9XOeKGyjjeGzcc1gyu1CNEqQ
Z/kewRJYXRtJqw+sFCoYWtAKfQ+8H4Gcpx+wBU4B9Xtn/xmduQlv4fCSVIRkfW+N
pd1WccsfBrzNNkeJT3pnA8Xsny2lAw==
=0GmW
-----END PGP SIGNATURE-----

--=-ZViq16FRQSdNTssKSEjh--



--===============9119352591659839101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9119352591659839101==--


