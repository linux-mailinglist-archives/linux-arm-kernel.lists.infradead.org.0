Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322B55F31D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QNnGr6WxxWhxQYkn3VndqDSHu16eTd6lRq80F6zNhD8=; b=l+y
	ktwUMxGidKBhWCc7XTsfEW3oUPJxx+eH7EuASvpe5ku1kTvr0FgcbqvUbI4pfshMbeghazEL7VAut
	X4YaS4QFf1MuBbVoh0K/HoyG15R+MRSOvN9Ia1olKVyItYaOduPVRcB1OCIPSh7b9T0xuFIohoNN5
	EzsLzKrBOA0/VWiALGTxrLY7xF2nJV2td2+mfEfHSyrYfiZJiV+np4QKIhRhFddBWCuAi9M/J+zwY
	9wy0fF4HKahEMIQIGKvHE0PhMav6eo4hpBPXCK0cRcZRW8tOoJjY32UUFz2wWpwKALCKd97VdNYAt
	v8rn3xLH6tEEGC8nMZeyYG5o1OtpxxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivcn-00024a-LH; Thu, 04 Jul 2019 06:53:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivcY-00024B-0N
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:53:31 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF7372082E;
 Thu,  4 Jul 2019 06:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562223209;
 bh=8KrimVfbXt6d6231qEjAhvdc9KtBoE7SRR247D4UZ9A=;
 h=Date:From:To:Cc:Subject:From;
 b=p6I6JW05tnTcScSgqddwXnF7Df0hSgq4DhZTDLyEmp5iv91NyzfkuW3jGXThmmU1g
 rIinZ0Ty7RD6jjm/igznWSDxxEOCJ1wXv/RqgdiG7l3KzI8dFXwuO9kygJwdxuBqKT
 3ChPeo6xX7nIv0PUMR/hq8kC6LAXvNkil98hKVIQ=
Received: by wens.tw (Postfix, from userid 1000)
 id 0685A5FB5E; Thu,  4 Jul 2019 14:53:26 +0800 (CST)
Date: Thu, 4 Jul 2019 14:53:26 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Allwinner DT64 changes for 5.3 - round 2
Message-ID: <20190704065326.GA19010@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_235330_103323_B168AA2E 
X-CRM114-Status: GOOD (  10.84  )
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3498136244058361420=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3498136244058361420==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline


--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit 9164665a390a2a42e9f56094eeec8c4a52748723:

  arm64: dts: allwinner: h6: Add DMA node (2019-06-12 15:25:59 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-dt64-for-5.3-round-2

for you to fetch changes up to 0bb9d1876c0605815ea0452f68cb819a775a75f9:

  arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC (2019-06-24 16:07:14 +0800)

----------------------------------------------------------------
Allwinner DT64 Changes for 5.3 - Round 2

One extra change wiring up the interrupt line for the external RTC chip
on the Pine H64.

----------------------------------------------------------------
Chen-Yu Tsai (1):
      arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC

 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 2 ++
 1 file changed, 2 insertions(+)

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl0domYACgkQOJpUIZwP
JDBTLA//YgJVhFlVRH/E7Y2K3vKyhtWOXoFifXu7FxANDJk3BXLPl+NT1O0EOQE7
ltVa89TQA/cFYIOlYVepbVE2C/tf8ye/IoUSaYMGk9HDvxLWmHWF/c8kTFMZqfrV
chSeEQ8NagvE1/QssbdQjsJAK2It3OEKCyIsevTFZ/Yqq9GXtZyzRGyQ7d51Dki5
C1lb1IaPwC6ta7rQpTpq03XnPhP4YcpWtGzmeXDPh216Tg6ihr5Y45PIDEYMlPFf
OQRRPzwGYrrKaLvL+7yv8xY+s1hvnhGOjFCnB4uB9XeOG4JbUl/uUH68BO/IumCX
yLByzfSLEbMMfoJEdMlNKixDi/j3N26CR6U4c+cutDf4yoWxUAUJDDR5t8bTJL/w
oXaHFWTrXbebjiA3RvP5pgYKp87xJexiCHtJFZmbeAtKkMaOkgj21cdhvcCIKi01
NolnFXQec/RExBvOBwYAP+nv6pLis88Vhs/cFIqsOhK2dHDdzIGp3FEpiTgAoUeD
ETTpyDjm3w+v0ZdZVNxgCu32H5AudtjtZaqK+hvRymIl6UtYzbyRB5KmmpCffoJO
fxKiR10A+sAROffyyUURahvHb+ftKeE516bX9bi55ZC++JNVYp/fRix2mQ7Tp/no
pWnAbVyk82NN9c2u+QJ9VTkCyXqkFK+71LkCDDI20BM/yfWwsi4=
=Ddd6
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--


--===============3498136244058361420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3498136244058361420==--

