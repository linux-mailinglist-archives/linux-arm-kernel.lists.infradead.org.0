Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536BC1840C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 07:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CpzcUH6pzTLHHgwr+M/J3EWv0sUin5NdeedTJCPbHa0=; b=K2x
	0twURH9cS29e/HxexIycyrfbIq0oWvf8/vxNiqc4zAyX7d4MmdUHluo0tqvcQdYsVI9xGIqt9zNhs
	RW49Fa3eXvFWjIZDl+y2AItVKHFTSd2EfnSwhWEBclcgmRO6tZEWk3100J0yQ8X2DnTe/I0ZWzzVP
	g7CZVdDispid6hHpnSU8HDrjKYEBDfGVEaRNg+hlkngGJOuu5ffcXS9qZliweHbBgs3HObZZueOSR
	iX+dBOciXTJWnp9b734YzFJgPujk4j0YTpTso28PF5TWSQYxZnZEwAGbcuUD8jaF+A+Kk8ADFE7eR
	fzPZb5kRyVcBPt8FrEJG+gcNHTJf7ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdTt-0004Bk-1V; Fri, 13 Mar 2020 06:07:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdTl-0004Aw-3B
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 06:07:30 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E0C12072C;
 Fri, 13 Mar 2020 06:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584079648;
 bh=amJVlk3g/7Vl5NyKAtkDyvSDFbbzx1mp8LpceImvoVw=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=dFTt57k5lgK04h7NwjrddaGvJaHfuhDjSAPMcvTY0SLF5buz+tuSiAYAE1BO4CzR+
 sDDFLsGy5foWSgKpkkDvphKG+vkFGYFGIWNAo2j10mfKWee+nNpDtrMLNbPZeyVtI7
 mTBkggi/69Ek06OsXqnsCuQhV6KmAR9dtebOz/Rw=
Received: by wens.tw (Postfix, from userid 1000)
 id 8303C5FCA3; Fri, 13 Mar 2020 14:07:27 +0800 (CST)
Date: Fri, 13 Mar 2020 14:07:27 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Fixes for 5.6 - part 2
Message-ID: <20200313060727.GA23962@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_230729_179234_91247909 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1862520598194708731=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1862520598194708731==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

The changes in this pull request are likely a bit contentious, as they
should have been in part of the merge window PRs, so I'm sending these
as a follow-up.

The patches in question were posted on Nov. 20 last year, and the driver
change was merged on Dec. 11, but we failed to merge the DT side of the
series [1]. Here's hoping we can still get those changes in the same
release.


ChenYu

[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=205943



The following changes since commit d9b553b02e691185f8145637c46f9564395936e2:

  ARM: dts: sun8i: r40: Move SPI device nodes based on address order (2020-03-11 22:49:40 +0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git sunxi-fixes-for-5.6-2

for you to fetch changes up to 00cef5e404a6c6e72cbec1fd7a41b01890b8d340:

  ARM: dts: sun8i: a33: add the new SS compatible (2020-03-11 23:12:06 +0800)

----------------------------------------------------------------
Allwinner Fixes for 5.6 - part 2

This follows up on the previous 5.6 fixes tag with a fix for the A33
Security System (crypto offloading hardware). The hardware was found
to not be compatible with existing hardware and a new compatible was
needed.

The driver change was picked up right before the previous -rc6 and
the DT bindings and DT changes were not picked up. The goal is to have
all the changes in the same release, that is v5.6.

----------------------------------------------------------------
Corentin Labbe (2):
      dt-bindings: crypto: add new compatible for A33 SS
      ARM: dts: sun8i: a33: add the new SS compatible

 .../devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml          | 2 ++
 arch/arm/boot/dts/sun8i-a33.dtsi                                        | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

--azLHFNyN32YCQGCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl5rIx8ACgkQOJpUIZwP
JDDiDg/+IAgEPJv6SIb32QPoZ/DK4mum+AUdnoMTTG5rD+3HSZy5m+NoW/76a0SH
+DOHpXDO7Nq2GAKaCBoAd/MM8nc8xd9lkRTy8u4M8LZMDz7Lp6ZkmOUXfA1h1/C+
7B/LMWtfrN1a7mZhKBlp2k+VZrdL7QIjL5/ReFJS9O+Sj8OQFF8zeOOSh2Bd7CLs
Ut4jLjlSrhd6EecdUpLDiBpuC01o15yrOOi61twZYlO5MBxIrxFQk7hBkHUUc7WZ
6hRk398IUd7MAv7VgdpHsa/VoPrrv8BLQm5SkTzBsekzIGH+Gjj1pdqsIkhE+1b5
9UTwjpyGbFrlRbj6u3uP+JrHLoybGCZEg5KYH7nbYy7yhH36nVUnQGhoTLtrfl4z
3ErBNhUqLPOowZkLfnW6EYz8azt0lEQ9XoIhYtcBd+5SlSJ5nye+x3kZsMP6KXCC
luACiFQjQGYjmHptTNd+ZFy9H2gI2nzph9HHNSvJGZfacSyO2PD0pp+rSOxYsyrm
rdvJQkjfpT1psdtdlAcBsOYXtBv8/f4LQu8B53iXZx0jZIZg5ntZ0JFnrM3AkuHO
QkhNhKqWA/nrbIXwkp0JdzdvpL9qICLS9qsWsEOSi9ARKOqC6bXAOjqyYOZHpd+V
KNm1IYnlhFAQkjmTBwcIlRPef2Lc8G70+Bwf3XolBZo6iwnnhdI=
=gLaF
-----END PGP SIGNATURE-----

--azLHFNyN32YCQGCU--


--===============1862520598194708731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1862520598194708731==--

