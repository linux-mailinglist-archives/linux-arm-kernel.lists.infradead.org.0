Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F208C47B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 00:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a7LmUMNy0QmBDCxDggOHcz+oF/ntBL0kY/xsj0luaO8=; b=NGN
	kqtQlZ5Pv3qIbEq9h8MZetGiqoLcytVm18p6TgvcDtvNl8sYo0pitZ/j7PDWEl3gVZzRsszFGHszH
	kCwHZFbUEDybFB1Llic5E3d7fEuXY1bk3QKlIEiIOyUuVjgj9pe3TBrEQnwZuZsfn4ae9rJ7m7anB
	CXN0rDMiGuoVOQMNBTZex5vmr6ZWC0xw7XKCTL9eHAhtigN89NmrsjBSTNARYXKVZFFOyDrCpqBxM
	xlTZoR/jcfBrYmeNuTHaKBMmXJsBSg5BqOjdehcSP2GQKINWTOE5z9mBxdhJvYZY3LB0NjwYT2Hlo
	FMSJmsDexcUJl3MGaTdyGtensVUgRWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfcO-0002m0-5u; Tue, 13 Aug 2019 22:50:16 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfcG-0002OW-HL
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 22:50:10 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 467SbJ15qjz9sBF;
 Wed, 14 Aug 2019 08:50:04 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565736605;
 bh=z8UzHeUAlWaGfTsCQDaIbFrumXsCw0qF+4m8oeFkVbs=;
 h=Date:From:To:Cc:Subject:From;
 b=ez7AmR8IXa7fZfwsYlUqNBZ63TWJtOdyy5sD4t3Bwq3fsw9liQocwP4SWhHJ39VnF
 GkMgcywBrlpl3Np4PL0PSj732LTQFyiS4oFjGqeaN1IU/lheS63uh1JiSejOlzRtGU
 ZxqIuChuWG4lFOiZnUCPnhMAdBi8CW6j7hSXCmN68Y2P43wGI1ynla6rlkzOK8kdTK
 Io+wQhaXC4NXVTmke5FnT8GtsLPB/2ktaCx3Rjs0Whv7FoJZgppVFl/GONgBA/k5CY
 mJr2ngkHEkH4Zc+qbv6Yiv8v27PZV2WWsLftDXsmKN2XX93EqDuUotfO2ZqyLdZhAM
 DfUOtlSE7qMqg==
Date: Wed, 14 Aug 2019 08:49:49 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: build failure after merge of the arm-soc tree
Message-ID: <20190814084949.70867809@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_155008_803199_0AB15B7E 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============6470120070731230346=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6470120070731230346==
Content-Type: multipart/signed; boundary="Sig_/JMaBuXtewfH4O4vb9TMker2";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/JMaBuXtewfH4O4vb9TMker2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the arm-soc tree, today's linux-next build (arm
multi_v7_defconfig) failed like this:

arch/arm/Kconfig:720: syntax error
arch/arm/Kconfig:719: invalid statement
arch/arm/Kconfig:720: can't open file "arch/arm/mach-ks8695/Kconfig"

Caused by commit

  eb4f78f8b8cb ("ARM: remove ks8695 platform")

I applied the following patch for today

From: Stephen Rothwell <sfr@canb.auug.org.au>
Date: Wed, 14 Aug 2019 08:46:39 +1000
Subject: [PATCH] arm-soc: fix up bad rebase?

Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 arch/arm/Kconfig | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1597c542dc4f..769a853c8c6e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -716,12 +716,6 @@ source "arch/arm/mach-ixp4xx/Kconfig"
=20
 source "arch/arm/mach-keystone/Kconfig"
=20
-<<<<<<< HEAD
-source "arch/arm/mach-ks8695/Kconfig"
-=3D=3D=3D=3D=3D=3D=3D
-source "arch/arm/mach-lpc32xx/Kconfig"
->>>>>>> ARM: remove ks8695 platform
-
 source "arch/arm/mach-mediatek/Kconfig"
=20
 source "arch/arm/mach-meson/Kconfig"
--=20
2.20.1

--=20
Cheers,
Stephen Rothwell

--Sig_/JMaBuXtewfH4O4vb9TMker2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1TPo0ACgkQAVBC80lX
0GzT3Af/T+r4U6O/x8ljEwRM9bk6+lXhY/23ZKJfdTWGjmPAVblYXDwJV1TyY6qZ
eZtVOYC65rFZfY0tMGhnMaLUqdlsYfyOtaBWFAUh7bQIxBqnG+g7pczQlZ17kFwC
DobBEBnQoF1jO5wKgENxm18U1FJ7NFVijwQBZTqwr3A6MwpwF9xI0G06zpHSWJFh
g9U/CSUJLBNNqCg2tk6veogR89jQfblVZTFyTlUjkHUY/dfVuq8XvPVsniuArzUf
9lBXf6pM3F4tlUGH/kO3XiBdLdcUb8ULCbIWUSWBRh/39hPW45eskV8zfJRoWqKT
BXtjihCCiaClzY8kZonTTqetaUOSTw==
=4xXI
-----END PGP SIGNATURE-----

--Sig_/JMaBuXtewfH4O4vb9TMker2--


--===============6470120070731230346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6470120070731230346==--

