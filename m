Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87231822F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FV84orepOnpeRKFflNlO7snRjG9Gdv7VfdIlVrs5USc=; b=Dr+7uQJ0JriQwiA9uRvLV+8ee
	MQVc53wY7K2t8XuthGW5PMUGnniD2HjMOQmHLVyEKDq7rHPofMi97DdK5vGbZdzZNDbCWg4hZJQV7
	iVxXfOesoggi8sTmk14Epx+qAkuz1vTd8DF2lvpV2UOSxudLHVQrp6CZblq+NT+2LNtHFYJqWir2/
	pF8gTSk8Rc20MBwVSu7vAkfEfM8XF8mdnuVKyb2OPtZgHgPPmJBk8KBzNHeGt0bPWx96zyI0fJKb9
	zwamjjVL3NGAeI3VH9J+pih8qcQDNJTebmKW8AgnHBjRVxmrXzsV1UXi6vk2iRP2EArKlYH72FPRj
	oeV+mAnyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC7UT-0000VF-QW; Wed, 11 Mar 2020 19:58:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC7UH-0000UG-Oh; Wed, 11 Mar 2020 19:57:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 199F71FB;
 Wed, 11 Mar 2020 12:57:53 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EEF73F534;
 Wed, 11 Mar 2020 12:57:52 -0700 (PDT)
Date: Wed, 11 Mar 2020 19:57:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v3 4/4] mtd: spi-nor: remove mtk-quadspi driver
Message-ID: <20200311195750.GL5411@sirena.org.uk>
References: <20200306085052.28258-1-gch981213@gmail.com>
 <20200309121020.GD4101@sirena.org.uk>
 <2471214.x7VzW1FXlQ@localhost.localdomain>
 <4427171.IzkiAjLLdB@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <4427171.IzkiAjLLdB@localhost.localdomain>
X-Cookie: I'm a Lisp variable -- bind me!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_125753_891559_73AC4BC8 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org,
 gch981213@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7704404869844802559=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7704404869844802559==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TnYVF1hk1c8rpHiF"
Content-Disposition: inline


--TnYVF1hk1c8rpHiF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 09:11:29AM +0000, Tudor.Ambarus@microchip.com wrote:

> You can also create an immutable tag that I can merge in my spi-nor/next=
=20
> branch, so that Linus doesn't have to deal with the conflict.

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git tags/mtk-=
mtd-spi-move

for you to fetch changes up to e11e8473bcec748c3820636f11b986f611c9309b:

  mtd: spi-nor: remove mtk-quadspi driver (2020-03-11 19:56:08 +0000)

----------------------------------------------------------------
spi: Rewrite mtk-quadspi spi-nor driver with spi-mem

This patchset from Chuanhong Guo <gch981213@gmail.com> adds a spi-mem
driver for Mediatek SPI-NOR controller, which already has limited
support by mtk-quadspi. This new driver can make use of full quadspi
capability of this controller.

----------------------------------------------------------------
Chuanhong Guo (4):
      spi: make spi-max-frequency optional
      spi: add support for mediatek spi-nor controller
      dt-bindings: convert mtk-quadspi binding doc for spi-mtk-nor
      mtd: spi-nor: remove mtk-quadspi driver

 .../{mtd/mtk-quadspi.txt =3D> spi/spi-mtk-nor.txt}   |  15 +-
 drivers/mtd/spi-nor/Kconfig                        |   8 -
 drivers/mtd/spi-nor/Makefile                       |   1 -
 drivers/mtd/spi-nor/mtk-quadspi.c                  | 565 -----------------
 drivers/spi/Kconfig                                |  10 +
 drivers/spi/Makefile                               |   1 +
 drivers/spi/spi-mtk-nor.c                          | 689 +++++++++++++++++=
++++
 drivers/spi/spi.c                                  |   9 +-
 8 files changed, 708 insertions(+), 590 deletions(-)
 rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt =3D> spi/spi=
-mtk-nor.txt} (75%)
 delete mode 100644 drivers/mtd/spi-nor/mtk-quadspi.c
 create mode 100644 drivers/spi/spi-mtk-nor.c

--TnYVF1hk1c8rpHiF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5pQr0ACgkQJNaLcl1U
h9BuJgf+J4BVeDZ89cXm1ecHsmkFxwEbC3B2+ALUZTKsTZ4n5rM4aliKanEGJ5XX
llfEUpxE7QAnZE9vv8yoKCfE8njVTTmyYi2TBJKg0hrcXb1Q3pvbsQJTO8uXm57g
iajxxjrO0mdISzR0gErKYgJjdDyIUThSR89v5b7YXpWP4dHf7JSA4qwIWFhOLCZd
fX3G8RIjqXkSJx2yKPjK7+xkA7u7GvP7U9kt1Nynt1NOlRtGyUywUZblL5MhZ2MG
Bjln0lpBnhN285Mvntm49LmpoEnPdeHzbozsMVZHmD0+sdpGZ8PIQSiILb/mGCJf
jpg/Q++KbM01LDw26eSGVIsnqAFBdA==
=Neg9
-----END PGP SIGNATURE-----

--TnYVF1hk1c8rpHiF--


--===============7704404869844802559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7704404869844802559==--

