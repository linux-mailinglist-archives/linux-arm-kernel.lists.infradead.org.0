Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C86E1570CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:27:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aH3vqGvdO1u+O35KEwGMeFMNgHBxt2IUd7zfdd3fhbk=; b=RDi
	NIBw686RbDf3GBSsZ9m/SkYH6qbPHt6TpfjKzNp2SYUK3yrltavnUc5cI4QNbn83smMWrYl10kHOE
	RZzgBC5Q4B7TLDkRTfTROa6IttFnmySf9CBg2fDVGjAB85bT7WrSsOuvsxNP7zHawcl91y4Q+6JjO
	hkQOthjC4uW3cqlbasP3bhVDYvz8eHqcf2jGUaR/aP9qXZ2nxhJcNi6h+ZVfc5YZ9OcH4PvkFVoWS
	i0IFDiYyDx0YvXHHi14bMl9ccgWnnNRxAjW7+2hQJ5eNrWJ6HwJDUg/dSVstS5f1VCdBecWorQ/4D
	R2s5A1D4UQ1Se4tzWRUD899ECk5WFag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14Pa-0006Fk-Lv; Mon, 10 Feb 2020 08:27:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14PT-0006FQ-23
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 08:27:16 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F12B208C4;
 Mon, 10 Feb 2020 08:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581323234;
 bh=XwFEMM8L1IETv0zOCctfOBF6eenPBPNtdX5Zi4sxOtQ=;
 h=Date:From:To:Cc:Subject:From;
 b=EpCy2z5KMt6Vw5raGCFB1L42+0e0uSCgU1AZYlMDSDEvoIc6lC9n/DrI2tOQ+ljLV
 bXD599mprKUjR/aGsydYC8qmyYIYCxXb5ttI3Ij2VVQr27JgqQQNGs09B/FL0fnJnS
 0ylM/J4sHGa6FcnRqxL96pDW4F3fBOT/VKHHsA/w=
Date: Mon, 10 Feb 2020 09:27:12 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm Defconfig Changes for 5.6, Take 2
Message-ID: <9d9805ea-cfe3-4eed-b977-1933a670ba7b.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_002715_118275_A8FE55F1 
X-CRM114-Status: GOOD (  11.01  )
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
Content-Type: multipart/mixed; boundary="===============2066262116981559613=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2066262116981559613==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd, Olof,

Just like the arm64 PR I just sent, here's a defconfig PR for 5.6.

Thanks!
Maxime

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config-for-5.6-2

for you to fetch changes up to 415ae604d4ac0c0f4e1ecd79f42891b9ca69cf70:

  ARM: sunxi: Enable CONFIG_SUN8I_THERMAL (2020-02-10 09:23:11 +0100)

----------------------------------------------------------------
One patch to enable the new thermal sensor driver found on newer
Allwinner SoCs.

----------------------------------------------------------------
Yangtao Li (1):
      ARM: sunxi: Enable CONFIG_SUN8I_THERMAL


 arch/arm/configs/sunxi_defconfig | 1 +
 1 file changed, 1 insertion(+)

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkET4AAKCRDj7w1vZxhR
xayAAQCuX8J9FDgW12mYMN5u/QM+U6/fu9NC91pohYzKwjJyxAD9F0VmIxCM/bYx
EZeH96oxY2vQi8CdToduQ7voWt2IbQQ=
=Q4xe
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--


--===============2066262116981559613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2066262116981559613==--

