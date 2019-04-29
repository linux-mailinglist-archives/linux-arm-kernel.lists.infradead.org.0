Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F0CED67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 01:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d/tU0nOYscEJTENBDAlhNGKYDmPdKhIj75k4kK4UQn0=; b=ZC4
	1RzkjQmSH5I6tXEM4Uwtp4IRkltQn7Z8kByJz25JHdT4wrbIqkB7dydr/ZgRt1qpoSHz8xB4bbQ05
	iMaayT2zekjikB+GF2bL4ZHz/obb4T4+yCrsFmcK9w5RNZrfDpi7oND31ZD+UmP0GpryLvtKdAjsR
	iog9FLIrAisL6ltxANDjQecsfVrd+1t+qVbSUpMqU+Xw+FAu4ptyZqpeiysdgO4/dFpKoi5G4e6ij
	NGbDHZp/UOIkQJr7Dk+6RyCE2JYYcwUJiWB7iBHvWgrbPsptC54rclTlHIdh4xLrYuxWA4Ore3HNZ
	N7qWWDDfIIr6LtmOcjEpx7XRRZ6mULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLG1e-0002Ra-2S; Mon, 29 Apr 2019 23:49:34 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLG1W-0002Qo-QL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 23:49:28 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44tLwg6Ft6z9s3Z;
 Tue, 30 Apr 2019 09:49:23 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1556581763;
 bh=AmGnZ5frKGr/a9AEnQOUBXUPKwzH9/aZh2OD0hC2sjk=;
 h=Date:From:To:Cc:Subject:From;
 b=nAG4llwXRsZFMd7XGZZ2auR/BHLZSot9ddHphGAHtaXzS2tCSaM2vbBIKmCvnmHSK
 Nr5c9OiCrqAzxBkfs4GaW9D5Khx1tPZmNhbVQUA7HYJcRx3LDZGikL+3sw1KuCg0JY
 PVL2hS9EELtsq8TkufQuq+QBrPpV2xQCtwCCJ09FMGtRNST2yQmzXxk0CMsTja3vu9
 zwhrDZfsN0BjMH9f5upJ5mQMSDVDna8hBE8I7QtUL8gBnksMX74GRgAhN5i1WZt+6D
 w1LFHAF7dkbed6hnuMyFFaJT/3YTC166cnBeMOrPk3zhaBLOd7kSlS+wiJC0gAOBzI
 QUesxSvbv5kqA==
Date: Tue, 30 Apr 2019 09:49:23 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>, Arnd
 Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the imx-mxs tree with the arm-soc tree
Message-ID: <20190430094923.10e3be32@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_164927_143870_F085EB89 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============6036731471626006055=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6036731471626006055==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/Iw_hvswPpXbdgI0hpBQL2t2"; protocol="application/pgp-signature"

--Sig_/Iw_hvswPpXbdgI0hpBQL2t2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Shawn,

Today's linux-next merge of the imx-mxs tree got a conflict in:

  arch/arm64/configs/defconfig

between commit:

  7b0d021fbe41 ("arm64: defconfig: enable PCIE_ALTERA")

from the arm-soc tree and commit:

  2b4fd225df89 ("arm64: defconfig: Enable CONFIG_SPI_IMX")

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
index 5392c12ef3b7,eb31c20e9914..000000000000
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@@ -357,7 -365,7 +358,8 @@@ CONFIG_SPI=3D
  CONFIG_SPI_ARMADA_3700=3Dy
  CONFIG_SPI_BCM2835=3Dm
  CONFIG_SPI_BCM2835AUX=3Dm
 +CONFIG_SPI_NXP_FLEXSPI=3Dy
+ CONFIG_SPI_IMX=3Dy
  CONFIG_SPI_MESON_SPICC=3Dm
  CONFIG_SPI_MESON_SPIFC=3Dm
  CONFIG_SPI_ORION=3Dy

--Sig_/Iw_hvswPpXbdgI0hpBQL2t2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzHjYMACgkQAVBC80lX
0GxmfAgAno8fSN5vL9ATAuhtSUMt2B01kxbRiVjVC235N2aFwLRx3mvgQqoyPzW4
XVB5OPdHOcHW+fIM/pIQ2G85MqBph0KpQWhfYOoIIMNc9Ct5NkxSkLwtzPBhGddy
js+lV+iAt1fYRDOO8cKHUMznrYct7QkrGD+ToUf/kMCqCbfmEY6Jsxmk3Hw4nquO
WBgexu3qBJcxvQK7vwBrqSuoVkKTTJ7e/uZc1IFNYhDuZiGzLZO2ByLfkONiQ6/F
wqdqdLABU7htcBgAiQRxcca3PRWBpOovTfuvBfuYCxPgp3CFauNkV7KU5Oj3NoNZ
Ocj3qmNWhJ6fLm4xToHcMcXOv9q6Vw==
=QgVM
-----END PGP SIGNATURE-----

--Sig_/Iw_hvswPpXbdgI0hpBQL2t2--


--===============6036731471626006055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6036731471626006055==--

