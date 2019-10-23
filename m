Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C8BE1AD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NlUNeKBn7T2mFWwWcUtPMk+JTLcUX5vznmmlGntLRRQ=; b=VMR
	AKYqGEN9x05ty3f5rPqVeq0TeIFkFTSYkEFL0eexyGIbUNOOpPpD0AD9V6jf6SyEiSkO8PAjmJM3e
	rvrrLsl4lYG304GDW9HLyTl/LAvyx1DL19j9XYWnUJrEBLK0EgQ2J2AYXV8mTiSeQPoBI8YEfo1y1
	NpJBw1/LBgbr1ubbrgMkJifHzWJp1xDhga/OBxoHCrC1TnqN/KUVJHcgZ51KWOOK3hRO+LTYs24Bk
	xwHBDZEWfTuFLTR7H5pvTsvZnEPFbdIS+lxMb1NdHvJq/57Z0EyXb3+U9NXQnh95BwMWfoEXmSppE
	kEOcFs32JGGp3CfgtcBGGPeMnGZbBow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFun-0003FN-PI; Wed, 23 Oct 2019 12:39:01 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFpi-0006mQ-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:33:52 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id H0Zj2100r05gfCL010Zjg4; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpf-0003tX-Ry; Wed, 23 Oct 2019 14:33:43 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpf-0003QC-QF; Wed, 23 Oct 2019 14:33:43 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 00/11] arm64: renesas: Add r8a77961 support
Date: Wed, 23 Oct 2019 14:33:31 +0200
Message-Id: <20191023123342.13100-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053346_368513_29D980D1 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series adds initial support for the Renesas R-Car M3-W+
(R8A77961) SoC, and for the Salvator-XS development board equipped with
this SoC.  As R-Car M3-W+ is very similar to R-Car M3-W (R8A77960), the
existing RST and SYSC drivers are updated to handle both.

To avoid confusion between R-Car M3-W and M3-W+, a new config symbol
(ARCH_R8A77960) is introduced for M3-W, to replace the old symbol
(ARCH_R8A7796) later.  The old symbol will be removed when all users in
other subsystems have been converted to use the new symbol.
The existing config symbol for M3-W SYSC is renamed to SYSC_R8A77960.

Changes compared to v1[1]:
  - Split in per-subsystem series,
  - Add Reviewed-by, Tested-by,
  - Rename SYSC_R8A7796,
  - Add ARCH_R8A77960,
  - Prepare for future removal of ARCH_R8A7796,
  - Wrap SoC-specific parts in #ifdefs.

I intend to queue this series in renesas-devel for v5.5 (except for the
local defconfig patch).
Note that arch/arm64/boot/dts/renesas/r8a77961.dtsi depends on the power
domain and clock domain indices from:
  - "[PATCH v2 5/5] dt-bindings: power: Add r8a77961 SYSC power domain
     definitions"[2],
  - "[PATCH v2 2/4] dt-bindings: clock: Add r8a77961 CPG Core Clock
     Definitions"[3],
which will be put on a branch shared by drivers and DTS.

For testing, I pushed this and all dependencies[2-5] to the
topic/r8a77961-v2 branch of my renesas-drivers git repository at
git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.

Thanks for your comments!

[1] "[PATCH/RFC 00/19] arm64: dts: renesas: Initial support for R-Car M3-W+"
    https://lore.kernel.org/linux-renesas-soc/20191007102332.12196-1-geert+renesas@glider.be/
[2] "[PATCH v2 0/5] dt-bindings: arm: renesas: Add core r8a77961 support"
    (https://lore.kernel.org/linux-renesas-soc/20191023122911.12166-1-geert+renesas@glider.be/)
[3] "[PATCH v2 0/4] clk: renesas: Add r8a77961 support"
    (https://lore.kernel.org/linux-renesas-soc/20191023122941.12342-1-geert+renesas@glider.be/)
[4] "[PATCH v2 0/3] pinctrl: sh-pfc: Add r8a77961 support"
    (https://lore.kernel.org/linux-renesas-soc/20191023122955.12420-1-geert+renesas@glider.be/)
[5] "[PATCH v2] dt-bindings: serial: sh-sci: Document r8a77961 bindings"
    (https://lore.kernel.org/linux-renesas-soc/20191023123010.12501-1-geert+renesas@glider.be/)

Geert Uytterhoeven (11):
  soc: renesas: Rename SYSC_R8A7796 to SYSC_R8A77960
  soc: renesas: Add ARCH_R8A77960 for existing R-Car M3-W
  soc: renesas: Add ARCH_R8A77961 for new R-Car M3-W+
  soc: renesas: Identify R-Car M3-W+
  soc: renesas: rcar-rst: Add R8A77961 support
  soc: renesas: rcar-sysc: Add R8A77961 support
  arm64: dts: renesas: Prepare for rename of ARCH_R8A7796 to
    ARCH_R8A77960
  arm64: dts: renesas: Add Renesas R8A77961 SoC support
  arm64: dts: renesas: Add support for Salvator-XS with R-Car M3-W+
  arm64: defconfig: Enable R8A77961 SoC
  [LOCAL] arm64: renesas_defconfig: Enable R8A77961 SoC

 arch/arm64/boot/dts/renesas/Makefile          |   4 +
 .../boot/dts/renesas/r8a77961-salvator-xs.dts |  31 +
 arch/arm64/boot/dts/renesas/r8a77961.dtsi     | 723 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 arch/arm64/configs/renesas_defconfig          |   1 +
 drivers/soc/renesas/Kconfig                   |  21 +-
 drivers/soc/renesas/Makefile                  |   3 +-
 drivers/soc/renesas/r8a7796-sysc.c            |  27 +-
 drivers/soc/renesas/rcar-rst.c                |   1 +
 drivers/soc/renesas/rcar-sysc.c               |   7 +-
 drivers/soc/renesas/rcar-sysc.h               |   3 +-
 drivers/soc/renesas/renesas-soc.c             |   5 +-
 12 files changed, 807 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961.dtsi

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
