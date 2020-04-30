Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4991BF374
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w29C03mAUmaLrJ2/H2l6KMby4DELTCeIjHZJTlmsKwQ=; b=sw6kV38GJHYZmIOeFVdq8aTCfm
	tRmcBTsgNJYyvkyzj6k8wy4HziMSYlgJ+Xw61agRKzbAgrHfA9Of9/uefkWlzyo8jh0Qu5QAnNBFE
	SIYJZ+b7nPQ8xTERr2qcPruC/u3c821aLdSl4C3DzzpjMtswuqgI91UOlPM9uwyKD8AeEskTyuwg6
	YLfoEA0kYSD7TriQB/j/Ws6zxZVoctbicDRmBkj4X9OdvYV2MvbnXqd9NIZD/fkkMq0F6U3OiluP+
	HlW9punaPCj/LVwS2Hky/fV42O4ufYf8tspr0xxka572KJnlbSTIako0UTzTAjC66tq1MXMO3jAud
	gJW/8dsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4ss-00074q-9x; Thu, 30 Apr 2020 08:49:30 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4sH-0006q6-74
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:48:56 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:182a:142e:a95f:66c2])
 by laurent.telenet-ops.be with bizsmtp
 id Ywor2200e0w8ZL601worGe; Thu, 30 Apr 2020 10:48:51 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0002l6-HP; Thu, 30 Apr 2020 10:48:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0000OP-Fb; Thu, 30 Apr 2020 10:48:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 2/5] Renesas ARM DT updates for v5.8
Date: Thu, 30 Apr 2020 10:48:46 +0200
Message-Id: <20200430084849.1457-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430084849.1457-1-geert+renesas@glider.be>
References: <20200430084849.1457-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014853_402716_FAC3A672 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.8-tag1

for you to fetch changes up to cf8ae446bbcbf5c48214eb7ddaa6ac6e12f4633d:

  arm64: dts: renesas: Fix IOMMU device node names (2020-04-27 12:02:56 +0200)

----------------------------------------------------------------
Renesas ARM DT updates for v5.8

  - USB, UART, PWM, and PCIe support for R-Car M3-W+,
  - PWM (16-bit Timer Pulse Unit and PWM Timers) support for R-Car M2-W,
  - Minor fixes and cleanups.

----------------------------------------------------------------
Geert Uytterhoeven (4):
      arm64: dts: renesas: r8a77961: Add SCIF and HSCIF nodes
      ARM: dts: r8a7791: Add TPU device node
      ARM: dts: r8a7791: Add PWM device nodes
      ARM: dts: shmobile: Update CMT1 compatible values

Yoshihiro Shimoda (6):
      arm64: dts: renesas: r8a77961: Add USB2.0 device nodes
      arm64: dts: renesas: r8a77961: Add USB3.0 device nodes
      arm64: dts: renesas: r8a77961: Add PWM device nodes
      arm64: dts: renesas: r8a77961: Add PCIe device nodes
      ARM: dts: renesas: Fix IOMMU device node names
      arm64: dts: renesas: Fix IOMMU device node names

 arch/arm/boot/dts/r8a7740.dtsi            |   2 +-
 arch/arm/boot/dts/r8a7743.dtsi            |  12 +-
 arch/arm/boot/dts/r8a7744.dtsi            |  12 +-
 arch/arm/boot/dts/r8a7745.dtsi            |  12 +-
 arch/arm/boot/dts/r8a7790.dtsi            |  12 +-
 arch/arm/boot/dts/r8a7791.dtsi            |  95 ++++++-
 arch/arm/boot/dts/r8a7793.dtsi            |  14 +-
 arch/arm/boot/dts/r8a7794.dtsi            |  12 +-
 arch/arm/boot/dts/sh73a0.dtsi             |   2 +-
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi |  18 +-
 arch/arm64/boot/dts/renesas/r8a774b1.dtsi |  18 +-
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi |  18 +-
 arch/arm64/boot/dts/renesas/r8a77950.dtsi |  14 +-
 arch/arm64/boot/dts/renesas/r8a77951.dtsi |  34 +--
 arch/arm64/boot/dts/renesas/r8a77960.dtsi |  22 +-
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 403 ++++++++++++++++++++++++++++--
 arch/arm64/boot/dts/renesas/r8a77965.dtsi |  20 +-
 arch/arm64/boot/dts/renesas/r8a77970.dtsi |  10 +-
 arch/arm64/boot/dts/renesas/r8a77980.dtsi |  16 +-
 arch/arm64/boot/dts/renesas/r8a77990.dtsi |  20 +-
 arch/arm64/boot/dts/renesas/r8a77995.dtsi |  20 +-
 21 files changed, 620 insertions(+), 166 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
