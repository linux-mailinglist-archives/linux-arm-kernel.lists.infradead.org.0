Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3FC98F50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hVy7qNRYEZUBauQmD7TYfskeVoRSS6dGw849BL0asqc=; b=P8v
	X3+iHwRp/nIEvxcT5MyJ4CFY9tIdRlYyZCbNbx46fWa4CNaoTpwFcaeny4YbWPLg3N+xMxZt/Yvr/
	j5cFm6V9ahi9qmtrkCOR6aFKAXJbi5cOiOxMrzXl7c7coaA5gR/asn714xZuMgV/QgjztM2M1BkSG
	g+vn4vHMx05yknI6m/H7QnWtSHnfBJfCgjFI3B3L9SMkphSTiOcOJfzg+v9M/NuWniZCSqe/GbCRV
	YZjANjKo1+FXGtG4LWJRkCoZalFRVfTkr+kHTodGb5QRC56AIjBpCtTcFUBJyNLVswAfKkTiA/Ia/
	JfpUv96v++erPEOzBmp8UF1h7mbPebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jOK-00046Y-23; Thu, 22 Aug 2019 09:28:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jNr-0003v0-Mb
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:27:57 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55B9C233FC;
 Thu, 22 Aug 2019 09:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566466074;
 bh=O7aOqWObZ7DGAx6T684DkllKeCyHoDA5niUlfEYm5oU=;
 h=Date:From:To:Cc:Subject:From;
 b=b2N5FjlASQv+cO+Xoau9VOKmQfnCVW+3G1TdbySV5E5nXJ8cNPpcmfYDBIhHo/bfV
 qWNOpTefINlaninyL8vmkUjx/hi9DSSXYQ2SDXOf6tVIDa/cfyw6z2wuzs5qmyQhmV
 dlXw1A/Cf3ZaEab1fK6t2ntaeFlkbqQnCRe+B/vU=
Date: Thu, 22 Aug 2019 11:27:52 +0200
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.3
Message-ID: <8c04a96b-4a75-4e1f-b3ac-05fe091f251e.lettre@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_022755_765291_A5260FBA 
X-CRM114-Status: GOOD (  10.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============6922870073967765608=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6922870073967765608==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xp6ppvelvwvitmcc"
Content-Disposition: inline


--xp6ppvelvwvitmcc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Please pull the following changes for the current release.

Thanks!
Maxime

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags=
/sunxi-fixes-for-5.3-3

for you to fetch changes up to e32db73c5aca895a43061cf6621076aa798530e3:

  MAINTAINERS: Update my email address (2019-07-23 11:24:12 +0200)

----------------------------------------------------------------
A single patch to change my MAINTAINERS address
-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV5gAwAKCRDj7w1vZxhR
xb+GAP92Dr8GZp+lPy/7ZrspFqbl/FhkZXkSZgbn+XwpLgeIXwD+I807vV934FP1
ROhzRsdtA0m54wyifYIWMNkTup+zawk=3D
=3DSKiP
-----END PGP SIGNATURE-----

----------------------------------------------------------------
Maxime Ripard (1):
      MAINTAINERS: Update my email address


 .mailmap    |  2 ++
 MAINTAINERS | 10 +++++-----
 2 files changed, 7 insertions(+), 5 deletions(-)



--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--xp6ppvelvwvitmcc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV5gGAAKCRDj7w1vZxhR
xUIOAQCuaW/gq27X36QQSQvvBpJ0ywGdwzGflkV8e6nn7gRmZQEAuVa2omRaSnVK
yDQOQEYHnmRMHrPEGhsu9DLe0UazvgA=
=CDAP
-----END PGP SIGNATURE-----

--xp6ppvelvwvitmcc--


--===============6922870073967765608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6922870073967765608==--

