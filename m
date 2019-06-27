Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F7958E68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 01:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jCkvaxLvKpd/nGUaVeKAOmVCHDIEv6t0Er45imcUYRg=; b=ha/o+ItazRbjefwF+P5Fjanby
	W4sDjTHCQeaerpOl3zJ4lS3DHs403WYDLsCniJSLx73VMGFaRa6ZWns1nXP1LQ1TVRPedpHjQXzc1
	IJm4OxtSiHDKSHVe+BNG+gl9xGjpzinlniE87078XJgc7r/HgVUJnEFn4DQ/f0rDSlWhX6G/atRkx
	38gT8yDQYBXS3u3vZb4HHnreX1G1tEES6JR7TovNf89oXyUDG+ZwWt+TM9jn0XalEGbPqE+5h1ZkJ
	PH6/QHe8Vxp5Eo3KUUxBO4OJZvbbSxUv0GRPjgpOLXgeri+5bbSHNmu62uI4kgPCMszDEHCkTMGqG
	5DkOu1Icg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgddS-0004AK-Tm; Thu, 27 Jun 2019 23:16:58 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgddI-00048t-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 23:16:49 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45ZbPg2THBz9s4V;
 Fri, 28 Jun 2019 09:16:39 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561677401;
 bh=Q05Nw0HVE70a4aFv0eZt8fTUgrJWUZka4HLCio2Chwg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hZ6aUdZswkJ1qrdAxLYiDmROiI57O1ISMTO7RITbgoPJy9YfaAsaAYz0gXdFiOTuJ
 sywRmB9gm/hNvf7WA5U3LZUCt6Ass/BVFEOf8r8kn41C5JwKXSj/jmjt+EYpWNndMF
 hR5J6+lwb9GHV6FaPO2i1aXrZ6k/68lRMCLag63VGL/J78dW6bCqRa3ejijip08vBL
 vyvGNRqtIDCwW73DKkKlXLi2E0Hk5UT6maES4QHVHgkCOP1S6/rylIjCK6fn3meDuy
 C0DH12wyw3+CsFTxh/D8QCnVbfQiDBgSeUCvqUCEZxdd/gzW2BiqEdoMks51BWouYb
 yrFs2/3+1cA/A==
Date: Fri, 28 Jun 2019 09:16:34 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Russell King <rmk@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: Re: linux-next: manual merge of the samsung-krzk tree with the arm
 tree
Message-ID: <20190628091634.12fdc79c@canb.auug.org.au>
In-Reply-To: <20190621093347.36987c97@canb.auug.org.au>
References: <20190621093347.36987c97@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_161648_614059_7E4C302E 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============4861678139832784941=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4861678139832784941==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/OJPZYXv17hFl./GZ7eVF/Ea"; protocol="application/pgp-signature"

--Sig_/OJPZYXv17hFl./GZ7eVF/Ea
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Fri, 21 Jun 2019 09:33:47 +1000 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>=20
> Today's linux-next merge of the samsung-krzk tree got a conflict in:
>=20
>   arch/arm/configs/exynos_defconfig
>=20
> between commit:
>=20
>   5f41f9198f29 ("ARM: 8864/1: Add workaround for I-Cache line size mismat=
ch between CPU cores")
>=20
> from the arm tree and commit:
>=20
>   9f532d26c75c ("ARM: exynos_defconfig: Trim and reorganize with savedefc=
onfig")
>=20
> from the samsung-krzk tree.
>=20
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
>=20
> diff --cc arch/arm/configs/exynos_defconfig
> index 9b959afaaa12,f140532ddca7..000000000000
> --- a/arch/arm/configs/exynos_defconfig
> +++ b/arch/arm/configs/exynos_defconfig
> @@@ -4,12 -5,7 +5,8 @@@ CONFIG_PREEMPT=3D
>   CONFIG_CGROUPS=3Dy
>   CONFIG_BLK_DEV_INITRD=3Dy
>   CONFIG_PERF_EVENTS=3Dy
> - CONFIG_MODULES=3Dy
> - CONFIG_MODULE_UNLOAD=3Dy
> - CONFIG_PARTITION_ADVANCED=3Dy
>   CONFIG_ARCH_EXYNOS=3Dy
> - CONFIG_ARCH_EXYNOS3=3Dy
>  +CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=3Dy
>   CONFIG_SMP=3Dy
>   CONFIG_BIG_LITTLE=3Dy
>   CONFIG_NR_CPUS=3D8

This is now a conflict between the arm-soc tree and the arm tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/OJPZYXv17hFl./GZ7eVF/Ea
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0VTlIACgkQAVBC80lX
0Gzb8AgAkr/zl+SHq23CQEifsWT7dCMUdarzVZNqwDzNzAK7Ml+qgj7cpDMQTOg/
VPJmPuk6shOgrW+gUg13OxdYguPjebJy/zpbzcQFbLIClLgQtJL7jtXc3aNDWChP
UIzDsK8u1L5qAm+yyQpcI/WCU60Vwjf1DL34ZQF5mde+VgbhnTQMyT9l7MwFBlJ+
sLsd0mOUjawtucfB7YFRyJI24YDgjR2wPFP/GlBqVnV+4ykij674fuhMf+o2gxA+
Id+/LskwXenuHwAY0QWuv+6FJ3vVUFPlK9+60KSA1qYjV+799cHJwk1lc7em0rLI
SKcwXFYSP6sLaqxHJQHLDMIJcn72hA==
=WKW+
-----END PGP SIGNATURE-----

--Sig_/OJPZYXv17hFl./GZ7eVF/Ea--


--===============4861678139832784941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4861678139832784941==--

