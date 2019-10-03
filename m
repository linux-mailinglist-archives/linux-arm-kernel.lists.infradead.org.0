Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329CECA810
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9J17wJRnq8mDqIel0W+eIVCqj1wHbeWrReJEGqzpCW4=; b=LBlACGFx72cOEe2wCKtFBKPki
	y8UIZBSA9/3zWTpNGfFlmN8bEjtxFL5g41BMmPRFRIyBPGZKpOed5W12zP/TB3hACFAqazHKha5uT
	tXhw66V4tH5edBr5yG35aSM0mU25Ag9JHxafPsiFKU0IP2Ad7VbeHaPRO2gJL7M3kiHLhAPaUA4Ap
	a1hpLDh6jhzvdIm/SaIsLM92hVqTzdqGxxCJ2AnBJ8wwSmAycD7jeZx4OjsstrKvRnYzOwlG6cLtl
	UKc3RVotG16VNmDhwy3nd2TXrcbJ8oI9BunM0vpP36WZ4uvrKbf+JLm+z/2ojgbv/Ao6KlwrSsXnA
	/rpsZz14Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4bn-0003bf-Mm; Thu, 03 Oct 2019 17:09:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4bf-0003aL-VM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:09:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 52999B190;
 Thu,  3 Oct 2019 17:09:32 +0000 (UTC)
Message-ID: <3853cd8425743b4991f5d599ec1c0fbbf4232f95.camel@suse.de>
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>, Guillaume
 Gardet <Guillaume.Gardet@arm.com>, Adrian Hunter <adrian.hunter@intel.com>
Date: Thu, 03 Oct 2019 19:09:30 +0200
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_100936_301459_3639D18A 
X-CRM114-Status: GOOD (  15.94  )
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: multipart/mixed; boundary="===============3324605051170936829=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3324605051170936829==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Ix9TQYjbsAOkefZjezfO"


--=-Ix9TQYjbsAOkefZjezfO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-09-28 at 14:07 +0200, Stefan Wahren wrote:
> This series adds minimal support for the new Raspberry Pi 4, so we are ab=
le
> to login via debug UART.
>=20
> Patch 1-2:   Fix some DT schema warnings
> Patch 3-4:   Prepare DTS for the new SoC BMC2711
> Patch 5-7:   Add Raspberry Pi 4 DTS support
> Patch 8:     Update MAINTAINERS
>=20
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a prelimina=
ry
> datasheet [1] and reduced schematics [2].
>=20
> Known issues:
> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
> Nicolas Saenz Julienne investigates on that issue. As a temporary workaro=
und
> i reverted the following patch to test this series:
>=20
> 79a98672 "dma-mapping: remove dma_max_pfn"
> 7559d612 "mmc: core: let the dma map ops handle bouncing"

[ adding Matthias and Guillaume who first saw this ]
[ also adding Adrian Hunter just in case ]

Hi,
we stubled upon a bug in RPi's sdhci-iproc while testing this series.

It only shows-up on slow SD cards, the class 4 ones. On each SD operation w=
e
get the following warning:

[    2.093328] mmc1: Got data interrupt 0x00000002 even though no data oper=
ation was in progress.
[    2.102072] mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SDHCI REGI=
STER DUMP =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[    2.108603] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
[    2.115134] mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
[    2.121664] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
[    2.128195] mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
[    2.134725] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
[    2.141255] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
[    2.147785] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
[    2.154314] mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
[    2.160843] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
[    2.167373] mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
[    2.173902] mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
[    2.180432] mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
[    2.186961] mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
[    2.193490] mmc1: sdhci: Host ctl2: 0x00000001
[    2.197992] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xec040208
[    2.204521] mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Aside from the serial console noise the RPi still boots alright. But as it'=
s
printing one of these per SD operation which is a lot...

I've been able to reproduce this both with arm and arn64 on multiple SD car=
ds.
Just copying the contents of a class 4 card into a class 10 one fixes the
issue.

Any ideas?

Regards,
Nicolas


--=-Ix9TQYjbsAOkefZjezfO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2WK0oACgkQlfZmHno8
x/4z/gf/bgKAQ7B78/8mBvESG1i3VvI7BH3uv7umwrCL8SrGUWyrXiHLmiXVDd2+
OAY9vm3OEdKw9qWVRKNvr029RE/csvFI7SibAwny6Rc5Y8cno2X+dXAIMr47zfQd
RKvwlaZN9EgpJfM8dgMudUeSb73VuXMk148Fsi97DP/yjYPd3ofpTBPj2Ps/2W9I
LOBJApYGDh6s6w2I7d7XMLb2Z5ErILbmx3Q8+DuF2MAFUY95Q5G72m0Gx5skYrbl
pjGnYNqce7c9WtyhNzzFvQNi9qiVrzD1S/H5CUuTX2/Db9DnEbHiD4R8I7fKTpPX
IVuRxWxwDwsfeswOBP9caCrg+50JDw==
=FKHG
-----END PGP SIGNATURE-----

--=-Ix9TQYjbsAOkefZjezfO--



--===============3324605051170936829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3324605051170936829==--


