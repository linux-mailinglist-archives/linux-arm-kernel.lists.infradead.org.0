Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8801DF3BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 03:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o8MV7FllZTpmttPFHxyMR1/RocrBw6Ovfwj4oZ8FXF8=; b=icvG6mAGcDjXCv
	igJK6WCN9OiGGfNLzMkwEH7zfMhvfyTY4E88Ve1KRbN6Zr5UpBFqGuYWLb6LVrEUiaEAmDwezcoJO
	mJr1TbaB/5oDCCvcqE4i7IxWTA08LzE/RMWdy808RlCeQbbi8HiWj0yq2oLrC1cHBzuW+0Unt4Hyi
	5kaOvMkWRne1xIwSveM1xCO8Tn3Hd9z4m+s921RTO5SoM+Gd/cX7lU0b4qpVPs03qJXWYzB8oumu+
	pmfuSTm7YiKUeRV1aQnN7tSfpHNOX319J/3z6SCMiZrK5mXY+cIG2kVE9FVcaNBmQM72ZAdfUKZJC
	TVg7geEhRWKKWGhMhP8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcIde-00049u-U7; Sat, 23 May 2020 01:07:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcIdX-00049L-E6
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 01:07:40 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 916F0206B6;
 Sat, 23 May 2020 01:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590196058;
 bh=BldAPkzFZw7CTlf8sR3v71/UbISCsC7M7kRPSqLDD7Q=;
 h=Date:From:To:Cc:Subject:From;
 b=Wfvo9WYcbIPRpVR9PpsA+jQRtXQSYSs0UMyAnS/YNnENKdfUT2pF1KkrBfDF/yRk5
 uxeaYS03W1Dr9NH8ay1ujG9fy1XjVcWWOslHd21qPrytDgtxfq+Re1NoD1+bn2qQ67
 XkW4+ZD2jkmw0NX5HGcAhvLfABjON9tcug8N+Z4I=
Date: Sat, 23 May 2020 09:07:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock updates for 5.8
Message-ID: <20200523010732.GA9835@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_180739_512117_FF8F7F3C 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/clk-imx-5.8

for you to fetch changes up to b1657ad708f761f9ca6d166d4dda685ca39b1254:

  clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice (2020-05-21 22:37:48 +0800)

----------------------------------------------------------------
i.MX clock updates for 5.8:

- A few patches from Abel Vesa as preparation of adding audiomix clock
  support.
- A couple of cleanups from Anson Huang on clk-sscg-pll and clk-pllv3
  driver.
- Update imx7ulp clock driver to use imx_clk_hw_cpu() for making the
  change of ARM core clock easier.
- Drop dependency on ARM64 for i.MX8M clock driver, as there is a move
  to support aarch32 mode on aarch64 hardware.
- A series from Peng Fan to improve i.MX8M clock drivers, using
  composite clock for core and bus clk slice.
- Set a better parent clock for flexcan on i.MX6UL to support CiA102
  defined bit rates.

----------------------------------------------------------------
Abel Vesa (4):
      clk: imx: gate2: Allow single bit gating clock
      clk: imx: pll14xx: Add the device as argument when registering
      clk: imx: Add helpers for passing the device as argument
      dt-bindings: clocks: imx8mp: Add ids for audiomix clocks

Anson Huang (2):
      clk: imx: clk-sscg-pll: Remove unnecessary blank lines
      clk: imx: clk-pllv3: Use readl_relaxed_poll_timeout() for PLL lock wait

Peng Fan (10):
      clk: imx7ulp: make it easy to change ARM core clk
      clk: imx: drop the dependency on ARM64 for i.MX8M
      clk: imx8m: drop clk_hw_set_parent for A53
      clk: imx: imx8mp: fix pll mux bit
      clk: imx8mp: Define gates for pll1/2 fixed dividers
      clk: imx8mp: use imx8m_clk_hw_composite_core to simplify code
      clk: imx8m: migrate A53 clk root to use composite core
      clk: imx: add mux ops for i.MX8M composite clk
      clk: imx: add imx8m_clk_hw_composite_bus
      clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice

Waibel Georg (1):
      clk: imx: imx6ul: change flexcan clock to support CiA bitrates

 drivers/clk/imx/Kconfig                   |   8 +-
 drivers/clk/imx/clk-composite-8m.c        |  56 ++++++++++-
 drivers/clk/imx/clk-gate2.c               |  31 +++++--
 drivers/clk/imx/clk-imx6ul.c              |   2 +-
 drivers/clk/imx/clk-imx7ulp.c             |   6 +-
 drivers/clk/imx/clk-imx8mm.c              |  27 +++---
 drivers/clk/imx/clk-imx8mn.c              |  25 +++--
 drivers/clk/imx/clk-imx8mp.c              | 148 +++++++++++++++---------------
 drivers/clk/imx/clk-imx8mq.c              |  29 +++---
 drivers/clk/imx/clk-pll14xx.c             |   8 +-
 drivers/clk/imx/clk-pllv3.c               |  16 +---
 drivers/clk/imx/clk-sscg-pll.c            |  10 --
 drivers/clk/imx/clk.h                     |  62 ++++++++++++-
 include/dt-bindings/clock/imx7ulp-clock.h |   5 +-
 include/dt-bindings/clock/imx8mp-clock.h  |  90 +++++++++++++++++-
 15 files changed, 358 insertions(+), 165 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
