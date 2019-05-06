Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4C81433E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 02:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TOtRTrrPLLzysNLpUJFokLINdoNSXCoiiB3bXprUpcc=; b=EMD
	GJls13DfplEWaYgUzalrJKh8YpO+GcQ0p/Sx96zbpmpcDLNq4kMYHzKOx2ytDtcxBIm0LpUI/TTTO
	SuggTtCVMSG4EuWpThEQ3I3Ls/iiDF+QOyNFT9gOsRbDFEMIx5Wbn8vhCAd1ALrlA6uCOou7NNGtW
	LjIS3wbiMk8FFg40rDIEE2WV59g2BRV+4EGAY1vqbrEkqtqHiPZ/G+bglpsMOEwaV7GcEqCvRjv9H
	R6LF/3uDgX+vyrZ3LFR3elAvEFLD0xXwU3Q1U/VP3RdKD3Cc+w2Ja3pNa0QFFEs1KCL8KIodvn2fD
	ppbpFX5nIb0JRFs4PEMwRH59IC2t9yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNRjp-0005jz-8S; Mon, 06 May 2019 00:44:13 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNRjj-0005j7-A4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 00:44:08 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44y3rt3ZLdz9s5c;
 Mon,  6 May 2019 10:43:58 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1557103438;
 bh=DYb/Fo3rjzecDmRVo0EIW0NUlwZY2ddNIQj5kmZs1zU=;
 h=Date:From:To:Cc:Subject:From;
 b=o4cGyJL1ukGbDwOItQk5jX4tjemmtFswpvQVUdeBR0g+7WnbPQIxmGOe+EIpFBpoW
 ztSFCxMdg2EMM4sYd8KacbiqbHS0tOrodoHZIB2vcAm1cjnrPawBXlQ+DT5Tl2p/DZ
 wh7oBa5LKdlRA4O/0HvosSzdpJC9soggYVptkzf9CGe4yCoW+JAicRrlUlC4/kEYuG
 6bK+ygZpW928ln3U+JIl6rp7FyL1YM0YT1EywhPMhkb5On8fSxt5jUkWx7Ouhtxekb
 FSS5qxcZnbEvXBY9wHPKmg4M40DjkN+BeJQRKDkoVWTAboickXzxZmifH76xD3zY6k
 LAO0OQqTC2NjA==
Date: Mon, 6 May 2019 10:43:57 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>, Arnd
 Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the imx-mxs tree with the arm-soc tree
Message-ID: <20190506104357.18e10955@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_174407_515696_3F4016D3 
X-CRM114-Status: UNSURE (   7.36  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Dinh Nguyen <dinguyen@kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5402875722648685374=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5402875722648685374==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/4A5VfpcTk.9FVkm=94W1xPA"; protocol="application/pgp-signature"

--Sig_/4A5VfpcTk.9FVkm=94W1xPA
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the imx-mxs tree got a conflict in:

  arch/arm64/configs/defconfig

between commit:

  7b0d021fbe41 ("arm64: defconfig: enable PCIE_ALTERA")

from the arm-soc tree and commit:

  a9aa2a812255 ("arm64: defconfig: Enable CONFIG_SPI_IMX")

from the imx-mxs tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc arch/arm64/configs/defconfig
index 5392c12ef3b7,979a95c915b6..000000000000
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@@ -357,7 -365,7 +358,8 @@@ CONFIG_SPI=3D
  CONFIG_SPI_ARMADA_3700=3Dy
  CONFIG_SPI_BCM2835=3Dm
  CONFIG_SPI_BCM2835AUX=3Dm
+ CONFIG_SPI_IMX=3Dm
 +CONFIG_SPI_NXP_FLEXSPI=3Dy
  CONFIG_SPI_MESON_SPICC=3Dm
  CONFIG_SPI_MESON_SPIFC=3Dm
  CONFIG_SPI_ORION=3Dy

--Sig_/4A5VfpcTk.9FVkm=94W1xPA
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzPg00ACgkQAVBC80lX
0GzWQAf+IyIw7MKo75hxmAy5MsACq8sprZgHHDKKUik/Jdxj9t8Z/Ji47L8c6tEA
v4OyB5zWxmAUL6D03p19K/xTKSCoBtTCb/LOOl1w+Z0PP5FAuu/ySAdz9OuVp88V
mSfL9OJmTpsvoISDzXnY51TWGUGWe7yXQ0cvI2OSkocPQrRlwvPT2ppYIsx/TFtp
iQRUC7RzBFMLAbJbAok/tBQ8pYSsnty3bzKHeNLAibTi0BkKx89pkOz7DbHtl/ti
fOJqdZvtZJRVuA83ZkvInRrCdGbKyYu0wxepZhI4B2nxXl96ElQR0t89EZC0z1Rl
9Jyul/AKnX00dB9VOcuZxsTgvZW1TA==
=aEht
-----END PGP SIGNATURE-----

--Sig_/4A5VfpcTk.9FVkm=94W1xPA--


--===============5402875722648685374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5402875722648685374==--

