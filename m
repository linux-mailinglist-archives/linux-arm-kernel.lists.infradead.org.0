Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC9016A5AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k9njAcTKUY7KxF/X/zqyDZ821PAYEutacOmQvMAdY38=; b=kizZ93d1w714Lz
	M2Th21BBKfN5XiR7N7CVFT7nB7jf7lPpetrfA+1jiKEln4TcIRJNg6fjqLO1AQgsMMgBvp/Ofm4aS
	p8uHbafRJ0+VVX0PWzUY6QyOUPHSeSjoxdhxBUXXBQci5rjNF15JOHpjLzqjjWCE/uwaoea1rsRsq
	K4/h14caXDeQhRPkes52X94szsSIcWyi6gMKxBt5HuSczXk/EZA/8LW6QEsbp6kFcjdJc1Ar9BdJK
	sWOUKpdPL9v1YCg0ot9rZkL3AE0uj75XP/jJnYXrjAM4Mu5OjHdMQWG4c/g1WtfJngVqVbrydSIhV
	yd9JlTCKgLBU0/DLuJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CSo-00015R-Do; Mon, 24 Feb 2020 12:03:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CSc-00014u-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:03:46 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 515B020828;
 Mon, 24 Feb 2020 12:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582545822;
 bh=n3HYTVSZQtrqxzqedkR11BsfRasDcYFWG20hf7fgCu4=;
 h=Date:From:To:Cc:Subject:From;
 b=dZjS0tKuZIbi/bmwLxEawiZb2eF2dsvxNGhwdgVdVVq8apqff8kIBZT0jHRoDxzEg
 ujnMyizhal+djA85FXTayhsZESzDwuGA39zqT7dJrn9TL1f0QrHtXpsQj6tniDXHwq
 /Fl0tYACRFUpSmGpJRWqIRPKwp8V8xPRT7vlTqpc=
Date: Mon, 24 Feb 2020 20:03:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.6
Message-ID: <20200224120334.GH27688@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_040342_834564_3F189905 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.6

for you to fetch changes up to f10e58a5d20e1cf3a39a842da92c9dd0c3c23849:

  soc: imx-scu: Align imx sc msg structs to 4 (2020-02-24 15:29:43 +0800)

----------------------------------------------------------------
i.MX fixes for 5.6:

 - Build v7_cpu_resume() unconditionally to fix system hang in case that
   suspend is disabled but cpuidle support is enabled.
 - Drop unexisting Ethernet PHY device from imx8qxp-mek board.
 - Fix SRAM compatible strings on imx6dl-colibri-eval-v3 board.
 - Fix imx-scu driver to make sure that all messages words are written
   sequentially.
 - A series from Leonard Crestez to fix i.MX SC API users, having all
   messages aligned on 4 bytes.
 - Fix eMMC supply for phycore-som board.
 - Drop bogus frequency setting from imx7-colibri SD/MMC device, so that
   HS200 mode starts working and delivers better performance.
 - Fix opp-supported-hw for i.MX7D to get consumer and industrial parts
   work with correct frequency settings.
 - Restore MDIO compatible to the correct one for LS1021A SoC.

----------------------------------------------------------------
Ahmad Fatoum (1):
      ARM: imx: build v7_cpu_resume() unconditionally

Fabio Estevam (1):
      arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY

Johan Hovold (1):
      ARM: dts: imx6dl-colibri-eval-v3: fix sram compatible properties

Leonard Crestez (5):
      firmware: imx: scu: Ensure sequential TX
      firmware: imx: misc: Align imx sc msg structs to 4
      firmware: imx: scu-pd: Align imx sc msg structs to 4
      firmware: imx: Align imx_sc_msg_req_cpu_start to 4
      soc: imx-scu: Align imx sc msg structs to 4

Marco Felsch (1):
      ARM: dts: imx6: phycore-som: fix emmc supply

Oleksandr Suvorov (1):
      ARM: dts: imx7-colibri: Fix frequency for sd/mmc

Peng Fan (1):
      ARM: dts: imx7d: fix opp-supported-hw

Vladimir Oltean (1):
      ARM: dts: ls1021a: Restore MDIO compatible to gianfar

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts      |  4 ++--
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi |  1 -
 arch/arm/boot/dts/imx7-colibri.dtsi               |  1 -
 arch/arm/boot/dts/imx7d.dtsi                      |  6 ++---
 arch/arm/boot/dts/ls1021a.dtsi                    |  4 ++--
 arch/arm/mach-imx/Makefile                        |  2 ++
 arch/arm/mach-imx/common.h                        |  4 ++--
 arch/arm/mach-imx/resume-imx6.S                   | 24 ++++++++++++++++++++
 arch/arm/mach-imx/suspend-imx6.S                  | 14 ------------
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts     |  5 -----
 drivers/firmware/imx/imx-scu.c                    | 27 +++++++++++++++++++++++
 drivers/firmware/imx/misc.c                       |  8 +++----
 drivers/firmware/imx/scu-pd.c                     |  2 +-
 drivers/soc/imx/soc-imx-scu.c                     |  2 +-
 14 files changed, 68 insertions(+), 36 deletions(-)
 create mode 100644 arch/arm/mach-imx/resume-imx6.S

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
