Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6E151F75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 02:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ds39sAqI7/yPQTxDWdqCV6fbI0HncIBRzo3AuEI65vM=; b=G+0
	9bwBMz5hfwSyP6ihCA5sY8CFytFO6tumsmAG5FgO3vvnXU4kVyt44oqccZFFMOYkijL2uKgiHDSVU
	EphGgQaAzfzWDj0nbZl24LzBKqY5DRLn7TwN4AsALxrWJ5RGiIzNru/8hmSc3TUV2dzSxeLYgC+aW
	sezY8WyLV7fIhx9Bl5+d+kJwRFmFlnSnl64xorqZQNdvoSon+1lgZXfOJ3XdjytEc8s0wNqb1Dfp1
	8g4tAJDMFZyPJsJAKy6eu8VzJXjRs02vli8AQSLp9+JZGpybV+vFKDLiBC6TdyOSkkVTDbiUXczig
	4QAsdj8gP5nC6xEPi9HTWww9/uwdvIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYwE-0003TF-NJ; Tue, 25 Jun 2019 00:03:54 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYw2-0003Sx-FZ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 00:03:43 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45XmbJ1K0Cz9s3l;
 Tue, 25 Jun 2019 10:03:40 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561421020;
 bh=uxYIaPA9Islapamk5gE3dQb+BvPV85TXC7/AYf6Ybrw=;
 h=Date:From:To:Cc:Subject:From;
 b=fzQ1ADNOhGg2RdorKsEf1hdVUwI6MmArO7Z7j0IzEXiy/dmJs2DxkOMtDpnYBI/E8
 3Hxuaq9BpUBtN7HQvP/8nh7uK4hItmJtDCP8lzrJWxYxvdCKPmCjhdUAw8kFr4zoBL
 G+/9+Y+5Q4Fe+M1piesfl24xXnnbGEDOamfB3HuV3+SHKp46xRVe175ut6ujvlfSxt
 nVYSeucWeKbfvqxi9BsyjoQqwbiynBe/TeiJqZ5meNI1tnM0lQl+flVj2WMYHmvQuk
 +kPxuS46Jvo8guSCNV0orat0I1C6opIQkjEXkrfAxnoUuIBA7jlceeOgQK6yZfKFDh
 xJgqAMMCC0YJw==
Date: Tue, 25 Jun 2019 10:03:39 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the samsung-krzk tree with the arm-soc
 tree
Message-ID: <20190625100339.6d7c1bd9@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_170342_701940_43A9D250 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>
Content-Type: multipart/mixed; boundary="===============5650446955669815081=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5650446955669815081==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/4YZKzyDAPHNnn/eu/Wz9c4q"; protocol="application/pgp-signature"

--Sig_/4YZKzyDAPHNnn/eu/Wz9c4q
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the samsung-krzk tree got a conflict in:

  arch/arm/mach-exynos/Makefile

between commit:

  3fe1ee40b2a2 ("ARM: use arch_extension directive instead of arch argument=
")

from the arm-soc tree and commit:

  24d2c73ff28b ("ARM: exynos: Only build MCPM support if used")

from the samsung-krzk tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc arch/arm/mach-exynos/Makefile
index 5ccf9d7e58d4,5abf3db23912..000000000000
--- a/arch/arm/mach-exynos/Makefile
+++ b/arch/arm/mach-exynos/Makefile
@@@ -14,5 -14,9 +14,5 @@@ obj-$(CONFIG_PM_SLEEP)		+=3D suspend.
 =20
  obj-$(CONFIG_SMP)		+=3D platsmp.o headsmp.o
 =20
- obj-$(CONFIG_MCPM)		+=3D mcpm-exynos.o
 -plus_sec :=3D $(call as-instr,.arch_extension sec,+sec)
 -AFLAGS_exynos-smc.o		:=3D-Wa,-march=3Darmv7-a$(plus_sec)
 -AFLAGS_sleep.o			:=3D-Wa,-march=3Darmv7-a$(plus_sec)
 -
+ obj-$(CONFIG_EXYNOS_MCPM)	+=3D mcpm-exynos.o
  CFLAGS_mcpm-exynos.o		+=3D -march=3Darmv7-a

--Sig_/4YZKzyDAPHNnn/eu/Wz9c4q
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0RZNsACgkQAVBC80lX
0Gzlnwf9GTpkLoUj3f/7R596jf/Jd1cry48ctgJ+Ykd28zaHeYs0U3MLbgpM8mKg
RPHDp1mnmJO1KfJQrs4Pb3j+EirGFIWzZe1IjU/86g/Ysz6n7KmUtpyw9y5D/yPk
TChuM2ycVT0vNwRntFrnHkT9AbbWqo9UUN5agkqLaRbryqGpQDdtlFXkYO7CdGRw
8d2lrDf4h94RZ1FIHjKDvOKUuHLF2Bz/TBmrq2ucMnB53VDPQtD6abCP0V9vRiGQ
Ew4FaFZWlcD4w5YcRMRRmTgZoqa8H8duGmTzhmPcwMiQ/+T8N5uyPaBESHMri3At
mpPyg0TmQVhNKtKU5qgRjc5KLeLHkQ==
=UYiD
-----END PGP SIGNATURE-----

--Sig_/4YZKzyDAPHNnn/eu/Wz9c4q--


--===============5650446955669815081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5650446955669815081==--

