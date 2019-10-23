Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A88AE127A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 08:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hgO24h0Eqr18xwsjy8hH4BQxi3SpVqmT79WZoAAvmVA=; b=Zxu
	t9mTwH9UMh6Ofs4WB+a/iVZztNjNQxxtp3XLjJ+a8AL3+w9XWmHACZnWTHAODS2hoRmzYjKz/2QS0
	SCEA7kZCCRCEq1NrBJqYaC/ptBpcjNOhqSRWyL7wCoFgoILH1snskkBkxswU2Sxw39EIt8BT2ysoV
	zGyuUUVlQZKkg6NnVCF0xHsnJSC6+wQE4EplCuxob4CmtMfsw/4+0QYxE/9nRhm2Bqdem+HnXgbPU
	iIolMCAtnvgdal4z5tn2Z4gQfYOVWevEU8vMdK1V5wobBOLpIkMtfjdW2qm/l7kPhUGF3B9S3NVVv
	WBp5cRSD20/9qv8i3tS+N2P5Lnv9njw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNAUK-00017Y-On; Wed, 23 Oct 2019 06:51:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAUA-000176-Bn
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 06:51:11 +0000
Received: from localhost (unknown [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B5E62064A;
 Wed, 23 Oct 2019 06:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571813469;
 bh=h00rAttYtTFKii6zpiMn8jlNhSbrdv9o9nBfpFU/UwA=;
 h=Date:From:To:Cc:Subject:From;
 b=R1vSo/G+x7/LKBKD761kTdfeMoUgOoqfTweGmDrK7r4Hb4qbFgPirEV1zuqBmLM0y
 6uzSbbaQezbrR9s5aV2XT1k/SCu2RuObzOvz+ZsVAkboYNVIfuok0iLi099PkXXZGS
 nQNwArIhzlayUaeIlYdaX3Gpm7PT8kmZ3RKIz9Xc=
Date: Wed, 23 Oct 2019 08:51:06 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.4
Message-ID: <80085a57-c40f-4bed-a9c3-19858d87564e.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_235110_429225_EEF800AE 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============1752451464573253086=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1752451464573253086==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ougjxcxofy7lxf6v"
Content-Disposition: inline


--ougjxcxofy7lxf6v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the current release.

Thanks!
Maxime

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.4-1

for you to fetch changes up to cf03c691eb959f438c16d58ffd11f150b1a95b1e:

  ARM: dts: sun7i: Drop the module clock from the device tree (2019-10-07 14:12:09 +0200)

----------------------------------------------------------------
A number of fixes for this release, but mostly:
  - A fixup for the A10 CSI DT binding merged during the 5.4-rc1 window
  - A fix for a dt-binding error
  - Addition of phy regulator delays
  - The PMU on the A64 was found to be non-functional, so we've dropped it for now
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa/4RQAKCRDj7w1vZxhR
xU3XAQDYuCixpCCftKIhjcz+oultXqAJysDEE44dATwT1YfINgD/eBSwBw1l/Ni7
yOumUvRZ1fJC3NO8e7vh9cYN9yy5tgw=
=3/ru
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Jernej Skrabec (2):
      arm64: dts: allwinner: a64: pine64-plus: Add PHY regulator delay
      arm64: dts: allwinner: a64: sopine-baseboard: Add PHY regulator delay

Maxime Ripard (2):
      dt-bindings: media: sun4i-csi: Drop the module clock
      ARM: dts: sun7i: Drop the module clock from the device tree

Pragnesh Patel (1):
      media: dt-bindings: Fix building error for dt_binding_check

Vasily Khoruzhick (1):
      arm64: dts: allwinner: a64: Drop PMU node


 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml |  9 ++-----
 arch/arm/boot/dts/sun7i-a20.dtsi                                     |  5 +---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-plus.dts             |  9 +++++++-
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts        |  6 +++++-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi                        |  9 +-------
 5 files changed, 20 insertions(+), 18 deletions(-)

--ougjxcxofy7lxf6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa/4WgAKCRDj7w1vZxhR
xSw+AP9vbW0Ol7OAlG/FgfsiKgPo7ALmRnsbWh8ld+4Zl0Oj0QEAzgasgpHx7Omp
+UumZG3sbpaytxcDtg3qnauy+kiPswA=
=tAFr
-----END PGP SIGNATURE-----

--ougjxcxofy7lxf6v--


--===============1752451464573253086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1752451464573253086==--

