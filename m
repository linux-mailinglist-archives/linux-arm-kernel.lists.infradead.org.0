Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD5422DD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dZt+JK3wU9Ox2OKWHqRwhaPF2K7W5jUWcqwFgN1Da8A=; b=VYmWJGzsn8xwHj
	8B5W0t8Ot930eljy2yXP6DG9/RompEfxlwJDnR/nZfk1xHpucVwsdTxxkYTdwPXUM7Pjf5SfwoIsr
	TFXZPJ1zcVq/eQrmV4VXH3T5cgQqN8SHZXVLEBdxKin63+N3OvpoJ5IQ4NNadNIUZ5bwdqZu1yYsa
	VzzUqRfsp0nIlsSso46cE8yEy1BeMuK9ZrmzvbXRfbB+Ow1NQ4vDRCXw7w1m9OHYEZnduJjhE/gsh
	EfJsy/6QFEKia5D5rcZPQvXeB7xjWJIpDBhaO9NtacyE1hY1oZKhZBn/qSnC+l2uYG9cip/pRytFy
	X0G8dCJdj0WCc+rhotZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdJd-0002M6-NW; Mon, 20 May 2019 08:06:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdId-0001GM-IV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:38 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A19C12081C;
 Mon, 20 May 2019 08:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339534;
 bh=xnei+IQeBrteeMu2IJuJYcNap1qcD8QFf+i0AMgPxKE=;
 h=From:To:Cc:Subject:Date:From;
 b=R5xwEHoXcgt6AHWxLLDlnReqAu7XtRw5r/L0naoRuPEeCBEq+TfNcB6+H8o9brqq9
 aR1zQCoWIQUXGhqhJX4Gn6WHnTYltLUhGG7XJITetHRjMTOsNqBpYtyIqmvQvqrp5L
 4pmV+3E/MIHh0qBJiSNhrpmipkxUCHJbn+L6L2Lg=
Received: by wens.tw (Postfix, from userid 1000)
 id 1B4765FCE3; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 00/25] clk: sunxi-ng: clk parent rewrite part 1
Date: Mon, 20 May 2019 16:03:56 +0800
Message-Id: <20190520080421.12575-1-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010535_663686_F195FC96 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi everyone,

This is series is the first part of a large series (I haven't done the
rest) of patches to rewrite the clk parent relationship handling within
the sunxi-ng clk driver. This is based on Stephen's recent work allowing
clk drivers to specify clk parents using struct clk_hw * or parsing DT
phandles in the clk node.

This series can be split into a few major parts:

1) The first patch is a small fix for clk debugfs representation. This
   was done before commit 1a079560b145 ("clk: Cache core in 
   clk_fetch_parent_index() without names") was posted, so it might or
   might not be needed. Found this when checking my work using
   clk_possible_parents.

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

I realize this is going to be many patches every time I convert a clock
type. Going forward would the people involved prefer I send out
individual patches like this series, or squash them all together?

Stephen, would it make sense for you to pick up the first 7 patches that
touch the clk core? And then we can base our clk branch on top of those?


Thanks
ChenYu


Chen-Yu Tsai (25):
  clk: Fix debugfs clk_possible_parents for clks without parent string
    names
  clk: Add CLK_HW_INIT_* macros using .parent_hws
  clk: Add CLK_HW_INIT_FW_NAME macro using .fw_name in .parent_data
  clk: Add CLK_HW_INIT_PARENT_DATA macro using .parent_data
  clk: fixed-factor: Add CLK_FIXED_FACTOR_HW which takes clk_hw pointer
    as parent
  clk: fixed-factor: Add CLK_FIXED_FACTOR_HWS which takes list of struct
    clk_hw *
  clk: fixed-factor: Add CLK_FIXED_FACTOR_FW_NAME for DT clock-names
    parent
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
  clk: sunxi-ng: sun8i-r: Use local parent references for
    CLK_FIXED_FACTOR
  clk: sunxi-ng: f1c100s: Use local parent references for
    CLK_FIXED_FACTOR
  clk: sunxi-ng: a64: Use local parent references for CLK_FIXED_FACTOR
  clk: sunxi-ng: h6: Use local parent references for CLK_FIXED_FACTOR
  clk: sunxi-ng: h6-r: Use local parent references for CLK_FIXED_FACTOR
  clk: sunxi-ng: gate: Add macros for referencing local clock parents
  clk: sunxi-ng: a80-usb: Use local parent references for SUNXI_CCU_GATE
  clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE

 drivers/clk/clk.c                        |  10 ++-
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c     |  39 ++++++---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c    |  41 +++++----
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c   |   2 +-
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c     |  69 +++++++++------
 drivers/clk/sunxi-ng/ccu-sun5i.c         |  34 +++++---
 drivers/clk/sunxi-ng/ccu-sun6i-a31.c     |  39 ++++++---
 drivers/clk/sunxi-ng/ccu-sun8i-a23.c     |  34 +++++---
 drivers/clk/sunxi-ng/ccu-sun8i-a33.c     |  34 +++++---
 drivers/clk/sunxi-ng/ccu-sun8i-h3.c      |  29 ++++---
 drivers/clk/sunxi-ng/ccu-sun8i-r.c       | 104 +++++++++++------------
 drivers/clk/sunxi-ng/ccu-sun8i-r40.c     |  46 ++++++----
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c     |  29 ++++---
 drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c |  32 ++++---
 drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c |  29 ++++---
 drivers/clk/sunxi-ng/ccu_common.c        |   2 +-
 drivers/clk/sunxi-ng/ccu_gate.h          |  53 ++++++++++++
 include/linux/clk-provider.h             |  84 ++++++++++++++++++
 18 files changed, 487 insertions(+), 223 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
