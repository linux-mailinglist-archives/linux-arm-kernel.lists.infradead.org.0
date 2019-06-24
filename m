Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682D751F69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 02:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zftNikk/I5eNkSvqmuuA/jmXS/q13pWdT9uJ7CZMaxU=; b=mB3Hr9AHVI1B3AiF8Lz8QRsJh
	i1TpMw78x6NYoRynALijT/qO6OJSwLjeDGFjzw528LXgyS/oacl00iPaM7vroZN4vYVy0P99Hx8YD
	UWyBfZ2jpxkI4zVybwZWOzeC8RXk3dgeB6BZG7UdM0O28izw2L7f6XQZ7LO6cYUXVDPN6pBq0WlDe
	esdhsaNnzF94aPRfjoBEqF02ffZgC0HYEYMmkwYkVdS+LmJTeacEwGYLVdSucAzwXSgJYiW70p7gW
	jbcjrxQHxL/t4NAquF6ydXnEZN5ZnOgh7wcxYf/uXNKjoYqhCW0+achqeXOV3XPBEYsdhoCtnAdg0
	zTsQMGwMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYsg-0001yo-CL; Tue, 25 Jun 2019 00:00:14 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYsR-0001p5-Ax
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 00:00:00 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45XmW15DXgz9s8m;
 Tue, 25 Jun 2019 09:59:57 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561420797;
 bh=MlRWefn1WQf29R23/74S5YR8kTEjm7BUbnrp4hb4pGs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Wd5IZQ/TwZDx2wHrneA0oZBPbn144eU7UA14QqvfHVljPGEXvyabBasaKCgT+mRm2
 cS7uOuMg/5aT1DXv7dtFMo0aNoB4RUSMukrGCwh3b8VYQKCLX0sCz7G5hBgJzenJy0
 p+LynBuw7jqCC6sluWhO6gI33XxaSBTZ0EP95g+PWLqAkSvN+lwF3ZXIDJX7wkzNlD
 xIrDVxq5vrwMb27NRo+/9Ht9h1vZ0Ze+4bStfW7wK/xJLwnCuTq1DGFtU5nWf0Wvrb
 4ea1WVAFIumkAPD7VT/oPAyflc/XFrPpmK8BFfy8sBdcTrT3OWv72FzK2OSleV58lm
 S4l7QmUc+cDDQ==
Date: Tue, 25 Jun 2019 09:59:57 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: manual merge of the samsung-krzk tree with the
 arm-soc tree
Message-ID: <20190625095957.3b46dad2@canb.auug.org.au>
In-Reply-To: <20190625095906.06c97e0c@canb.auug.org.au>
References: <20190625095906.06c97e0c@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_165959_667471_5DAD9E02 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1976619303097704755=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1976619303097704755==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/j=1nnD556ddK5QITS5c.k+J"; protocol="application/pgp-signature"

--Sig_/j=1nnD556ddK5QITS5c.k+J
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Tue, 25 Jun 2019 09:59:06 +1000 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> Today's linux-next merge of the samsung-krzk tree got a conflict in:
>=20
>   arch/arm/configs/s3c6400_defconfig
>=20
> between commit:
>=20
>   6c48edcc955a ("ARM: configs: Remove useless UEVENT_HELPER_PATH")
>=20
> from the arm-soc tree and commit:
>=20
>   5a96019ce5cd ("ARM: defconfig: samsung: Cleanup with savedefconfig")
>=20
> from the samsung-krzk tree.
>=20
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc arch/arm/configs/s3c6400_defconfig
index 6eea99300f7f,34f9992ce8e9..000000000000
--- a/arch/arm/configs/s3c6400_defconfig
+++ b/arch/arm/configs/s3c6400_defconfig
@@@ -18,9 -15,12 +15,11 @@@ CONFIG_MACH_HMT=3D
  CONFIG_MACH_SMARTQ5=3Dy
  CONFIG_MACH_SMARTQ7=3Dy
  CONFIG_MACH_WLF_CRAGG_6410=3Dy
- CONFIG_AEABI=3Dy
  CONFIG_CMDLINE=3D"console=3DttySAC0,115200 root=3D/dev/ram init=3D/linuxr=
c initrd=3D0x51000000,6M ramdisk_size=3D6144"
  CONFIG_VFP=3Dy
 -CONFIG_UEVENT_HELPER_PATH=3D"/sbin/hotplug"
+ CONFIG_MODULES=3Dy
+ CONFIG_MODULE_UNLOAD=3Dy
+ # CONFIG_BLK_DEV_BSG is not set
  CONFIG_MTD=3Dy
  CONFIG_MTD_RAW_NAND=3Dy
  CONFIG_MTD_NAND_S3C2410=3Dy

--Sig_/j=1nnD556ddK5QITS5c.k+J
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0RY/0ACgkQAVBC80lX
0GyPwAf/fkACeIarbbcK2fwJPoxLF6bKdjgUZAHoFGlNpMrB0LvwJ3+lO/zdCrEE
lvMCss4LCr5E4RU9RuD8mG1BRoX2ltGwLcrsZITk8/dK6kd73wm8a/L5mZdk9eyd
+vxUFucdOtb8sB5RDJVfif4cvtJj85vTufKcPxL0tsYylCsiN53Qs1Ru3GT+kjmA
/QJa2hWRornUq953NkCkDJj1dDvNLKqd11XI+nqAmN1Ye1zEoHP4Z3x/MLhyFKuG
IgLDr5wxVlk+5N+vlzOtWCbKVX6aAbvLX70KahFXoHed6yjc/DkKX0ULEjYtZs8P
zgqkg3DWn3BZyB20Wvop8f5NZq7c2A==
=ptDH
-----END PGP SIGNATURE-----

--Sig_/j=1nnD556ddK5QITS5c.k+J--


--===============1976619303097704755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1976619303097704755==--

