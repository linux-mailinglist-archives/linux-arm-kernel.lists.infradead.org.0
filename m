Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EF9F15E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YrNrJqlN2iCoXA8XNXRg2JgKR+AjKFN/UpKxu6PmEdw=; b=iSw
	XzH6Bfxigp/+zc9VCI5PK+QRii/1SZydDSPGbp0UhrYNUafg63Y9wIPFtaUUNneNVKqvD1L8KiFnj
	wssAyd8WQBJQ8oCMECLae2XfPI6DZCS5d8nGooMeDliwU5Sr1dxny3TEpNzXvr1Ob3GI1YpqxtcV+
	LVODXbBHd+MXxzQ11LZ02G/jYkrtQrFQ4T4md9vmpaCMe5gTAVFN9KS+Id0iZ8dAE9AJDbjDYDSeR
	uh7dGc/GpCa5k1CdEqN2aAc283tRE3eb3sT8DKlDYAKxpoQyfIkE/khT9+kvthAUtfJHSHG9ECAHT
	dT3WS0DLveRN9xZmoYW9cWURP8kXOYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSKCr-00005v-2B; Wed, 06 Nov 2019 12:14:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSKCg-00005K-Tc
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 12:14:28 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AC22214D8;
 Wed,  6 Nov 2019 12:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573042466;
 bh=bc8RX/P8MK4gyf7CrJroGHM5MRZ4t37ppCxlgOGl/0Y=;
 h=Date:From:To:Cc:Subject:From;
 b=yuIkaczCgUKEDg4ULIwiRQGYvu3OLsNHSbbGsWmEaZ59DcP9/HVPOSzI9NXSa0xPl
 hhjx/OLsKbWzUqt9jf6ly/VTt4PlYapRglWIXi9xtLRcOXsl+uFy/9KNFj5ENLUvhp
 vKdktv9rxm3hYN1Rs9qZ/VerHfVncXwQQoeUNFkw=
Date: Wed, 6 Nov 2019 13:14:23 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.4, take 3
Message-ID: <45023fa6-b2bc-4934-b85c-3e7841dde0b1.lettre@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_041426_978641_8A7E5FDF 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============0446099995676426338=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0446099995676426338==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the current release. While this
is a patch that adds a node (and thus a feature), that node was
removed in a previous fixes PR since no interrupts were working on the
PMU. This has been figured out now, so the net outcome of those two
patches are making a device that wasn't functional functional, hence
why it's in a fixes PR.

Thanks!
Maxime

The following changes since commit e690053e97e7a9c968df9a97cef9089dfa8e6a44:

  ARM: sunxi: Fix CPU powerdown on A83T (2019-10-29 09:09:56 +0100)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-fixes-for-5.4-3

for you to fetch changes up to 6b832a148717f1718f57805a9a4aa7f092582d15:

  arm64: dts: allwinner: a64: Re-add PMU node (2019-11-06 13:07:30 +0100)

----------------------------------------------------------------
One patch to add back the PMU node that was removed because the
interrupts were improper in a previous fixes PR.
----------------------------------------------------------------
Andre Przywara (1):
      arm64: dts: allwinner: a64: Re-add PMU node


 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  9 +++++++++
 1 file changed, 9 insertions(+)

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcK5HwAKCRDj7w1vZxhR
xXCVAP93EcKEDLSvUyugEEYM7bVD0N7voqfDVS9v9rfIRUVm9gD8CAGcgcz+1XgA
K/MUPODXYOFi43LDnwRPnxGuAf2CzgU=
=EEc0
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--


--===============0446099995676426338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0446099995676426338==--

