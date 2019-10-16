Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EF2D8BD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YSU3pgelh6+bVVaCLqVyMyaUTaVcVlqDhaomQdQf3tM=; b=Mq0ZaSio07EWZxzAMXKwEmoQl
	aguHiHMbElSJiZocF3VW8njvJaazNKk6gWukA6mIF9oLaJSaH3MYLsbAhEjAgiNBb099EZStLDIEv
	J5SIBvEOttI8x/vgdFEPpLs4/FrCVLnsHm3OhhPhyJHEb76pduZOZjWvNtbyxWQmapSlYr0ce1qP6
	t/D7ZcqinSNfx0Z2oRVZRPZwrnbEdGodb9tnygqyMVSYfQZ297TGJ5DY3TU37PLfQYZT6fZoYlha+
	Qn9z05UFqFAFtKTQKSj+iGNb1VhPD5M/uF+AB8U/2gnp04aH8bIgOy87AgOSKf7JJHqXbqsGqaKWT
	dhOfT+i2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKf4v-0005Rt-TO; Wed, 16 Oct 2019 08:54:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf4l-0005KU-2J
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:54:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 455E6AEC4;
 Wed, 16 Oct 2019 08:54:33 +0000 (UTC)
Message-ID: <52cb6d848c5d1d7d0e8dc359e9c3fe6c00ddceeb.camel@suse.de>
Subject: Re: [PATCH -next v2] arm64: mm: Fix unused variable warning in
 zone_sizes_init
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Nathan Chancellor <natechancellor@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Date: Wed, 16 Oct 2019 10:54:31 +0200
In-Reply-To: <20191016031107.30045-1-natechancellor@gmail.com>
References: <20191015224304.20963-1-natechancellor@gmail.com>
 <20191016031107.30045-1-natechancellor@gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_015435_261544_AD43F489 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8684782383161913748=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8684782383161913748==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-XL1H6941T8hAsoF71YoD"


--=-XL1H6941T8hAsoF71YoD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-15 at 20:11 -0700, Nathan Chancellor wrote:
> When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
> get disabled so there is a warning about max_dma being unused.
>=20
> ../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
> [-Wunused-variable]
>         unsigned long max_dma =3D min;
>                       ^
> 1 warning generated.
>=20
> Add an ifdef around the variable to fix this.
>=20
> Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>=20
> v1 -> v2:
>=20
> * Fix check for CONFIG_ZONE_DMA32 as pointed out by Will.
>=20
>  arch/arm64/mm/init.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 44f07fdf7a59..359c3b08b968 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -212,7 +212,9 @@ static void __init zone_sizes_init(unsigned long min,
> unsigned long max)
>  	struct memblock_region *reg;
>  	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
>  	unsigned long max_dma32 =3D min;
> +#if defined(CONFIG_ZONE_DMA) || defined(CONFIG_ZONE_DMA32)
>  	unsigned long max_dma =3D min;
> +#endif
> =20
>  	memset(zone_size, 0, sizeof(zone_size));
> =20

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!


--=-XL1H6941T8hAsoF71YoD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2m2sgACgkQlfZmHno8
x/7nEwf+LdOYEsxQAo4l3mtCRbpNKjXVZ2OFojqmoIsNuqZIqyPBsjYenMIxAvm2
ytDau7vxVIP2CaX3ozL3bHrVeEeYW4M3QUZxotu0iIP92s+6wJt5RVPP7eiwESrK
6m3eCPfbuYbk427JLLliu18X0cpDAgzPtLURkSSs44p9eTIQys0y+1HEexmArZr9
afEwVp0p+X9hkQPI3+Se3ezBFIzFr3Jo2dC8UTrNy0k4hwIi3MCVD/3FEtXsz1DA
YS+z16lCsKBk1jCZ9TDcbUsvZ0eaPUSvDpHFWhglqTR7YiDhyPoPrEvcf7DeP2Ah
KnaMCQsCM47uhChDL7WzDjudTAVKlw==
=KDT/
-----END PGP SIGNATURE-----

--=-XL1H6941T8hAsoF71YoD--



--===============8684782383161913748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8684782383161913748==--


