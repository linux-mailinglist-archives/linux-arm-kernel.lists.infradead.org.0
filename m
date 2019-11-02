Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87327ECFA7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 17:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=znuM/DMuR3EX4pjVREMgT4+nFhQ2eatXiKGeTMJHskc=; b=PFr
	Hznov1PmuulO61qCvL31HbzW6CXhS0VLKRtEOrk7hK1YAAnG2Q7UK3kOR/bNoG/aoXjrlxGmQR6ll
	pTiD4fa8kLRpPL9CATVTcCCzgguJXmvovdKNv1ropqoGMg4kI+K8ThX7lexUm4yuYPMscyGkhjMNS
	3qw4NEnwaFLvsWzIGLYANGpSZDXl0df+RO/ybk28DC0Fc/kd4vviHGaBZPjl+j8ipLf6GzRWkz5YK
	DJWMgybz7g12+W7zXiWj46J+YeqJYUJmyrZTwC1CP/bIOemHOiRHfJ76VuEXCoTQEJlxgswPc1lE0
	pZaHOob383RuC66xBYL8606ud85mxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvsL-0002Fd-1O; Sat, 02 Nov 2019 16:03:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvsD-0002Ey-My
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 16:03:35 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8F452080F;
 Sat,  2 Nov 2019 16:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572710613;
 bh=vv1smndr+tMqDzYrPPGRvRxkckqpn+ei6/3XkCB7Iao=;
 h=Date:From:To:Cc:Subject:From;
 b=FSvpGEdr/08/mwd34dia8iGlflqt3pCu7Mm2M14ddGOvegJTW14LedaL+R+qo5NK8
 ihoxqmy0O90QiEmA/gwfgHmwQ7qHac4lHes3S4vbUui6wf1aAnRpqk0RIWDMsvIJJu
 EfuhVmxgBsoCUKFtvrCTzew7m7WrrbFboQF8n8qA=
Date: Sat, 2 Nov 2019 17:03:30 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm Defconfig Changes for 5.5
Message-ID: <27125172-7ce8-427e-83f9-8e9bd69d50a4.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_090333_774931_9AA73D4F 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============1099663945551417116=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1099663945551417116==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4dh6t5ecyhaf4amj"
Content-Disposition: inline


--4dh6t5ecyhaf4amj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config-for-5.5-2

for you to fetch changes up to 9567832aba7f48834d28e3174909149c904808c8:

  ARM: configs: sunxi: Enable MICREL_PHY (2019-11-01 10:03:39 +0100)

----------------------------------------------------------------
Two new drivers enabled in sunxi_defconfig: one for the PHY found on
multiple boards, one for the new crypto driver.

----------------------------------------------------------------
Corentin Labbe (1):
      ARM: configs: sunxi: add new Allwinner crypto options

Priit Laes (1):
      ARM: configs: sunxi: Enable MICREL_PHY


 arch/arm/configs/sunxi_defconfig | 3 +++
 1 file changed, 3 insertions(+)

--4dh6t5ecyhaf4amj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb2o0gAKCRDj7w1vZxhR
xQuHAP0QjnqVwK4LR57Gno+BftpX7tQCxxZ+y1vV6dgP1WQDQgD+Kpb2Si+5t0co
49j18PJI7gNmwdKziWmB4R6kn3XNQQ8=
=rOFx
-----END PGP SIGNATURE-----

--4dh6t5ecyhaf4amj--


--===============1099663945551417116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1099663945551417116==--

