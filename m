Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDA7E3814
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qs6uABJBBxNwTWncK1Ku9C32qDQS2mBEE4vTONeMJA=; b=B9nluG44wscBaP
	p19LGhRz057cXUwJVr5ppW2g/wUqJ4SZEqH6SIu26k0ySp1xpNITEoabHTPFuqdU5WUGU8BiUiSor
	E0qiLDmCviTiiNh58v0qjMe98aVAVXujTrFOYqHvr3dYmATRydBxiyr131jyLqC89w/WdKJHvdhAB
	M5lhvwS8L9u0uTYD76F2dwcGlNq6/EcCO6qH/sYlUT2oL1pZESb2ZE+ZW5wwetlrfr+fwOAJJ8rgg
	H/mPVS3kEhfuuCBs4sDh+hyVWDCW7t2FYLVMgpOan79208PL/u0TaMdm+UI+16ag8JZaHU8lYeXSO
	Ilade5K6tVWk/yyrsZ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg6z-0004bF-P1; Thu, 24 Oct 2019 16:37:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg6g-0004Zv-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:37:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8DDBD819C;
 Thu, 24 Oct 2019 16:37:36 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3] device tree changes for omaps for v5.5
Date: Thu, 24 Oct 2019 09:36:54 -0700
Message-Id: <pull-1571934890-285615@atomide.com-2>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1571934890-285615@atomide.com>
References: <pull-1571934890-285615@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093702_973529_8705AB26 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 087a2b7ec973f6f30f6e7b72cb50b6f7734ffdd2:

  ARM: dts: Use level interrupt for omap4 & 5 wlcore (2019-10-09 15:11:27 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/dt-signed

for you to fetch changes up to fedc8844d5004ffa69d3e320081bfd59979e1937:

  Merge branch 'omap-for-v5.5/droid4' into omap-for-v5.5/dt (2019-10-23 10:34:28 -0700)

----------------------------------------------------------------
Device tree changes for omaps for v5.5

This series of changes adds support for few new boards, moves
remaining ti wilink bluetooth users to use the serdev driver,
and improves support for existing devices:

- Add support for NetCAN Plus devices

- Configure wilink bluetooth for logicpd-torpedo and omap3-igep

- Switch to using generic LCD panel for logicpd-torpedo and
  increase camera pixel clock

- Configure droid4 for 300mA USB host mode and move to a common file
  to start adding support for droid bionic

- Rename ocmcram node to sram

----------------------------------------------------------------
Adam Ford (4):
      ARM: dts: logicpd-torpedo-baseboard: Reduce video regulator chatter
      ARM: dts: logicpd-torpedo-37xx-devkit-28: Reference new DRM panel
      ARM: dts: logicpd-torpedo: Disable Bluetooth Serial DMA
      ARM: dts: logicpd-torpedo-37xx-devkit: Increase camera pixel clock

Krzysztof Kozlowski (2):
      ARM: dts: am: Rename "ocmcram" node to "sram"
      ARM: dts: omap: Rename "ocmcram" node to "sram"

Sebastian Reichel (2):
      ARM: dts: LogicPD Torpedo: Add WiLink UART node
      ARM: dts: IGEP: Add WiLink UART node

Tony Lindgren (3):
      ARM: dts: omap4-droid4: Allow 300mA current for USB peripherals
      ARM: dts: Add minimal support for Droid Bionic xt875
      Merge branch 'omap-for-v5.5/droid4' into omap-for-v5.5/dt

Yegor Yefremov (3):
      ARM: dts: add DTS for NetCAN Plus devices
      ARM: dts: add DTS for NetCom Plus 1xx and 2xx device series
      ARM: dts: add DTS for NetCom Plus 4xx and 8xx device series

 arch/arm/boot/dts/Makefile                         |   4 +
 arch/arm/boot/dts/am335x-netcan-plus-1xx.dts       |  87 +++
 arch/arm/boot/dts/am335x-netcom-plus-2xx.dts       |  95 +++
 arch/arm/boot/dts/am335x-netcom-plus-8xx.dts       | 115 +++
 arch/arm/boot/dts/am33xx.dtsi                      |   6 +-
 arch/arm/boot/dts/am4372.dtsi                      |   6 +-
 .../boot/dts/logicpd-torpedo-37xx-devkit-28.dts    |  20 +-
 arch/arm/boot/dts/logicpd-torpedo-37xx-devkit.dts  |  14 +
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi   |   1 +
 arch/arm/boot/dts/motorola-mapphone-common.dtsi    | 786 +++++++++++++++++++++
 arch/arm/boot/dts/omap3-igep0020-rev-f.dts         |   8 +
 arch/arm/boot/dts/omap3-igep0030-rev-g.dts         |   8 +
 arch/arm/boot/dts/omap4-droid-bionic-xt875.dts     |   9 +
 arch/arm/boot/dts/omap4-droid4-xt894.dts           | 777 +-------------------
 arch/arm/boot/dts/omap4.dtsi                       |   2 +-
 arch/arm/boot/dts/omap5.dtsi                       |   2 +-
 16 files changed, 1138 insertions(+), 802 deletions(-)
 create mode 100644 arch/arm/boot/dts/am335x-netcan-plus-1xx.dts
 create mode 100644 arch/arm/boot/dts/am335x-netcom-plus-2xx.dts
 create mode 100644 arch/arm/boot/dts/am335x-netcom-plus-8xx.dts
 create mode 100644 arch/arm/boot/dts/motorola-mapphone-common.dtsi
 create mode 100644 arch/arm/boot/dts/omap4-droid-bionic-xt875.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
