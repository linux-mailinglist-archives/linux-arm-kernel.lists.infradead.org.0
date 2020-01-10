Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADE413748A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aBOznEkMrdXyOAEYKiOB4NepVMm8K9bbin0WT2ucLsE=; b=hKr
	X6tEl+xnIfCnPGWkgIqLNj0CKQ8Y1YWrb9wZmRxe+AUYnOB9qm2tgOfwzOjSb+AYatI2euUNGqzGR
	2rlN+Qrb9JuADOEFpFoqno7xqz2iI2towLS8wgpii7ApGHtDM4prBf9RDWRZuQVHD5YbjOIPEgQlj
	YD+2UURMF3IUoyzm2mZiNDShjWFhzUOyj+rMG9wOsOs060g4SaAWVMC99MdU6tFFu7fTi6fpcEiqm
	Ji222i294AMhRSM6QhP6F54rRmKL3emQifKLN7A8CesDM8U5EqbNdzY7VGfQNZDGWSMDy3DIuoo8B
	1VTA87ahlrvS1GBK1sUcRZjprLDdfYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxsk-0006u9-Sm; Fri, 10 Jan 2020 17:15:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxsd-0006tC-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:15:29 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6F1720838;
 Fri, 10 Jan 2020 17:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578676527;
 bh=6HW4YcTS5JvGmjqApTlAciQIjqQiNINisUAImEh/Fvo=;
 h=Date:From:To:Cc:Subject:From;
 b=iBlYWnw1lC+MTn8Qzvz+8koj1CrFh6b9cZ8TDiZo1NsUnbd+ENrqhC1FgaKyVqLwa
 tFMMh4543p2zZ6nIz3+kARupegpQBJq0LUPhLaeOXIMFgwucGsnIz2nPqRrGkXoViD
 op/EjqNazDARU9tlvy10U/zEnNTfy89KZ1b2XNyQ=
Date: Fri, 10 Jan 2020 18:15:24 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.5
Message-ID: <582f4fda-38af-43e8-af58-957aee5b9dd8.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091527_490616_0541B0DD 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: multipart/mixed; boundary="===============3350800621718479855=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3350800621718479855==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the current release.

Thanks!
Maxime

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.5

for you to fetch changes up to 1c226017d3ec93547b58082bdf778d9db7401c95:

  ARM: dts: sun8i: a83t: Correct USB3503 GPIOs polarity (2019-12-17 09:37:14 +0100)

----------------------------------------------------------------
A couple of fixes for GPIO polarity and regulators on the A64
olinuxino.

----------------------------------------------------------------
Marek Szyprowski (1):
      ARM: dts: sun8i: a83t: Correct USB3503 GPIOs polarity

Stefan Mavrodiev (2):
      arm64: dts: allwinner: a64: olinuxino: Fix eMMC supply regulator
      arm64: dts: allwinner: a64: olinuxino: Fix SDIO supply regulator


 arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts            | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhixLAAKCRDj7w1vZxhR
xXoZAQCtvW9r644ZjToDSfLb+dWzpT9WeA5DiiyzaMR1yAaWFQD/dmcMgNJqg7jU
XS8sf39YQ9ojNjWfsYiyQ4mMS2WxfQc=
=i1Ub
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--


--===============3350800621718479855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3350800621718479855==--

