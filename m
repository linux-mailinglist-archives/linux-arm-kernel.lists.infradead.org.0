Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0604F333
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 04:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MydnYnwuytosUQTNzzuXVhoHVQi3k/NClLaWA+/iykk=; b=jj4
	JzsoXDAh7M7qYA2oPr/WtZWJWcND7NTNprJvqXE6NBHk9tYqKKHJYMLrntY+buzwzcG0v+Xxo1WbM
	5vHFi3ZxoN2puKiqTBV8YNARF0aD9UZOODGqkXcoXO1L0lL9H1HP+SkS2syxDVJu74bLcehC0GzuA
	9di8xz5Vffn56GCrW32T37Rwa4x3pzpQ6JqDLN89VK20AiSciAcZDmBldh+/ssNBm6zyefAMWqTe2
	A3Z/5Wk50EZa+peVtwmoBVOEIGIFMdvCnyXXTNUEYmCshjbpHM7058tLITToa0jVu247kGiFf9nuz
	kZkZrP/CpgqymYcbebFNuf2t/01ySLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heVgJ-0002xt-Aa; Sat, 22 Jun 2019 02:23:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heVg8-0002xH-Pz
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 02:22:58 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E6F72084E;
 Sat, 22 Jun 2019 02:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561170176;
 bh=2533Dg9bGOeJ2s+uZg4igKd819QK2urTK0KbdMeN+qI=;
 h=Date:From:To:Cc:Subject:From;
 b=SNXE2UZFfi/pLKUtdA1F79y2iS8KHRZR2exKnufnYdTWQzOYlmsU78JX6Gdv3FgNL
 rqUmJBcMmWTg0wierBQPPbQGJWO6pPCzmVQ08HJUpu9WxXGbe4WFY3FoZdPzpEMr12
 SGBQVfWkoQXU6Tm8jjP3MOPQHNfOKIm6L8YiwMqk=
Received: by wens.tw (Postfix, from userid 1000)
 id 4AD2B5FC7A; Sat, 22 Jun 2019 10:22:54 +0800 (CST)
Date: Sat, 22 Jun 2019 10:22:54 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] clk: sunxi-ng: clk parent rewrite part 1 - take 2
Message-ID: <20190622022254.GA7789@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_192256_884275_0FD214A2 
X-CRM114-Status: GOOD (  11.89  )
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0651036734490403676=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0651036734490403676==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Take 2 has build errors in drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c
fixed.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git sunxi-ng-parent-rewrite-part-1-take-2

for you to fetch changes up to 89f27fb2dd348d8d52a97e6ebec15c64fe461a25:

  clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE (2019-06-22 10:13:16 +0800)

----------------------------------------------------------------
Allwinner sunxi-ng clk driver parent relation rewrite part 1 - take 2

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

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl0NkP4ACgkQOJpUIZwP
JDCxkRAAo8LODRUyhT71hu5MiybkC1eIlL4klQFYuBQ5NP0GsEVr+ZTGP/ntrxku
A+bBcMCTMv9UCWhm/oE1WCBl7tzbaYrIa09DMnsUY26aAX70nnlhsh8xdwuc2R4r
ACwfT521jN0cal3iQax5g5tJl/g6LLQPAafrrNBW6P2UFjJLY9JSsbfg2oX9+jIO
w5T+r77FKtnom+cQhGIbVV/AeS9mUhDyWcJ1vBYWrVNK3P5+HKfshVDA9Hitn3BZ
nYA40EGIdbnYBtxxy6km24vJOOI4yxS3J3Cj6j/wB+Dlso24JXDJhHHOnzLyevTq
wqUU0FmozbSNhxdzvNKvTGBU+fSxI+j67sM/Iv+3AzjXqfIFHoX+jFKhDED7ZgCi
PpcS01Q88ziHIBehcqiMuiZMRBoiU35tbF8TT+4sssvsd2ujkAr2h3Jgz/ZSTcXC
y4TYa1FyLnfGFvLZhgcXwEJfvq70GB/u5fHuFCAi5rexmbCxdBhzVdsCfLMItLzR
2xwqSChajVW1EsHKNytSCfJZ0e1fTKt6PBteJ4jVUlpVQFZpVnbcf2YLdVN+Ksir
G647JLw3XCL/eM8ASboTRquBqEjOYn21JS55qQXz4WPA5fJIzM1K56Ez7HvWRnaK
HrhM6kD5L5V8yF6tNnRxjFbKAHplzSDS+XOQL2x7PzRsErwYNVM=
=SeQp
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============0651036734490403676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0651036734490403676==--

