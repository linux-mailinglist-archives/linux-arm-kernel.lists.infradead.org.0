Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEF6137487
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OIVhWX3NDpVLHhlI8Mm9bLG/Vn7SmuA69/iozNExqvg=; b=JIx
	vYu5NilZVEImZ5vIs+rDrzdB+tm6f+QBIwBDf8damv4MiuAFi3M8ZFR7DU6DVnfcqeQ9B53ew8A0Y
	ERwnFQtr3Mgg9D5iY/mvxtNMl785RLqUzPfAoik+M+UgIYPn7fYLendQ0eSaZm2fUMg6KjzVY+Jxh
	OqsY+8Ue6MhGegT9pNuQhdOiqqud4zGWlrNaFAdryKzROK9emOgJHaVdD3whMdh5l3q3r314vGw69
	qKkZKUFqeG7DYlhiYeB+o5G1vAdPJoXAy1BtRT6VYHVydGVvB38hRcAAx2gLERXloaNt+HHcuQzAs
	rD4yESyAToVy2gAyxjSUN4qmUubsRSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxrO-0004ub-GN; Fri, 10 Jan 2020 17:14:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxrD-0004tu-LS
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:14:00 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E043C2072E;
 Fri, 10 Jan 2020 17:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578676439;
 bh=i/3Rkhg+onw8n7T/VkT50Gmhu1rS8tGgE1uTMz1qi7E=;
 h=Date:From:To:Cc:Subject:From;
 b=BS+8MukwxQhCqmIl4PxWKCdyw/FNZBVvhuT4I+nXAL/kz2E6iZnypLydQ9WBFiLyY
 Kcfl6DOewSwXSGLwmLqK4gx5IuS149WfwY87nRlFOrig2gmZ4vboXd2tN3WmVR7G2Y
 j7XGmerwhD0FKKNNy+MWl5lNH0IcvRf1yGkZm/XI=
Date: Fri, 10 Jan 2020 18:13:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.6
Message-ID: <3b09a9b4-9d46-4f05-9c4d-420b93f0f88b.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091359_727971_26CFE574 
X-CRM114-Status: GOOD (  10.41  )
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
Content-Type: multipart/mixed; boundary="===============5464140871655383670=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5464140871655383670==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.6

for you to fetch changes up to cb4132672f76954ddc234aa343b4d2a1f1b8437a:

  arm64: defconfig: Enable DRM_SUN6I_DSI (2020-01-02 10:30:35 +0100)

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

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhiw1QAKCRDj7w1vZxhR
xUYOAQCz9Q3Dl/sXaGupBJnst22DwfWG4KTs4yPe1S3ROfUjfAEAnDoQvdoC2zj0
OJC8Asc2ivwHsL36SomwmFulvshQyQE=
=Fbyw
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--


--===============5464140871655383670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5464140871655383670==--

