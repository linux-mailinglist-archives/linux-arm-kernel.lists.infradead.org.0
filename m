Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E505EDEFC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J/ybsWqBSzRuvZODEbPfDGG7956bgOhMZdSDkAxiVm4=; b=Fkfpp2R1/2JvCpBwzMQRzpkHo
	3wBGaCURGoWZlqwmwSbpNphzr6qK6CmsO2Z5N6DnwkRHBj/V27zdGA+7fFLqh3JJ9lWFzJIOrkPTX
	6vcLveqejyJ3wMld+/wgrW97dF3E+1tSJNI0SPr3T9cq4cu24C2khdCbl4FVpTw0t63FYqOnbxT4K
	bQ2nXYx1cErd6t8q9d+jacJ8epQeFoyG/C/gVFc6v3/frdX+gTDPMfpVzQXB8nYMVxIIe2hV2KCjs
	CuPIr5XITLfZkqvFd1reNsZuMFQBYpsLwtuvJn8l98+aVHF2CHvuzyqiecApN0ynzpU0ds2t06P0a
	Ack7tSghw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYmc-00043s-CZ; Mon, 21 Oct 2019 14:35:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYmR-000436-6F; Mon, 21 Oct 2019 14:35:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 98FCAAE65;
 Mon, 21 Oct 2019 14:35:27 +0000 (UTC)
Message-ID: <78caa5bcfc0d59e8ec5d6b7060df76896d25248b.camel@suse.de>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Qian Cai <cai@lca.pw>
Date: Mon, 21 Oct 2019 16:34:58 +0200
In-Reply-To: <3956E54B-6C7A-4C47-B9B6-75F556EFD3F5@lca.pw>
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
 <3956E54B-6C7A-4C47-B9B6-75F556EFD3F5@lca.pw>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073531_380018_26E9EC2D 
X-CRM114-Status: GOOD (  15.08  )
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
Cc: linux-rpi-kernel@lists.infradead.org, f.fainelli@gmail.com, will@kernel.org,
 marc.zyngier@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mm@kvack.org, mbrugger@suse.com,
 wahrenst@gmx.net, phill@raspberrypi.org, robin.murphy@arm.com,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============2009750443489188934=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2009750443489188934==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-h82UrL74CNp2lRPKbz+/"


--=-h82UrL74CNp2lRPKbz+/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-10-21 at 10:15 -0400, Qian Cai wrote:
> > On Sep 11, 2019, at 2:25 PM, Nicolas Saenz Julienne <nsaenzjulienne@sus=
e.de>
> > wrote:
> >=20
> > So far all arm64 devices have supported 32 bit DMA masks for their
> > peripherals. This is not true anymore for the Raspberry Pi 4 as most of
> > it's peripherals can only address the first GB of memory on a total of
> > up to 4 GB.
> >=20
> > This goes against ZONE_DMA32's intent, as it's expected for ZONE_DMA32
> > to be addressable with a 32 bit mask. So it was decided to re-introduce
> > ZONE_DMA in arm64.
> >=20
> > ZONE_DMA will contain the lower 1G of memory, which is currently the
> > memory area addressable by any peripheral on an arm64 device.
> > ZONE_DMA32 will contain the rest of the 32 bit addressable memory.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> >=20
> > ---
>=20
> With ZONE_DMA=3Dy, this config will fail to reserve 512M CMA on a server,
>=20
> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
>=20
> CONFIG_DMA_CMA=3Dy
> CONFIG_CMA_SIZE_MBYTES=3D64
> CONFIG_CMA_SIZE_SEL_MBYTES=3Dy
> CONFIG_CMA_ALIGNMENT=3D8
> CONFIG_CMA=3Dy
> CONFIG_CMA_DEBUGFS=3Dy
> CONFIG_CMA_AREAS=3D7
>=20
> Is this expected?

Not really, just tested cma=3D512M on a Raspberry Pi4, and it went well. Th=
e only
thing on my build that differs from your config is CONFIG_CMA_DEBUGFS.

Could you post more information on the device you're experiencing this on? =
Also
some logs.

Regards,
Nicolas


--=-h82UrL74CNp2lRPKbz+/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2twhIACgkQlfZmHno8
x/4U7Qf/ZdG/T1u3Mhd7QimbgwhtDy+7HOxKrFVl2JndkuRooQ8OQlTx7pwRnOow
auWVm83R9XgT9N2n6+0ZHYUWcgjmqoSkGurnJPeZjONQdFmEZDvcB/mgTb4u/a1N
QC79LCo67Gk2V7jdkVdsijNirVn4JfZQ+mFUDSd9CJkVsbdFLq00q/3z30xoiPNm
m1GVAN9xvxKouoYtmKJ50IZ87keEjg2+Fqvxubu2Kzjf2Vsfyl6IjJ2opV10JqmL
baHrRu5QJteP3WS/MIHp2VbGAz0wNaEJ7f7cHeow4vnWrKRPPHk80b0nyMXzCr8d
RjT2ZFo/VrFpdG8Ik6gtKmn2VdAeug==
=V9f2
-----END PGP SIGNATURE-----

--=-h82UrL74CNp2lRPKbz+/--



--===============2009750443489188934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2009750443489188934==--


