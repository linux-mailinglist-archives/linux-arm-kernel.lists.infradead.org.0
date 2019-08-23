Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC099B213
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/rN/ep99/f4Jn56XUMCtfgo1bhgnlzWVQ4+v8OERl6A=; b=Dit
	FV0P+msh9EIU8taeyvPsJFCPWdRmcQIaxRzv7f9ySfLsfd/AcJh00oYFbEsFRNq3EcDaG6aXllUQH
	uRUmKPtPSn3JJfbRRpRVMoWJ8s4UpUQiEqzBnC85cj27m6m7LaIsMc2EmT5smgh95OZM5YUNOlt+X
	UttrA35G0LZ5e7/lXdgKUBFc9G/1TY+i5JhWJVyzhmuFT2o/Q8CVA4k0rKXDW3aRtdl51UWYVrv9G
	7LfZBfjuO1KSU+POEiO0JAfBBS1NlNL1YvGzdS/FhIQUQzwgzZcgx2Yo3ejRs+keiI927naOwKYC/
	bccuUByodjsxa0P2DpPKCKB06O4a3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Adh-0007pV-DQ; Fri, 23 Aug 2019 14:34:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AdX-0007nS-2d
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:33:56 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48F102054F;
 Fri, 23 Aug 2019 14:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566570834;
 bh=2zcvP8PXMFxoGzESyiexes8QQKkGi2/5oYVNalsDfEc=;
 h=Date:From:To:Cc:Subject:From;
 b=VpkC53YQfEoHdb026w+Cfx9VEpPAEkcy4l33pQGiVhT7n/qlYLXiOIV5Dzhtf2S+o
 VKfQQNCbRslvGshPoUyJDNJW76xOATRxNRqgc8p4sem1d4ZNrv1xyat1KOfJSba7im
 m1LoCXUxy2O3fjwXP95+76iT2dHpo7m5LVUUrc10=
Date: Fri, 23 Aug 2019 16:33:52 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Drivers Changes for 5.4
Message-ID: <f9edfc8e-19b7-4b6e-897a-35f3bdcc8643.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073355_142534_B7F2337E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============0747318100992766047=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0747318100992766047==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lpzdywrxmcakfus4"
Content-Disposition: inline


--lpzdywrxmcakfus4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-drivers-for-5.4-2

for you to fetch changes up to 9d4db2f5f0e6dc4c0dfb94110fe488e9eb191748:

  bus: sunxi-rsb: Remove dev_err() usage after platform_get_irq() (2019-08-=
06 14:15:49 +0800)

----------------------------------------------------------------
Allwinner drivers patches for 5.4

One driver to remove a redundant error message in the Allwinner RSB
driver.
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/5PwAKCRDj7w1vZxhR
xUPDAQDCRzdhQef1Ki9OvNcT8o5tbxLK+YcWmmrlLAA4qe2TRQEA1/Um5ZS8s8p5
MKz27KwMjt3PHVc9AoQiEzCHETKb1AA=3D
=3DsafB
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Stephen Boyd (1):
      bus: sunxi-rsb: Remove dev_err() usage after platform_get_irq()


 drivers/bus/sunxi-rsb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--lpzdywrxmcakfus4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/5UAAKCRDj7w1vZxhR
xbFJAP4+gFocVqpoyJ87mH4rilVdaMGN+37QM6cMUU2i+2lfHQEAx0sFMuVX8SIL
XReDX5Zqf+jkWrpsFtZwkkZVcznyhQo=
=ongZ
-----END PGP SIGNATURE-----

--lpzdywrxmcakfus4--


--===============0747318100992766047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0747318100992766047==--

