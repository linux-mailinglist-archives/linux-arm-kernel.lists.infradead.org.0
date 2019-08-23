Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6D39B204
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DEw+gmFEmv2ke3uOYDT4fQ+GJTvMTcn0nQTVS+ovdg0=; b=tJ7
	061jaxduTvTpRU1frVtKzE6YdVnFuh/FePC+UlVd0ianGQpo/139QVY6yY28s1Q/SpBFATYDviCZq
	VCdtL20gN2nbLjiLRcl/jjcBZ/uiXbQWbSR9Nnc+/RZMin1VE2RwsOIJ2BVJ6bzBOkytjqms7xziD
	isACQ1YdgZv6K7DNuJdWglbIYeu9y6XGC9ABLZRPbMqViehrWnYIWihpScxWyxcy677Z1MYF3vK9q
	7OBpd5QFnUGkxuyI80Sxj2bA6TjHcMcMTjHVEY1ahAPIgdK5FDJSptp1gmYwl4u4YHHJtskBdaYiu
	hwumHLr8MmS9Y6TGnF0/6jeMYvmD3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ab4-0005mY-Eu; Fri, 23 Aug 2019 14:31:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Aaw-0005kY-No
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:31:16 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D39122173E;
 Fri, 23 Aug 2019 14:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566570674;
 bh=B1VTOluxjHRfvk7uxC25sTuy6oxKqBG91i5TIt3lwgc=;
 h=Date:From:To:Cc:Subject:From;
 b=GjyJLuFLTrhPmViV3Wj2ZW/nVCmsaySfgMAu1v9HosaydhIzTBu8cZ4EnE8iwNg5b
 7DfitwKywrPiuE2RbjSudcGVAefoYsVQIAVALXkH6Mlx5UczoIMh4gsJphJi1cUvtu
 jly4DpAimZmdevq06RjlHzU38w7+6zxGVBYSH31M=
Date: Fri, 23 Aug 2019 16:31:12 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.4
Message-ID: <24f215ca-f3a8-4497-bf98-9ba1808b37be.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073114_804095_D9944A3B 
X-CRM114-Status: GOOD (  10.25  )
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
Content-Type: multipart/mixed; boundary="===============8387180459051613196=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8387180459051613196==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7dqp7m3amv3dlluh"
Content-Disposition: inline


--7dqp7m3amv3dlluh
Content-Type: text/plain; charset=iso-8859-1
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
/sunxi-config64-for-5.4-1

for you to fetch changes up to 9b1e6ce34a1ab6d205effa7da38ea520f04d4e03:

  arm64: defconfig: Enable Sun4i SPDIF module (2019-08-12 14:35:44 +0800)

----------------------------------------------------------------
Allwinner arm64 defconfig changes for 5.4

Two patches to enable the IR receiver and the SPDIF transceiver found on
the Allwinner SoCs.
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/4nQAKCRDj7w1vZxhR
xdi9AQC1om2jja54gplSpDKxYzPsAphLlmSNzKKQ5+mzjj1J3gD/VNdkUyw/V2Pk
g/DAuPRgpZWS1ab82Lr08z6RDeFynwk=3D
=3DR83T
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Cl=E9ment P=E9ron (2):
      arm64: defconfig: Enable IR SUNXI option
      arm64: defconfig: Enable Sun4i SPDIF module


 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--7dqp7m3amv3dlluh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/4rwAKCRDj7w1vZxhR
xSSBAQDQuFrKwRd9TkH0qg0BBaTKMf3bSZaatrawuRt5FBvwfwD/cTzR2988W93L
+qDcnuq7ecXMsYf6UhHdpq4d3JyxQww=
=A85U
-----END PGP SIGNATURE-----

--7dqp7m3amv3dlluh--


--===============8387180459051613196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8387180459051613196==--

