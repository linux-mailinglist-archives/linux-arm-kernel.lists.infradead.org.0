Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFC14E1BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+ze8SDBIZHxJTuZto6qxh3ownCe3ZxrY5HSZ3do6tvg=; b=bJz
	MSK9WLH3VozmCdah/N2+GYzIo2U4wZBCFVhOVXVanXNZcvHrw2mdpLyjbYuCgi9fyDKtW32SVrEWJ
	Hq31Bo07h4RoWM+ifGeETHhKaeyl9NBNl4cP6Ni3NEnxUERNBMZx8dU28RooWzvH6HLDYZX1jFblp
	01vEoYB/QKLhbXng2YmM3CILpsXOtA/+Ezz5xN8n57FepELptxYzVTiuYObzUm0aBVy9M4AMEq3JK
	mCJMFJZDtn+udMJpX/fvV+8MPEzSbZOOkG7AWw9yI8mQ/B1WQ/nSUxa9MFCcc7P2sinsoq8CeUYwM
	eG3t/lKFuY10uOr6yYJC3VxfmdhCA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heEg0-00079Y-1p; Fri, 21 Jun 2019 08:13:40 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEfk-00078l-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:13:26 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 0DE014000F;
 Fri, 21 Jun 2019 08:13:14 +0000 (UTC)
Date: Fri, 21 Jun 2019 10:13:14 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: arm@kernel.org
Subject: [GIT PULL] Allwinner H3/H5 Device Tree Changes for 5.3
Message-ID: <df322d29-330c-40b9-8e87-282e06bbf3dd.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_011324_932885_2A115AFB 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============2099218045288462597=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2099218045288462597==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="glpw7zjhg5fb3mpz"
Content-Disposition: inline


--glpw7zjhg5fb3mpz
Content-Type: text/plain; charset=us-ascii
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
/sunxi-h3-h5-for-5.3-201906210812

for you to fetch changes up to 9fbbbb7b8d637f7ca1d5c4e23452bf450c7cb05f:

  ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array (2019-05-29 09:27:=
56 +0200)

----------------------------------------------------------------
This time we only have a single patch for our command branch between
arm and arm64, a fix for the array syntax raised by our DT schemas.

----------------------------------------------------------------
Maxime Ripard (1):
      ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array


 arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts                 | 3 +=
--
 arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts                    | 3 +=
--
 arch/arm/boot/dts/sun8i-h3-orangepi-one.dts                          | 3 +=
--
 arch/arm/boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi                   | 3 +=
--
 arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts | 3 +=
--
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts         | 3 +=
--
 6 files changed, 6 insertions(+), 12 deletions(-)



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--glpw7zjhg5fb3mpz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQyRmgAKCRDj7w1vZxhR
xTc1AQChh0XVjbqc65HgcyBzm4TXxlvgt/MHtf284MmAhxclEAD/d22hdA4NBxBn
NFKaBMeh4owRd4xvnpI4x3b+hW/urQU=
=BWC/
-----END PGP SIGNATURE-----

--glpw7zjhg5fb3mpz--


--===============2099218045288462597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2099218045288462597==--

