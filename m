Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84A9DC374
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t9ZpFKdkJe+BnIIK7yI+RuK5B9rUiQ/zl9OlHkcqZdw=; b=JxdYG6Z7WvfNTlYDlWOu8Jv7Ta
	59NNj+lxgZoEfjwhyyqyDsCUoyC260dF5dL2GlOZzFJLkSQhkg4OEKBKi0RVM4pyjmbuznWMw7rvl
	n26+M2yh6hmqNysqEm2EYMdvccJC/6eOhLbaey9L5jcr2TNR4W8DCAOB71mvQpGGw/QmCPjrR64ta
	Xo6mSGMRt+kj3kPapYzyYeGwhVVJzkPQ+xNuGRVv8IQBMV+3IQHhMhp6UnnApYC0l/IEha7KuGftD
	EMNHDl2O1RyvAA1FGbPjjuIjYupLSjDiSCwuu8R/5nCf8ArzVGPahRV8DKE2CpiMoQMWPcgJMFFgk
	tCIStj0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQ1M-0002BF-Kp; Fri, 18 Oct 2019 11:02:12 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQ0P-0001Qk-JK
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:01:15 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id Ez142100j05gfCL01z14W0; Fri, 18 Oct 2019 13:01:07 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLQ0G-0005q3-LN; Fri, 18 Oct 2019 13:01:04 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLPEt-0006s2-SH; Fri, 18 Oct 2019 12:12:07 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 3/5] Renesas ARM64 DT updates for v5.5
Date: Fri, 18 Oct 2019 12:11:34 +0200
Message-Id: <20191018101136.26350-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018101136.26350-1-geert+renesas@glider.be>
References: <20191018101136.26350-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_040113_791206_E8123DA6 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.5-tag1

for you to fetch changes up to 3fa08cbb0662acc6cbd1a481956570a52dba8875:

  arm64: dts: renesas: r8a774b1: Add CAN and CAN FD support (2019-10-14 12:04:59 +0200)

----------------------------------------------------------------
Renesas ARM64 DT updates for v5.5

  - Support for the RZ/G2N (r8a774b1) SoC and the HiHope RZ/G2N board,
  - CPU idle support for R-Car H3 and M3-W,
  - LVDS and backlight support on the HiHope RZ/G2M and RZ/G2N boards,
    with Advantech idk-1110wr LVDS panel,
  - Minor fixes and improvements.

----------------------------------------------------------------
Biju Das (34):
      dt-bindings: power: Add r8a774b1 SYSC power domain definitions
      dt-bindings: clk: Add r8a774b1 CPG Core Clock Definitions
      arm64: dts: renesas: r8a774c0: Create thermal zone to support IPA
      arm64: dts: renesas: r8a774c0: Add dynamic power coefficient
      arm64: dts: renesas: Initial r8a774b1 SoC device tree
      arm64: dts: renesas: Add HiHope RZ/G2N main board support
      arm64: dts: renesas: r8a774a1: Remove audio port node
      arm64: dts: renesas: r8a774b1-hihope-rzg2n: Enable HS400 mode
      arm64: dts: renesas: r8a774b1: Add SYS-DMAC device nodes
      arm64: dts: renesas: r8a774b1: Add SCIF and HSCIF nodes
      arm64: dts: renesas: r8a774b1: Add GPIO device nodes
      arm64: dts: renesas: r8a774b1: Add Ethernet AVB node
      arm64: dts: renesas: Add HiHope RZ/G2N sub board support
      arm64: dts: renesas: r8a774b1: Add OPPs table for cpu devices
      arm64: dts: renesas: r8a774b1: Add RZ/G2N thermal support
      arm64: dts: renesas: r8a774b1: Add CMT device nodes
      arm64: dts: renesas: r8a774b1: Add TMU device nodes
      arm64: dts: renesas: r8a774b1: Add SDHI support
      arm64: dts: renesas: r8a774b1: Add I2C and IIC-DVFS support
      arm64: dts: renesas: r8a774b1: Add IPMMU device nodes
      arm64: dts: renesas: r8a774b1: Add FCPF and FCPV instances
      arm64: dts: renesas: r8a774b1: Add VSP instances
      arm64: dts: renesas: r8a774b1: Tie SYS-DMAC to IPMMU-DS0/1
      arm64: dts: renesas: r8a774b1: Connect Ethernet-AVB to IPMMU-DS0
      arm64: dts: renesas: hihope-common: Move du clk properties out of common dtsi
      arm64: dts: renesas: r8a774b1: Add DU device to DT
      arm64: dts: renesas: r8a774b1: Add HDMI encoder instance
      arm64: dts: renesas: r8a774b1-hihope-rzg2n: Add display clock properties
      arm64: dts: renesas: r8a774b1: Add FDP1 device nodes
      arm64: dts: renesas: r8a774b1: Add PWM device nodes
      arm64: dts: renesas: hihope-rzg2-ex: Enable backlight
      arm64: dts: renesas: hihope-rzg2-ex: Add LVDS support
      arm64: dts: renesas: Add support for Advantech idk-1110wr LVDS panel
      arm64: dts: renesas: r8a774b1: Add Sound and Audio DMAC device nodes

Dien Pham (2):
      arm64: dts: r8a7795: Add cpuidle support for CA53 cores
      arm64: dts: r8a7796: Add cpuidle support for CA53 cores

Fabrizio Castro (9):
      arm64: dts: renesas: r8a774b1: Add RWDT node
      arm64: dts: renesas: r8a774b1: Add all MSIOF nodes
      arm64: dts: renesas: r8a774b1: Add PCIe device nodes
      arm64: dts: renesas: hihope-rzg2-ex: Let the board specific DT decide about pciec1
      arm64: dts: renesas: r8a774b1: Add USB2.0 phy and host (EHCI/OHCI) device nodes
      arm64: dts: renesas: r8a774b1: Add USB-DMAC and HSUSB device nodes
      arm64: dts: renesas: r8a774b1: Add USB3.0 device nodes
      arm64: dts: renesas: r8a774b1: Add INTC-EX device node
      arm64: dts: renesas: r8a774b1: Add CAN and CAN FD support

Jacopo Mondi (1):
      arm64: dts: renesas: Add LIF channel indices to vsps properties

Khiem Nguyen (2):
      arm64: dts: r8a7795: Add cpuidle support for CA57 cores
      arm64: dts: r8a7796: Add cpuidle support for CA57 cores

Kieran Bingham (1):
      arm64: dts: renesas: r8a77970: Fix PWM3

Yoshihiro Shimoda (1):
      arm64: dts: renesas: Add iommus to R-Car Gen3 SDHI/MMC nodes

 arch/arm64/boot/dts/renesas/Makefile               |    2 +
 arch/arm64/boot/dts/renesas/hihope-common.dtsi     |   28 +-
 arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi    |   51 +-
 .../boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts  |    4 +
 .../boot/dts/renesas/r8a774a1-hihope-rzg2m.dts     |   11 +
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi          |   13 +-
 .../boot/dts/renesas/r8a774b1-hihope-rzg2n-ex.dts  |   15 +
 .../boot/dts/renesas/r8a774b1-hihope-rzg2n.dts     |   41 +
 arch/arm64/boot/dts/renesas/r8a774b1.dtsi          | 2250 ++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi          |   20 +-
 arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi       |    2 +-
 arch/arm64/boot/dts/renesas/r8a7795.dtsi           |   34 +
 arch/arm64/boot/dts/renesas/r8a7796.dtsi           |   34 +-
 arch/arm64/boot/dts/renesas/r8a77965.dtsi          |    4 +
 arch/arm64/boot/dts/renesas/r8a77970.dtsi          |    5 +-
 arch/arm64/boot/dts/renesas/r8a77980.dtsi          |    3 +-
 arch/arm64/boot/dts/renesas/r8a77990.dtsi          |    3 +
 arch/arm64/boot/dts/renesas/r8a77995.dtsi          |    1 +
 .../renesas/rzg2-advantech-idk-1110wr-panel.dtsi   |   41 +
 include/dt-bindings/clock/r8a774b1-cpg-mssr.h      |   57 +
 include/dt-bindings/power/r8a774b1-sysc.h          |   26 +
 21 files changed, 2603 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774b1-hihope-rzg2n-ex.dts
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774b1-hihope-rzg2n.dts
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774b1.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/rzg2-advantech-idk-1110wr-panel.dtsi
 create mode 100644 include/dt-bindings/clock/r8a774b1-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a774b1-sysc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
