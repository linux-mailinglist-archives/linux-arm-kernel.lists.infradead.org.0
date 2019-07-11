Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE48265464
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LkP13cKXz+kJcVSTBdwglIapvdVS9HlYS8XQrfP4UuI=; b=mKYKsX/LQCe5MBZN7/Ey2h3mf
	YckncK9jrmLW+/31gowdFOFvN45uMbvUHtqpMQUgJOfSwvh33KQvOAk/d100mnlpsWHEHswBNP2Jp
	hMcdP2f+1tvFLhQgeFFsVmM6c59mtuoMMquaEmyVpPBF4BPPI2a7jAnEtayxHwy5dkCjvBG1n712S
	6zglUYVCLESpTRhqrPwQVMvzRA81HlHuZiSNeYYx5Pvm/uzoQVOV3zkWPUgKASkyPICpRhDtW31Pr
	Bjb9FkvNUwhPwaZGY/MWQ4CiyaPmAA016FW8/FJ4SPZuUbBsZGYZXjKA6Ags2VnrxBEem8i+aIkG7
	cFGe9UzQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlW9M-0008Nj-FB; Thu, 11 Jul 2019 10:18:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlW9A-0008N8-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:17:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2A3A9AF9F;
 Thu, 11 Jul 2019 10:17:51 +0000 (UTC)
Message-ID: <fdde1be14a9ad2ddd08effb74ce0c362a2040aaa.camel@suse.de>
Subject: Re: Limiting the DMA zone in arm64
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Date: Thu, 11 Jul 2019 12:17:49 +0200
In-Reply-To: <20190711180535.60e0cb77@xhacker.debian>
References: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
 <20190711180535.60e0cb77@xhacker.debian>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_031752_881739_B3BA2306 
X-CRM114-Status: GOOD (  18.55  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4788316642085163818=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4788316642085163818==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-hWzENIDYyslLl04Ra+DX"


--=-hWzENIDYyslLl04Ra+DX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-11 at 10:15 +0000, Jisheng Zhang wrote:
> On Thu, 11 Jul 2019 11:51:57 +0200
> Nicolas Saenz Julienne wrote:
>=20
> > Hi,
> > I'm trying to bring up the new RPi4 on arm64, and running into issues w=
ith
> > DMA
> > allocations. The device has up to 4GB of ram, but AFAIK only the first =
GB of
> > ram can be used for DMA: the DMA address range is 0xc0000000-0xffffffff
> > which
> > is aliased to the first GB of memory 0x00000000-0x40000000.
> >=20
> > This is solved in arm32 using a board file with '.dma_zone_size =3D SZ_=
1G'.
> > But I
> > haven't found any similar mechanism for arm64. Any suggestions?
>=20
> maybe setting up of the dma-ranges in the soc bus in DT?
>=20
> soc {
> 	compatible =3D "simple-bus";
> 	dma-ranges =3D <0 0x40000000 0 0x40000000 0x40000000>;
> ...
> }

They are set-up like this (in the RPi foundation downstream kernel):

soc {
	/* Emulate a contiguous 30-bit address range for DMA */
	dma-ranges =3D <0xc0000000  0x0 0x00000000  0x3c000000>;
	...
}

> > Just it case it helps understand the issue, I managed to get things goi=
ng by
> > doing the following:
> >=20
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index f3c795278def..ec3cb7b76a76 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -407,7 +407,8 @@ void __init arm64_memblock_init(void)
> >=20
> >         /* 4GB maximum for 32-bit only capable devices */
> >         if (IS_ENABLED(CONFIG_ZONE_DMA32))
> > -               arm64_dma_phys_limit =3D max_zone_dma_phys();
> > +               arm64_dma_phys_limit =3D 0x40000000;
> >         else
> >                 arm64_dma_phys_limit =3D PHYS_MASK + 1;
> >=20
> > Regards,
> > Nicolas
> >=20
> >=20
> >=20
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> >=20
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.infradead.org_m=
ailman_listinfo_linux-2Darm-2Dkernel&d=3DDwICAg&c=3D7dfBJ8cXbWjhc0BhImu8wQ&=
r=3DwlaKTGoVCDxOzHc2QUzpzGEf9oY3eidXlAe3OF1omvo&m=3DWmuzr6hc5vH2mDGWO65GmjV=
fssfmIXNVvITrgjyYQIg&s=3DJeCwKaJWXU_gC66lnCTqMw9JlrV_t05V7axT8AEzNJA&e=3D


--=-hWzENIDYyslLl04Ra+DX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0nDM0ACgkQlfZmHno8
x/4fSwf8D2jGJk2OMBWbGrCyImwjxoHqNl2xjexlCH949isVP9QFjXiRgzrP1sDh
1dv8+eBRIq5LcPtK+FjWZ0+1fqXVMoKRszsghO5t8+whmk2cAWv17MWSykXBDoR8
4EhB0L4RSy50Ogzki+Hp8xzOO0PLkqd4EG1irp2McbR7mRVRj2KGV+z7AZubSA/q
tgUUCV1X8xIWHNA7MkvQN7Mp2YLKwDvd9cPo2343qkVvc84IVdU6rpgaZlUvmRci
R503bPbBzfu3dRUDEJcJhyXkGpaTbpBzqRBgi55ek/aOQXkeGhYdaeNDbyg501jm
0EV03ElNwfDsLGMszZ5xLiCN3Pumwg==
=sjQu
-----END PGP SIGNATURE-----

--=-hWzENIDYyslLl04Ra+DX--



--===============4788316642085163818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4788316642085163818==--


