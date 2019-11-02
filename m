Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7867AECFA8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 17:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y4qTRmUCCRCDekCtUypt72f28dQh4k8aEop9fA8pNbs=; b=T6O
	I5U5gs9eyp/wDPFC5Pe3fp3R1riSZmKPMGiRcqXIxZRm01o96tU2oO+gv+CqNAWyuhPbWZViN0lEN
	mzvXFj9SdnwLUvZslxYjCazldi1GoYbKjrCvowKfg2E1fePe97/f40pi5J6z1D7Pqp5E6t0MFb0Qf
	3i/4GKLWl0k7deN7Tu9nea5YbomGPcIdM14TsZgpyyqZ1m4wVx51M/GbsV1ERnn2imNTJbUfmS4HL
	g2ZrOuCiKwWBu60iCm3LcBFw1x1uCKwdblXhlXqxZpikdUt4krnJTD/Y3XyMy6X7xUpp4dIvYUYlx
	1EyrVaD8qV6eeMpzHqpeuarSYrQ8EUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvtM-0002VX-Ey; Sat, 02 Nov 2019 16:04:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvtF-0002V7-Gp
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 16:04:39 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A94572080F;
 Sat,  2 Nov 2019 16:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572710677;
 bh=XDr3/FFivQ0Orh+F2XDtBT4ApIFfGqiN72QXA1zEtcs=;
 h=Date:From:To:Cc:Subject:From;
 b=1ytpI/H+a6KdtKTAa75v+5iu/xeqfDkWu4ZFtTRJ67nHQj+YC9Ko289ensmaIkkqy
 y4zX1G2YmA4KwTt6xvATbyvAhXv1E9dt8AqLxPb9hh5kuq9x7fiAGkb0KfmzBmHx93
 R7h4FBg8vlo/x1AZWQoPqeEVSpJkKfKZONS6rOZE=
Date: Sat, 2 Nov 2019 17:04:34 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.5
Message-ID: <539241d6-9b2e-4d5b-bd63-f912cf6ebf96.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_090437_578420_138D4794 
X-CRM114-Status: GOOD (  10.74  )
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
Content-Type: multipart/mixed; boundary="===============3657252900099330787=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3657252900099330787==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j43yrtsacbxerqax"
Content-Disposition: inline


--j43yrtsacbxerqax
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.5-1

for you to fetch changes up to 2fabf6dd77014f19d45fc71c01f1b073c03df255:

  arm64: defconfig: add new Allwinner crypto options (2019-11-01 10:02:27 +0100)

----------------------------------------------------------------
One new patch to the arm64 defconfig to enable the new crypto engine
driver.

----------------------------------------------------------------
Corentin Labbe (1):
      arm64: defconfig: add new Allwinner crypto options


 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

--j43yrtsacbxerqax
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb2pEgAKCRDj7w1vZxhR
xW/TAP9i0mnwytXRdw3v8lKKUkLh73ZYyAENyp2FTrs6Dj0w8wEA5Nu8Gq8vv/Ph
PS4EoQ9EWB/NYzbqoVXsMmhzXY9zCgo=
=YF8j
-----END PGP SIGNATURE-----

--j43yrtsacbxerqax--


--===============3657252900099330787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3657252900099330787==--

