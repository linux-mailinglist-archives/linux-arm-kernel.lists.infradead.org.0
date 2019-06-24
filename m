Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66365510B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 17:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hqd43dtybxbWFtnFt4uGWDA3VC9RhTsMG6l4P88eVD0=; b=TUjkeqehNsfxR2
	SS3Pa6Yf5w7MJSqXKc09gMVUBbXx10Abgk7rd1hoYtyaCDDH/ny+2JiqR2KWE1qtMnjPB7Mz/bUBt
	OfLFI3zoMcdMUghsad3iMbm6t13bL0kMfdlpMESf/kYrMp2JaDxR+kxRTdF/9OrtOyLAxoDAd9Yox
	/ai8kzcZPD8Jgq8Q7ToB/4V+UzvPeMgHUEtSspK+ztH5IodIyo93mr2dYV4EBSYCgf9QhDyV2QGrz
	vI49yuHkzHYBf1uvHo7ALncj4PJOLL7ol3KQa8evSDXa7I3JS7a3PiFqnEGATtjafsfywh2v85tbn
	gt5mUcXhbvAdoHg2zN4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfR1i-0008BS-Ar; Mon, 24 Jun 2019 15:37:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfR1W-0008B1-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 15:36:52 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76F0420652;
 Mon, 24 Jun 2019 15:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561390610;
 bh=nQCGscNj+O8LozAIbKzRYPUMqcYVm8/zAFTWN0z8usw=;
 h=Date:From:To:Cc:Subject:From;
 b=VZwLui3eS08gH9W27JP8goYPWjymvy6o3GGB2DTJ7YnynAwQw9hLr2VBDz8+B8ulL
 gI3DcH2gXdZ7FjVSUvmiL1epya80kXTZ35DC4uVCbygZhHw3ZocqlSsp5cR47sLgQm
 7pjb4JTjnnMAOOVpGTyaFTwJ54vnl/IthFA7gsBU=
Date: Mon, 24 Jun 2019 23:36:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] i.MX clock changes for 5.3
Message-ID: <20190624153615.GA20480@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_083650_694674_AA6C02FF 
X-CRM114-Status: GOOD (  11.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Stephen,

Here is i.MX clock driver changes I queued for 5.3.  Please keep commit
53c6a2ec018b ("clk: imx8m: Add GIC clock") stable, as I pulled it into
i.MX DT tree as dependency.  Thanks!

Shawn


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.3

for you to fetch changes up to 15c64ff7625513c551e2b50c1ae28f729b61c5d3:

  clk: imx8mq: Keep uart clocks on during system boot (2019-06-24 09:43:40 +0800)

----------------------------------------------------------------
i.MX clock changes for 5.3:
 - A series from Abel Vesa to switch i.MX6 and i.MX7 clock drivers to
   clk_hw based API.
 - Add GPIO, SNVS and GIC clocks for i.MX8 drivers.
 - Create a common function imx_mmdc_mask_handshake() for masking MMDC
   handshake.
 - Drop __init for function imx_check_clocks() and imx_register_uart_clocks(),
   so that they can be used by i.MX8 clock drivers which use driver model.
 - Use devm_platform_ioremap_resource() instead of of_iomap() for imx8mq
   clock driver.
 - Mark imx6sx/ul/ull/sll MMDC_P1_IPG and imx8mm DRAM_APB as critical clock.
 - Correct imx7ulp nic1_bus_clk and imx8mm audio_pll2_clk clock setting.

----------------------------------------------------------------
Abel Vesa (18):
      clk: imx: Add imx_obtain_fixed_clock clk_hw based variant
      clk: imx6sx: Do not reparent to unregistered IMX6SX_CLK_AXI
      clk: imx6q: Do not reparent uninitialized IMX6QDL_CLK_PERIPH2 clock
      clk: imx: clk-busy: Switch to clk_hw based API
      clk: imx: clk-cpu: Switch to clk_hw based API
      clk: imx: clk-gate2: Switch to clk_hw based API
      clk: imx: clk-pllv3: Switch to clk_hw based API
      clk: imx: clk-pfd: Switch to clk_hw based API
      clk: imx: clk-gate-exclusive: Switch to clk_hw based API
      clk: imx: clk-fixup-div: Switch to clk_hw based API
      clk: imx: clk-fixup-mux: Switch to clk_hw based API
      clk: imx: Switch wrappers to clk_hw based API
      clk: imx6sl: Switch to clk_hw based API
      clk: imx6q: Switch to clk_hw based API
      clk: imx6sx: Switch to clk_hw based API
      clk: imx6ul: Switch to clk_hw based API
      clk: imx7d: Switch to clk_hw based API
      clk: imx6sll: Switch to clk_hw based API

Anson Huang (14):
      dt-bindings: clock: imx8mm: Add GPIO clocks
      clk: imx8mm: add GPIO clocks to clock tree
      dt-bindings: clock: imx8mq: Add SNVS clock
      clk: imx8mq: add SNVS clock to clock tree
      dt-bindings: clock: imx8mm: Add SNVS clock
      clk: imx8mm: add SNVS clock to clock tree
      clk: imx: Add common API for masking MMDC handshake
      clk: imx: Use imx_mmdc_mask_handshake() API for masking MMDC channel
      clk: imx7ulp: update nic1_bus_clk parent info
      clk: imx: Remove __init for imx_check_clocks() API
      clk: imx8mq: Use imx_check_clocks() API directly
      clk: imx8mq: Use devm_platform_ioremap_resource() instead of of_iomap()
      clk: imx: Remove __init for imx_register_uart_clocks() API
      clk: imx8mq: Keep uart clocks on during system boot

Arnd Bergmann (1):
      clk: imx6q: fix section mismatch warning

Jacky Bai (1):
      clk: imx: keep the mmdc p1 ipg clock always on on 6sx/ul/ull/sll

Leonard Crestez (3):
      dt-bindings: clock: imx8m: Add GIC clock
      clk: imx8m: Add GIC clock
      clk: imx8mm: Mark dram_apb critical

Peng Fan (1):
      clk: imx: imx8mm: correct audio_pll2_clk to audio_pll2_out

 drivers/clk/imx/clk-busy.c               |  30 +-
 drivers/clk/imx/clk-cpu.c                |  14 +-
 drivers/clk/imx/clk-fixup-div.c          |  15 +-
 drivers/clk/imx/clk-fixup-mux.c          |  15 +-
 drivers/clk/imx/clk-gate-exclusive.c     |  17 +-
 drivers/clk/imx/clk-gate2.c              |  14 +-
 drivers/clk/imx/clk-imx6q.c              | 781 ++++++++++++------------
 drivers/clk/imx/clk-imx6sl.c             | 409 ++++++-------
 drivers/clk/imx/clk-imx6sll.c            | 433 +++++++-------
 drivers/clk/imx/clk-imx6sx.c             | 661 +++++++++++----------
 drivers/clk/imx/clk-imx6ul.c             | 579 +++++++++---------
 drivers/clk/imx/clk-imx7d.c              | 983 ++++++++++++++++---------------
 drivers/clk/imx/clk-imx7ulp.c            |   2 +-
 drivers/clk/imx/clk-imx8mm.c             |  18 +-
 drivers/clk/imx/clk-imx8mq.c             |  27 +-
 drivers/clk/imx/clk-pfd.c                |  14 +-
 drivers/clk/imx/clk-pllv3.c              |  14 +-
 drivers/clk/imx/clk.c                    |  34 +-
 drivers/clk/imx/clk.h                    | 143 +++--
 include/dt-bindings/clock/imx8mm-clock.h |  11 +-
 include/dt-bindings/clock/imx8mq-clock.h |   5 +-
 21 files changed, 2225 insertions(+), 1994 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
