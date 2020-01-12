Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D630138648
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 13:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDTKXkQ7p76uJK0/F3ti+CUd1+pGSKqTwG4nZ7/jGDo=; b=gWzTkH42o2yGQQ
	I/Ru+2JVWBw1jUx3buFQcSKQgpRDXFR8/wVMJp2s9euALmKLfMKa1HDklhk/DSwiU3cU1M5Bseyfi
	beBG/61oVHw8DaI/yEH4rm7UA0rePQUwF4b/K921RfIxK/AAx5xg8V2XovwZEb1N4p/1v11R1Sd2c
	VhEssNy2H7eUSlolUjgV7LDn43gtEetx6tXXe6fqyANoy5fgbQqzJS9xamJjVVofoYpUbyh8lNAyG
	LxlIK8kFOS/zRMjwbvbTiXkrcUjG2vopzAcfajpD4K39QTd9rmv9nxrXej3nAmvFJ9JvQOQjN+Lae
	oHWQBUdsI8QLhmr6ic1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqcFD-00026B-4h; Sun, 12 Jan 2020 12:21:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqcF6-00025s-Lh
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 12:21:22 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C87E821744;
 Sun, 12 Jan 2020 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578831680;
 bh=08tB+QKAmL9AzKm4AcJ/qaAHWkaY9m8DQhHTJZdndHo=;
 h=Date:From:To:Cc:Subject:From;
 b=rbDkxxdo4RbgZ24W6fup3jk4/Y2FKEFg/onC+TwA8zQ5nTZHTDHXj2j0unJh/Izn3
 5g2xQxtbq0eEZ/GzPDpplqb3PyR6ZVINavw7K52FMjXX44Q99MI258GpP0O2ondINf
 uMG5qJ2zQVpKzoJDSvBgs4t8NBulJC9P07GWhtiM=
Date: Sun, 12 Jan 2020 20:21:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock changes for 5.6
Message-ID: <20200112122107.GD27570@T480>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_042120_780816_04E76F2A 
X-CRM114-Status: GOOD (  15.52  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.6

for you to fetch changes up to ec44c497dc64f1cd4cc4cde414235891344a353a:

  clk: imx: imx8mn: use imx8m_clk_hw_composite_core (2020-01-12 15:24:04 +0800)

----------------------------------------------------------------
i.MX clock changes for 5.6:

 - A series from Abel Vesa to do some trivial cleanups which will be
   helpful for i.MX clock driver switching to clk_hw based API.
 - A series from Anson Huang to add i.MX8MP clock driver support.
 - Disable non-functional divider between pll4_audio_div and
   pll4_post_div on imx6q.
 - Fix watchdog2 clock name typo in imx7ulp clock driver.
 - A couple of patches from Leonard Crestez to set CLK_GET_RATE_NOCACHE
   flag for DRAM related clocks on i.MX8M SoCs.
 - Suppress bind attrs for i.MX8M clock driver to avoid the possibility
   of reloading the driver at runtime.
 - Add a big comment in imx8qxp-lpcg driver to tell why
   devm_platform_ioremap_resource() shouldn't be used for the driver.
 - A correction on i.MX8MN usb1_ctrl parent clock setting.
 - A couple of trivial cleanup on clk-divider-gate driver.
 - A series from Peng Fan to convert i.MX8M clock drivers to clk_hw
   based API.
 - Add a IMX_COMPOSITE_CORE flag for i.MX8M clock drivers to reuse
   imx8m_clk_hw_composite for core clock slice.

----------------------------------------------------------------
Abel Vesa (11):
      clk: imx: Add correct failure handling for clk based helpers
      clk: imx: Rename the SCCG to SSCG
      clk: imx: Replace all the clk based helpers with macros
      clk: imx: pllv1: Switch to clk_hw based API
      clk: imx: pllv2: Switch to clk_hw based API
      clk: imx: imx7ulp composite: Rename to show is clk_hw based
      clk: imx: Rename sccg and frac pll register to suggest clk_hw
      clk: imx: Rename the imx_clk_pllv4 to imply it's clk_hw based
      clk: imx: Rename the imx_clk_pfdv2 to imply it's clk_hw based
      clk: imx: Rename the imx_clk_divider_gate to imply it's clk_hw based
      clk: imx7up: Rename the clks to hws

Anson Huang (3):
      clk: imx: gate4: Switch imx_clk_gate4_flags() to clk_hw based API
      dt-bindings: imx: Add clock binding doc for i.MX8MP
      clk: imx: Add support for i.MX8MP clock driver

Fabio Estevam (1):
      clk: imx7ulp: Fix watchdog2 clock name typo

Jan Remmet (1):
      clk: imx6q: disable non functional divider

Leonard Crestez (4):
      clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
      clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
      clk: imx8m: Suppress bind attrs
      clk: imx8qxp-lpcg: Warn against devm_platform_ioremap_resource

Li Jun (1):
      clk: imx8mn: correct the usb1_ctrl parent to be usb_bus

Peng Fan (15):
      clk: imx: clk-divider-gate: fix a typo in comment
      clk: imx: clk-divider-gate: drop redundant initialization
      clk: imx: clk-pll14xx: Switch to clk_hw based API
      clk: imx: clk-composite-8m: Switch to clk_hw based API
      clk: imx: add imx_unregister_hw_clocks
      clk: imx: add hw API imx_clk_hw_mux2_flags
      clk: imx: gate3: Switch to clk_hw based API
      clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
      clk: imx: imx8mn: Switch to clk_hw based API
      clk: imx: imx8mm: Switch to clk_hw based API
      clk: imx: imx8mq: Switch to clk_hw based API
      clk: imx: composite-8m: add imx8m_clk_hw_composite_core
      clk: imx: imx8mq: use imx8m_clk_hw_composite_core
      clk: imx: imx8mm: use imx8m_clk_hw_composite_core
      clk: imx: imx8mn: use imx8m_clk_hw_composite_core

 .../devicetree/bindings/clock/imx8mp-clock.yaml    |  68 ++
 drivers/clk/imx/Kconfig                            |   6 +
 drivers/clk/imx/Makefile                           |   3 +-
 drivers/clk/imx/clk-composite-7ulp.c               |   2 +-
 drivers/clk/imx/clk-composite-8m.c                 |  22 +-
 drivers/clk/imx/clk-divider-gate.c                 |  12 +-
 drivers/clk/imx/clk-frac-pll.c                     |   7 +-
 drivers/clk/imx/clk-imx6q.c                        |   5 +-
 drivers/clk/imx/clk-imx7ulp.c                      | 182 ++---
 drivers/clk/imx/clk-imx8mm.c                       | 558 +++++++--------
 drivers/clk/imx/clk-imx8mn.c                       | 494 ++++++-------
 drivers/clk/imx/clk-imx8mp.c                       | 764 +++++++++++++++++++++
 drivers/clk/imx/clk-imx8mq.c                       | 575 ++++++++--------
 drivers/clk/imx/clk-imx8qxp-lpcg.c                 |  11 +
 drivers/clk/imx/clk-pfdv2.c                        |   2 +-
 drivers/clk/imx/clk-pll14xx.c                      |  29 +-
 drivers/clk/imx/clk-pllv1.c                        |  14 +-
 drivers/clk/imx/clk-pllv2.c                        |  14 +-
 drivers/clk/imx/clk-pllv4.c                        |   2 +-
 drivers/clk/imx/{clk-sccg-pll.c => clk-sscg-pll.c} | 152 ++--
 drivers/clk/imx/clk.c                              |  12 +-
 drivers/clk/imx/clk.h                              | 172 +++--
 include/dt-bindings/clock/imx8mp-clock.h           | 300 ++++++++
 23 files changed, 2349 insertions(+), 1057 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8mp-clock.yaml
 create mode 100644 drivers/clk/imx/clk-imx8mp.c
 rename drivers/clk/imx/{clk-sccg-pll.c => clk-sscg-pll.c} (70%)
 create mode 100644 include/dt-bindings/clock/imx8mp-clock.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
