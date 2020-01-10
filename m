Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD52137480
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W2HW2YgwBA/Lc+nc9SdQkMCpDJMmONsLjWnOn+J6FpI=; b=ZQo
	ypdvJxFje3NXHZQ/C7fa23dA+Zbc0r2kHcbPOJcMJpsnxYQDIS7rLcmgZDZSz66Asg/gORAiKcmDT
	EPSsq0C8MK9bGYfeXB2bclDDXKN9kNY6xybUBYmygTruua9OjsW+Qwygn86AihK4RxZfiFbY8unJl
	0Va2JB60tBI+88Hi2nxxhVymW0prcBfx55mF72Koi5ngPaiSUduwCDvC8TGSPG98KFh0FXPJuRFXU
	IoAj69R4EeRcvCZoRivfNeRXC7vcGfuEM4FvvZGJQJdPL7e/cyUgNqca7PxP0ETgaHSPivXkUkT2Z
	Q5kUv4brOSsbIDFutVlQHDM4K8SSzxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxqu-0004fO-DH; Fri, 10 Jan 2020 17:13:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxqm-0004f2-59
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:13:33 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A12DB2072E;
 Fri, 10 Jan 2020 17:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578676411;
 bh=jsE3r3ZjqAr+XHVAdXhhni6B0ns8osql2vNkogrgO/w=;
 h=Date:From:To:Cc:Subject:From;
 b=THAqIQHo4r0AjBHc5uzM/1aGdyBUaBavdGaCq1uim1wO11UuLgmjuecLSYgUXwRhy
 FQ3X8hRgEwHzJ2FpNXKqSYgmeVWHVlyFrDuBfhRuBzT4K/5gtjcZ1SRNz6zMjxrA/U
 Z4VM9pGLuRmJo8HrchpDDCMLeTDqbixtZ8Y3VpDc=
Date: Fri, 10 Jan 2020 18:13:28 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner arm Defconfig Changes for 5.6
Message-ID: <472336e0-11e0-4cad-bd47-216ba7321200.lettre@localhost>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091332_215897_1C8899B1 
X-CRM114-Status: GOOD (  10.79  )
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
Content-Type: multipart/mixed; boundary="===============4756971649239548625=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4756971649239548625==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd, Olof,

Happy New Year!

Please pull the following changes for the next release.

Thanks!
Maxime

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config-for-5.6

for you to fetch changes up to b6eee45a0a87ae6e5519e6df10a2757423a2f48b:

  ARM: sunxi: Enable CONFIG_SUN8I_THERMAL (2020-01-02 10:29:44 +0100)

----------------------------------------------------------------
One patch to enable the new thermal sensor driver found on newer
Allwinner SoCs.

----------------------------------------------------------------
Yangtao Li (1):
      ARM: sunxi: Enable CONFIG_SUN8I_THERMAL


 arch/arm/configs/sunxi_defconfig | 1 +
 1 file changed, 1 insertion(+)

--RnlQjJ0d97Da+TV1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhiwuAAKCRDj7w1vZxhR
xWH9AQC2wpwsfPlV7+eXrLA1YGNygdeQVv615vo4OVTkoJVw0AEAxWp/tug9JWSj
MPZW9oCgfdtcYqjvg3VIc47rlH2PUwY=
=VCoB
-----END PGP SIGNATURE-----

--RnlQjJ0d97Da+TV1--


--===============4756971649239548625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4756971649239548625==--

