Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB2D4E1C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=30gcgZGJvbTcmQs48eGky0qqkXCd1lzoe9FANthqKdU=; b=bFh
	hkidSRg8DlVJrd5/cHTHQNrjxLYYDaS7HG/4wx7/btJm53MNwQPzfhFMTOYwY+5HJ656n54jYCTL1
	e+GZaNeJvado4eTNNH+BlVNxX6qRU2xnqGu3f6qZEoiotO3BjKApn4g3OZGD+60BFNm9LvVZjGtt1
	IaHXifdh383DpdnRdbqsikrE6+1m/J+gvtjhACuLKQciigA6Y9qjsXMskGy79j+dlnxvLbn8Ksxy4
	nJyiUspCn4RAg/96AWl+127i//TQSZQpTtFhbEL9Dzl5t/Cj0tuulX2jKQCJMLpPcZMV6opkRQdys
	yDAweD9W/3zjGSKPz5adcxQ1xC8rgxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heEgk-0007QG-ER; Fri, 21 Jun 2019 08:14:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEgU-0007Px-I0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:14:12 +0000
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 42F49240010;
 Fri, 21 Jun 2019 08:13:58 +0000 (UTC)
Date: Fri, 21 Jun 2019 10:13:58 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: arm@kernel.org
Subject: [GIT PULL] Allwinner arm64 defconfig Changes for 5.3
Message-ID: <e4e2f9cf-d986-4648-a196-fba54f048edf.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_011410_752413_A7EDF939 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4978778015394306703=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4978778015394306703==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7de43guf4k7bwpvr"
Content-Disposition: inline


--7de43guf4k7bwpvr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-config64-for-5.3-201906210813

for you to fetch changes up to dae335bcae86cab8f5e1df32d9c0ec200585a92d:

  arm64: defconfig: enable Allwinner DMA drivers (2019-06-11 10:28:18 +0200)

----------------------------------------------------------------
Our usual bunch of arm64 defconfig changes, this time mostly to enable
some missing drivers for the Allwinner A64.

----------------------------------------------------------------
Cl=E9ment P=E9ron (2):
      arm64: defconfig: enable sunxi watchdog
      arm64: defconfig: enable Allwinner DMA drivers

Yangtao Li (1):
      arm64: defconfig: add allwinner sid support


 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--7de43guf4k7bwpvr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQyRxgAKCRDj7w1vZxhR
xZxYAQCZY4SXQ3cIchVS5InYYFMPiiyAxrvtxo7ofvSAeBuFiAD/WJBBV4JEZBkM
RontHptH6wc9Ds4FZ7+vnf1G3Qi0EQc=
=996j
-----END PGP SIGNATURE-----

--7de43guf4k7bwpvr--


--===============4978778015394306703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4978778015394306703==--

