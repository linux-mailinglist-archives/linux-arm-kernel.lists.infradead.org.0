Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B671D5714
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ui4mAasFury6U9ka7hCuKy2FSgBOeMOQbBrLJ5WgrMg=; b=s46
	m6qk2AETNx75b4HeVYIJwhxzSI0kJyDn+hIgwmG7V8bSzB1OkWeCoRjNlx7KvFZY+ayFpUqB1vFBt
	FbZvNYccxQZPUqqy7QI2n5hztoaezCp2yLo76zZLp7epwRHDlsQSPqnmdOSUsfSXCie4tQ8miZ1nS
	bQAx59sPvkpyTuUD4oCJed2/NUl0CMMQPm4lkCf+o6Nf12OFPkaCTdgOcHsAgtnlyZg6swvMC81gO
	l2gec3VLEhFqT6y8EbnQP8kckZ0VgYv7EShCdcHo88n1ikfILZNj03hUUPdz+HrT2H5UqK0EOz3AV
	k4eOo3KNoDlf+p9zllxkCUeHVYAl14A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdr0-0006Xy-Jd; Fri, 15 May 2020 17:10:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdqs-0006Xd-J8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:10:28 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD186206C0;
 Fri, 15 May 2020 17:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589562626;
 bh=vuhtEbfsU9/Y52BYqObCk06DXXKEgAwfSX+TRyFxZc8=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=N/Enb8kFtQ6OTeEcsNDonr+dBkyZXt2HtxjXYu4xke31PZ/0f7C1qR01pHnMavCkj
 I74CQubvOMUjBKpYqQ/fmYieIVeW78b9H0q5QGngsRRe4JvcyoWq/D7rv8YgKg7Jqb
 rQ112DOWc+EFRr14BWJUghSwc9vA90HpxDbqYkaw=
Date: Fri, 15 May 2020 19:10:24 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.7
Message-ID: <f7a98a47-316d-4b1a-b5a5-0e1e330d5f52.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101026_649589_3CE211D5 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============2220844771471673373=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2220844771471673373==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the current release.

Thanks!
Maxime

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.7-1

for you to fetch changes up to 29ee412bb7090023a8dba15726d9be2f4f2644a4:

  arm64: dts: allwinner: a64: Remove unused SPDIF sound card (2020-05-04 13:44:57 +0200)

----------------------------------------------------------------
Two fixes for the Allwinner SoCs, one to remove some inexistant sound card on
the A64, and one to fix the audio codec regulator on the pinetab.
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr7M6gAKCRDj7w1vZxhR
xQxeAP4qE6EtWCAZoryxU3KMJGPRSDktuGFlzPkOL77svJvT9wEAkPvvgQtYk0UI
7nCsv4YVvAZGCRVocUx2XUS/uFLhbA4=
=BUW7
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Samuel Holland (2):
      arm64: dts: allwinner: a64: pinetab: Fix cpvdd supply name
      arm64: dts: allwinner: a64: Remove unused SPDIF sound card


 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts |  2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi        | 18 ------------------
 2 files changed, 1 insertion(+), 19 deletions(-)



--/9DWx/yDrRhgMJTb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr7M/wAKCRDj7w1vZxhR
xbcDAP9z+gghW2dNl8p9a3OwUhvhu6l89pWNhsjN1sQi4nPEDgD/RKOy582SLPwW
raOhere+Su0Cxg06E+Y9elPk5PAKtAM=
=7yGz
-----END PGP SIGNATURE-----

--/9DWx/yDrRhgMJTb--


--===============2220844771471673373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2220844771471673373==--

