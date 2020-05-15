Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A691D570B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VbXJCNZkCnZjMcSByIhAKCT5rNpc1TCv+pZ1ANJTUgA=; b=prb
	NbuTk1c3EsHlrtztZkWycx6AP20vwzn0JFoWvR7pqyz2+pXmGR1wbakmwr+x2l5RkD4fawGDNUfWe
	v6HK+m23vMNg2D02Jrh4uvlEzs9dHzRZDtFz87W86zWOVphhyQqWlF7/kmEnhn5eWNWxMyKtp9/rj
	7+mxU525ziLUv4TnP3ME45+fcQ2XvpNYD49uF4VxKBkRzOJEOcAnOAaDSKSKtmu3yNeQo8nA+wMWY
	9iGR5RrvsJ71SoMbUHEZmgDEgpUBJrFfze2WJKZbMKU/aWqA9JAu0NZ5io1+3KfXEcMnRs/GuKnFY
	s+IN8OlmgBPJL+rNkpH3G4z7tJTCVqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdqN-0003jr-9H; Fri, 15 May 2020 17:09:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdqD-0003jE-8h
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:09:46 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C954206D8;
 Fri, 15 May 2020 17:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589562584;
 bh=4LFY1RrFZ7LoNkkMHzapvOcBPunB4dBiJNYYqTpXQnc=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=tHop8V2tgFt+aN4kULWWqORWFB/BSmYsUO8KscONPS/gJHYUS57cqX/WURbkJ4/rK
 3akCCWim5D9801qbZA29AE/91KJZq1G52tsR6AlVkubAhJe2N2NTfmDsasq0ZNu2rb
 +i9W+TqnjV0IWCPLByq+bw/JN26ruFnoZdmCGg74=
Date: Fri, 15 May 2020 19:09:42 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm Defconfig Changes for 5.8
Message-ID: <9fd4d403-f6c8-420d-8b03-62e8485a0b3d.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_100945_326789_9E844BCC 
X-CRM114-Status: GOOD (  11.82  )
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
Content-Type: multipart/mixed; boundary="===============0835754976279570935=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0835754976279570935==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-config-for-5.8-1

for you to fetch changes up to cdaeaa2560a9511374986cf7ce6e164318caae53:

  arm64: configs: Enable sun50i cpufreq nvmem (2020-04-20 10:25:20 +0200)

----------------------------------------------------------------
Two patches to enable the new cpufreq support on the H6 for the arm64
defconfig to enable the audio codec in sunxi_defconfig.
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr7MmQAKCRDj7w1vZxhR
xYFJAQC7OE0ip7aQrJY24AXQgeA1abiQ1+P1oHbHW6E7qnXiGgD9Exd18pO1N1JH
URcmEMjg8plFQn9+gGcHy7VFhE5V8w8=3D
=3Dut84
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Cl=E9ment P=E9ron (1):
      arm64: configs: Enable sun50i cpufreq nvmem

Corentin Labbe (1):
      ARM: configs: sunxi: Add sun8i analog codec


 arch/arm/configs/sunxi_defconfig | 1 +
 arch/arm64/configs/defconfig     | 1 +
 2 files changed, 2 insertions(+)



--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr7M1gAKCRDj7w1vZxhR
xfc/AQCZFjR85tuWnU0052Kx/h6KyLvCm46gVbBrrphw7siebAD/YVGfKh1BIjid
jUXlLosx1D189taGl1ppWQWmH+37ZQk=
=+h8X
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--


--===============0835754976279570935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0835754976279570935==--

