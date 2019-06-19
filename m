Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01A64B40C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 10:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7ko8uOgllELC3jPdBFdUHaZiB4jI8Dl1TlQkdjv+IHo=; b=WG4
	EL5Vfgc10jL4gfVd/LsjXMWEdHFgHwBm1ENmZFlvNGng1CoUPUDsxGxIRyvbrvdnFkPGu8dhJIEMg
	CU5+jsUoIgrWvqltHwoyGuJSwWb4vrFho4L6R9Go8Vspot/RE8lOeEEDHKJWp9MB+E5MYhQQg47RE
	UMXvxCkZSjrtczf34K+J6Pnho3JwPa9T3GEhQdYuPSKooFQQlAhceldxMBfgxrjNKWUIxExVBiAhK
	M0OGUl92pwIbURWXuyMDpFRENnyxr4prN5pc8KZQtIG+xB0wmQt+h/pKymTh6oGnlqGNNkUzB2o9c
	4ryeYjk51anqG1m6fJkAdfaPRCbmQ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVxy-0004hA-SL; Wed, 19 Jun 2019 08:29:14 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVxp-0004ge-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 08:29:07 +0000
Received: by wens.tw (Postfix, from userid 1000)
 id D29C15FCE5; Wed, 19 Jun 2019 16:23:07 +0800 (CST)
Date: Wed, 19 Jun 2019 16:23:07 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] clk: sunxi-ng: clk parent rewrite part 1
Message-ID: <20190619082307.GA27382@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_012906_141717_3376618D 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9029278921142115269=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9029278921142115269==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline


--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-ng-parent-rewrite-part-1

for you to fetch changes up to 594d7e8fbe906ad3162ad84ae74acfbdcf8fa3a5:

  clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE (2019-06-18 19:53:33 +0800)

----------------------------------------------------------------
Allwinner sunxi-ng clk driver parent relation rewrite part 1

The first part of ongoing work to convert the sunxi-ng clk driver from
using global clock name strings to describe clk parenting, to having
direct struct clk_hw pointers, or local names based on clock-names from
the device tree binding.

This is based on Stephen Boyd's recent work allowing clk drivers to
specify clk parents using struct clk_hw * or parsing DT phandles in the
clk node.

This series can be split into a few major parts:

1) The first patch is a small fix for clk debugfs representation.

2) A bunch of CLK_HW_INIT_* helper macros are added. These cover the
   situations I encountered, or assume I will encounter, such as single
   internal (struct clk_hw *) parent, single DT (struct clk_parent_data
   .fw_name), multiple internal parents, and multiple mixed (internal +
   DT) parents. A special variant for just an internal single parent is
   added, CLK_HW_INIT_HWS, which lets the driver share the singular
   list, instead of having the compiler create a compound literal every
   time. It might even make sense to only keep this variant.

3) A bunch of CLK_FIXED_FACTOR_* helper macros are added. The rationale
   is the same as the single parent CLK_HW_INIT_* helpers.

4) Bulk conversion of CLK_FIXED_FACTOR to use local parent references,
   either struct clk_hw * or DT .fw_name types, whichever the hardware
   requires.

5) The beginning of SUNXI_CCU_GATE conversion to local parent
   references. This part is not done. They are included as justification
   and examples for the shared list of clk parents case.

----------------------------------------------------------------
Chen-Yu Tsai (25):
      clk: Fix debugfs clk_possible_parents for clks without parent string names
      clk: Add CLK_HW_INIT_* macros using .parent_hws
      clk: Add CLK_HW_INIT_FW_NAME macro using .fw_name in .parent_data
      clk: Add CLK_HW_INIT_PARENT_DATA macro using .parent_data
      clk: fixed-factor: Add CLK_FIXED_FACTOR_HW which takes clk_hw pointer as parent
      clk: fixed-factor: Add CLK_FIXED_FACTOR_HWS which takes list of struct clk_hw *
      clk: fixed-factor: Add CLK_FIXED_FACTOR_FW_NAME for DT clock-names parent
      clk: sunxi-ng: switch to of_clk_hw_register() for registering clks
      clk: sunxi-ng: sun8i-r: Use local parent references for CLK_HW_INIT_*
      clk: sunxi-ng: a10: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: sun5i: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: a31: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: a23: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: a33: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: h3: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: r40: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: v3s: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: sun8i-r: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: f1c100s: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: a64: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: h6: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: h6-r: Use local parent references for CLK_FIXED_FACTOR
      clk: sunxi-ng: gate: Add macros for referencing local clock parents
      clk: sunxi-ng: a80-usb: Use local parent references for SUNXI_CCU_GATE
      clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE

 drivers/clk/clk.c                        |  44 ++++++++++++-
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c     |  39 +++++++-----
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c    |  41 +++++++-----
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c   |   2 +-
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c     |  69 ++++++++++++--------
 drivers/clk/sunxi-ng/ccu-sun5i.c         |  34 ++++++----
 drivers/clk/sunxi-ng/ccu-sun6i-a31.c     |  39 +++++++-----
 drivers/clk/sunxi-ng/ccu-sun8i-a23.c     |  34 ++++++----
 drivers/clk/sunxi-ng/ccu-sun8i-a33.c     |  34 ++++++----
 drivers/clk/sunxi-ng/ccu-sun8i-h3.c      |  29 ++++++---
 drivers/clk/sunxi-ng/ccu-sun8i-r.c       | 104 +++++++++++++++----------------
 drivers/clk/sunxi-ng/ccu-sun8i-r40.c     |  46 +++++++++-----
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c     |  29 ++++++---
 drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c |  32 ++++++----
 drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c |  29 ++++++---
 drivers/clk/sunxi-ng/ccu_common.c        |   2 +-
 drivers/clk/sunxi-ng/ccu_gate.h          |  53 ++++++++++++++++
 include/linux/clk-provider.h             |  89 ++++++++++++++++++++++++++
 18 files changed, 526 insertions(+), 223 deletions(-)

--wRRV7LY7NUeQGEoC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl0J8OcACgkQOJpUIZwP
JDCCmg/9HW6NnKS0UZglMd9JbGim0X19fvnaG66N5OKSiynJVuKlrjW1KRBjV1yP
f4co5cU9y1eS6yTs4Wat/4iW52Kc88YvT/KZQJFOw36h00zFipGenNPoG5MCnHxE
gNQb/BNKvcNDJp7IIfuddK3zAjtGORQ0HUf/ZbjkacfYKDQ0TbUYpfWlvaGnLSoh
OyL6pww1Tj9zkfRNH4BmFWa1AhCD7ThDfbq4qjGzTSLPbLYTh4IeKDnDnkBU6sif
EZPaRqvwpvpHIJdG3WCL8lmH6TpxO6DK/FnPfkxzNLDD/JtAHJavOx5qQdgJZjuG
hz//AG7OFGmdoSI0Fw0dYabhPJZN6zw/VtapbIMToXHy81Sne9soLlvWfEI1eRgR
Zd63iABZbKoD+HYdEqQea9N4Xqt/pu/Mvy3tzRgXkG2GDyfoyc2SiiGy2abAgTNW
5q7LV6cq+YQQIUIbLA26KmK/NFPDdHoqMObSPiaiC5cQEXTidNsgaqKUigBiTdRN
/0WWF/wtHL2E01OpixYxY5FMb7ciSztJ8VIcAYSbkIVzRgDr4wq1XrYHQPLW9AAu
+ArMNlVyNMyFYXnLBbMkFGZlk2TqZUoo8D4pa29qPIdGSUSSpnA7vWQDAzztiZFQ
v7cnn+hQT7GGB16nSdYsJxdkE8DVMc2YRnz3qOFdYqQahV+wFXs=
=PiPo
-----END PGP SIGNATURE-----

--wRRV7LY7NUeQGEoC--


--===============9029278921142115269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9029278921142115269==--

