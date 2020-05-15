Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AD21D4A75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3imSqqXYrMP9XDX+fNoru1FO1VJz6PCzNHVxbSjyCrw=; b=fGnOhYqoNvSpWgM57X8VGujTmd
	OQiQ/WLVzUANhm51F3iap7IG0X/vfDGF3tLfpzoRd4W12K4swZm9U+qwHXlYTV5i0L6Nj96Ualmr9
	YmVJmuMlvxlauipAYCPoHp9DRoqoHu9kCbcCid6VnoQH9tqa3Epz8i2PtSaODN3eN0yQPmgdOlKhJ
	xa0jXYirIxPZi6sru7W3pq/reejdFvvNlWi/W4eYe9zTbruvT+uj105lIilPYhO4EK4nDQA8IKfal
	feJeC5rGF8mCmuwGTH2jK/CXLeFBcSO4DLf7BHIilsIysRcZDv6Qqi8LIHpggyL2WvpMYVp/NRwBq
	OrUKzD9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXFT-0004Xm-UR; Fri, 15 May 2020 10:07:23 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXEL-0003fy-WE
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:06:18 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:ad37:48f9:900a:523e])
 by xavier.telenet-ops.be with bizsmtp
 id ey5w2200B1TfvYq01y5w6J; Fri, 15 May 2020 12:05:56 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0008Qm-Df; Fri, 15 May 2020 12:05:56 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0003pc-Cd; Fri, 15 May 2020 12:05:56 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 2/5] Renesas ARM DT updates for v5.8 (take two)
Date: Fri, 15 May 2020 12:05:44 +0200
Message-Id: <20200515100547.14671-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515100547.14671-1-geert+renesas@glider.be>
References: <20200515100547.14671-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030614_191934_79014E81 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The following changes since commit cf8ae446bbcbf5c48214eb7ddaa6ac6e12f4633d:

  arm64: dts: renesas: Fix IOMMU device node names (2020-04-27 12:02:56 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.8-tag2

for you to fetch changes up to 0e36587c0832af5df894f5e5fcc45fb5a05cea5b:

  arm64: dts: renesas: r8a774c0-cat874: Add support for AISTARVISION MIPI Adapter V2.1 (2020-05-12 10:05:36 +0200)

----------------------------------------------------------------
Renesas ARM DT updates for v5.8 (take two)

  - Initial support for the Renesas RZ/G1H SoC on the iWave RainboW
    Qseven SOM (G21M) and board (G21D),
  - Support for the AISTARVISION MIPI Adapter V2.1 camera board on the
    Silicon Linux EK874 RZ/G2E evaluation kit.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      Merge tag 'renesas-r8a7742-dt-binding-defs-tag' into renesas-arm-dt-for-v5.8

Lad Prabhakar (9):
      dt-bindings: power: rcar-sysc: Add r8a7742 power domain index macros
      clk: renesas: Add r8a7742 CPG Core Clock Definitions
      ARM: dts: r8a7742: Initial SoC device tree
      ARM: dts: r8a7742-iwg21m: Add iWave RZ/G1H Qseven SOM
      ARM: dts: r8a7742-iwg21d-q7: Add iWave G21D-Q7 board based on RZ/G1H
      ARM: dts: r8a7742: Add IRQC support
      ARM: dts: r8a7742: Add [H]SCIF{A|B} support
      ARM: dts: r8a7742: Add GPIO nodes
      arm64: dts: renesas: r8a774c0-cat874: Add support for AISTARVISION MIPI Adapter V2.1

 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/r8a7742-iwg21d-q7.dts            |  37 ++
 arch/arm/boot/dts/r8a7742-iwg21m.dtsi              |  53 ++
 arch/arm/boot/dts/r8a7742.dtsi                     | 648 +++++++++++++++++++++
 arch/arm64/boot/dts/renesas/Makefile               |   3 +-
 .../dts/renesas/aistarvision-mipi-adapter-2.1.dtsi |  94 +++
 .../boot/dts/renesas/r8a774c0-ek874-mipi-2.1.dts   |  72 +++
 include/dt-bindings/clock/r8a7742-cpg-mssr.h       |  42 ++
 include/dt-bindings/power/r8a7742-sysc.h           |  29 +
 9 files changed, 978 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/r8a7742-iwg21d-q7.dts
 create mode 100644 arch/arm/boot/dts/r8a7742-iwg21m.dtsi
 create mode 100644 arch/arm/boot/dts/r8a7742.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/aistarvision-mipi-adapter-2.1.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774c0-ek874-mipi-2.1.dts
 create mode 100644 include/dt-bindings/clock/r8a7742-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a7742-sysc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
