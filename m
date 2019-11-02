Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E761ECF9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 16:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8boYdwEx8MyVPYsQ2QPn9XMmF71TMD4PQl+0q4OJ1jI=; b=ulK
	alkAAdfFbwGZrCu4XntSqNKqf2LfdUktIgFJw+6otGKwy++rgIq+AuqC61gJBGkTX+F0YT8JWSKqR
	OAaWys1+tcXo6whFxNhOnyPhtt6c1dMyt6vD07VK/73wJkvjIn3O+e4wCsUjLVRBs2dSZ50O3+WRn
	uaCHipFokKKZJlA+UXK2m0tBzVgC2IoTlQPayIO5NWeWxX7PQvMXPGyXiIVgqMLEqgGJtKfmJ4Syo
	Qs1MiUVPtnBP/v4Wc0H9WS3xsXdh26TcyEegHsrsinexmMWjr11DwvAth+vC1uxH1r5y1gqAXd4WI
	7RrJzKp/wyGJ9fqgixho8s4s/7I3PWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvnK-0008DW-4i; Sat, 02 Nov 2019 15:58:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvnB-0008Ct-0o
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 15:58:22 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE8D121726;
 Sat,  2 Nov 2019 15:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572710300;
 bh=0mMfQ1I+Blnbu46MxvnvtcD9tcOb2zGn0fcHiC431VM=;
 h=Date:From:To:Cc:Subject:From;
 b=rojzzgrbqoAWEnK8qjlb2tdX5MJGFUICXgwFJZmru8HTd4UbZA/CL8Do4xiN1JtNq
 ZwCIey4H8mQr4yO0IMNG7zYq2w4qP5rU0t0BUoQSERTuTjVpCngaSCqWScswAuqO+K
 mhiWw6IVkF6PpuzFnJjZCuv0Uwwq/q5jMmEgqTok=
Date: Sat, 2 Nov 2019 16:58:17 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.4
Message-ID: <3935640c-289c-40b2-b156-79787aed8c60.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_085821_080909_36C5F0EA 
X-CRM114-Status: GOOD (  10.92  )
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
Content-Type: multipart/mixed; boundary="===============2314943434091418923=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2314943434091418923==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2qhiluci6sugad6l"
Content-Disposition: inline


--2qhiluci6sugad6l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the current release.

Thanks!
Maxime

The following changes since commit cf03c691eb959f438c16d58ffd11f150b1a95b1e:

  ARM: dts: sun7i: Drop the module clock from the device tree (2019-10-07 14:12:09 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.4-2

for you to fetch changes up to e690053e97e7a9c968df9a97cef9089dfa8e6a44:

  ARM: sunxi: Fix CPU powerdown on A83T (2019-10-29 09:09:56 +0100)

----------------------------------------------------------------
One fix for the A83t powerdown, and one for the TBS A711 tablet wifi suspend
----------------------------------------------------------------
Ondrej Jirman (2):
      ARM: dts: sun8i-a83t-tbs-a711: Fix WiFi resume from suspend
      ARM: sunxi: Fix CPU powerdown on A83T


 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 1 +
 arch/arm/mach-sunxi/mc_smp.c              | 6 +++++-
 2 files changed, 6 insertions(+), 1 deletion(-)



--2qhiluci6sugad6l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb2nmQAKCRDj7w1vZxhR
xS3aAQD+bn7V1VtOajJW1noZOBo1AZFKz1HkA4VHpyjMtA9q0AD/V/oOsOkkfDvU
Se29BHQAzat8tQAqaKK96PDh2Jv8ygA=
=QIH5
-----END PGP SIGNATURE-----

--2qhiluci6sugad6l--


--===============2314943434091418923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2314943434091418923==--

