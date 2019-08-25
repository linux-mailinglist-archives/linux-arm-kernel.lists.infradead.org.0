Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEEE9C31F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 13:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d1h6on6XKxCU+A/3pALnQ9kO++C2OTF8ZASItVkPDIU=; b=eeM7dELlUsUiCs
	NOO38l1rAzsYVf8ZwqmKOmxk1xiGu7MjDrlMf6bW02UcR5/xOsvuKjXWs21EANz0ala2r2F6Y9LR7
	kwie4oDXuQhxv1b2iIKWSRSZ1nzJ9XzLF76w6pOezJ6zYNrGTAjPHM/1mOhtKzevwGa/VNXrwgqOp
	mLOO1umUF1ETk1LU6ftJN79aNBrYUpCjQ09XxUU/5McVNkQPMXEgpzxqKZ+wVPebKWUrc1vV1blig
	dU8o/j3kM/CMzinrKiuKYfMQHkydQJkbKheWwr6TDHjFtj8z00YDFGyN25v9npPYQLJ1o9WRUCRa0
	NggY0VPGMaLatOV1yS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1r7L-0005e5-Mb; Sun, 25 Aug 2019 11:55:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1r79-0005dm-68
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 11:55:20 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBBC82082F;
 Sun, 25 Aug 2019 11:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566734118;
 bh=IoQV6qRlYw1jN0SzAS1HIdX1/BJ95f/Yu7T9WJkxFy0=;
 h=Date:From:To:Cc:Subject:From;
 b=e8XV0TH2T4pJDr5mA5efQmLfyH+drBbWKluLTGhLig/dUTAG4ovzFv3VLuZ9pK0Ay
 nkpO9T63LO2kzie9ExOTTLs8DXcGvsk3ELaQpWvXIflp05cwMPTx8TOZj/S9DLWV+7
 UucH+bwzsxxzK7drBbTHySPCj+CTBG4eR4xQsano=
Date: Sun, 25 Aug 2019 13:55:06 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock changes for 5.4
Message-ID: <20190825115505.GA20454@X250>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_045519_272878_9D7F930A 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

This is the i.MX clock changes I collected for 5.4.  Please help pull,
and keep commit 6ad7cb7122ce ("clk: imx8: Add DSP related clocks")
stable, as I pulled it into my DT branch as dependency.  Thanks!

Shawn


The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/clk-imx-5.4

for you to fetch changes up to 760e548e7f885d89bf2dfab4838df9379edd19fc:

  clk: imx: imx8mn: fix audio pll setting (2019-08-24 21:04:27 +0200)

----------------------------------------------------------------
i.MX clock changes for 5.4:
 - Add clock driver for i.MX8MN SoC.
 - Switch i.MX8MM clock driver to platform driver.
 - Add API for clk unregister when driver probe fail.
 - Add Hifi4 DSP related clocks for i.MX8QXP SoC.
 - Fix Audio PLL setting and parent clock for USB.
 - Misc i.MX8 clock driver improvements and corrections.

----------------------------------------------------------------
Abel Vesa (3):
      clk: imx: Remove unused clk based API
      clk: imx8mm: Switch to platform driver
      clk: imx8mq: Mark AHB clock as critical

Anson Huang (14):
      dt-bindings: imx: Add clock binding doc for i.MX8MN
      clk: imx8mm: Make 1416X/1443X PLL macro definitions common for usage
      clk: imx: Add API for clk unregister when driver probe fail
      clk: imx: Add support for i.MX8MN clock driver
      clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT
      clk: imx8mm: Fix typo of pwm3 clock's mux option #4
      clk: imx8mm: GPT1 clock mux option #5 should be sys_pll1_80m
      clk: imx7ulp: Make sure earlycon's clock is enabled
      clk: imx: Remove unused function statement
      clk: imx8mn: Keep uart clocks on for early console
      clk: imx8mm: Unregister clks when of_clk_add_provider failed
      clk: imx8mq: Unregister clks when of_clk_add_provider failed
      clk: imx8mn: Add missing rate_count assignment for each PLL structure
      clk: imx8mn: Add necessary frequency support for ARM PLL table

Daniel Baluta (1):
      clk: imx8: Add DSP related clocks

Fancy Fang (1):
      clk: imx8mm: rename 'share_count_dcss' to 'share_count_disp'

Leonard Crestez (4):
      clk: imx8mq: Fix sys3 pll references
      clk: imx8mm: Fix incorrect parents
      clk: imx8mn: Fix incorrect parents
      clk: imx8mn: Add GIC clock

Li Jun (2):
      clk: imx8mm: correct the usb1_ctrl parent to be usb_bus
      clk: imx8mq: set correct parent for usb ctrl clocks

Peng Fan (3):
      clk: imx: imx8mm: fix audio pll setting
      clk: imx8mn: fix int pll clk gate
      clk: imx: imx8mn: fix audio pll setting

 .../devicetree/bindings/clock/imx8mn-clock.yaml    | 112 ++++
 drivers/clk/imx/Kconfig                            |   6 +
 drivers/clk/imx/Makefile                           |   1 +
 drivers/clk/imx/clk-imx7ulp.c                      |  31 +
 drivers/clk/imx/clk-imx8mm.c                       | 109 ++--
 drivers/clk/imx/clk-imx8mn.c                       | 660 +++++++++++++++++++++
 drivers/clk/imx/clk-imx8mq.c                       | 131 ++--
 drivers/clk/imx/clk-imx8qxp-lpcg.c                 |   5 +
 drivers/clk/imx/clk.c                              |   8 +
 drivers/clk/imx/clk.h                              |  43 +-
 include/dt-bindings/clock/imx8-clock.h             |   6 +-
 include/dt-bindings/clock/imx8mn-clock.h           | 216 +++++++
 12 files changed, 1188 insertions(+), 140 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
 create mode 100644 drivers/clk/imx/clk-imx8mn.c
 create mode 100644 include/dt-bindings/clock/imx8mn-clock.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
