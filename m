Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDF61570CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kjHuiy2Bg6hGeXmQZBClEY9qtIfAtnRw2Yf1yPpZpRM=; b=I82
	s951eBxcONriIpqFLhsVSLdD0p20AkfWpj+mxfaw8SSJ8DTZbN6r2lsGb8SktQFd3ajOQNnqywR44
	sUA6X+bN/P5ertGwrQjFwIk1muL5k1PU8r5d+swToo3juC5Y2hK4t88CoyF9PDzC5FuFydsumiqnI
	l6p2ObGLBPXyxBtZFlJ9xCZesl6sCluaegZ+PZQGAi2lWP425vKsJ9rUYFyQPvlzm9/ZFjTNg+0xy
	0IawXsJ//taO9/t59POU60sf3splsFa6uai9fZTL3PVY7rW2HRT6is0G4Z3mPrWbbXD2oNOLAB7bf
	SQra0l6q4AM5UYfaf+MUjEFSzMNNlYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14Oh-0005zV-Lg; Mon, 10 Feb 2020 08:26:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14Ob-0005z8-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 08:26:22 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE589208C4;
 Mon, 10 Feb 2020 08:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581323180;
 bh=Of6g/DZM/2Yorfc4ePu5Dk86k2FtbHgQt20g4T+wA9M=;
 h=Date:From:To:Cc:Subject:From;
 b=WBURxpbJ4NR5olwG2O2wvpvF+nLXrDOYjKlxQhi7+chAPGGUdOFhPO5HIAmbS+WWX
 wpeFoUyXyVJhHwKxroZ0pXBKm6Ha3Xkl9EkYyF4ltGFjPeYFJkZIFQJl41CTlXwT5V
 ovvSta9uHihkpCrRI7Nv7cPBOH9Qw5SHac2fTtIw=
Date: Mon, 10 Feb 2020 09:26:17 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.6, Take 2
Message-ID: <283eb531-890f-4ab2-95b5-898301af9807.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_002621_464329_17D937ED 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============0606522165487970587=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0606522165487970587==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd, Olof,

As asked for in the round of PR for 5.6, here's the arm64 defconfig
changes we have for 5.6.

Thanks!
Maxime

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.6-2

for you to fetch changes up to 03c6bf4644287601bf10d0ed9f6137c1854d3e23:

  arm64: defconfig: Enable DRM_SUN6I_DSI (2020-02-10 09:23:23 +0100)

----------------------------------------------------------------
Two patches to enable the new thermal sensor driver found on newer
Allwinner SoCs and to enable the MIPI-DSI controller.

----------------------------------------------------------------
Jagan Teki (1):
      arm64: defconfig: Enable DRM_SUN6I_DSI

Yangtao Li (1):
      arm64: defconfig: Enable CONFIG_SUN8I_THERMAL


 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

--X1bOJ3K7DJ5YkBrT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkETqQAKCRDj7w1vZxhR
xfsaAP9jMywM/zipaq0R+1HHcGQIuxVJQNtGLJq3oLjKq6vZ4QD/QgVaBuMKeAb7
SO3isJH8xu+UqBztDhHNO+V4IDIU3QU=
=6G6M
-----END PGP SIGNATURE-----

--X1bOJ3K7DJ5YkBrT--


--===============0606522165487970587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0606522165487970587==--

