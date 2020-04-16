Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC061AC072
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8WTPgQieWGtJUOjInpB1aoSBEVc7A7CqNBwriekfBiU=; b=gc6ddEi1/8D2dJNsVYA3Zz8NZ/
	R+jhlzfn7mieLrciwYHBkmPsOzSEGSEXAmCB2yGrh6Swzm050AoN0aKmTwAgMT2FR/aA3B04XI3S9
	ff3lTvTYFIuYtxoLYMoKS5xP7PYV7eF2wpFFfmd393NnNLrPxcVoYI6FLrSW3M65XJca5gc7OF+U/
	u5ZEBg4vuCemYGZpaaaLveMYnNgFYPhuX52X1nScCZKi0WVf0P6UmxRJHikejt8j4GTH0VEiBbN20
	SD1W7hRhfNLCD/YoACj08RKDEClcqBnSTaI394DGP4iSwgdCSEgW6e83oJdNX+uJ7+vkbdJvYInty
	r4sdMYmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP39J-0000gg-BP; Thu, 16 Apr 2020 11:57:41 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP38o-0000VU-W3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:57:13 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:fd83:81bb:c1d7:433d])
 by albert.telenet-ops.be with bizsmtp
 id TPx02200L4dKHqf06Px0Vl; Thu, 16 Apr 2020 13:57:03 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP38e-0003KX-8w; Thu, 16 Apr 2020 13:57:00 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP38e-0005Jv-6x; Thu, 16 Apr 2020 13:57:00 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 1/2] arm64: Sort vendor-specific errata
Date: Thu, 16 Apr 2020 13:56:57 +0200
Message-Id: <20200416115658.20406-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200416115658.20406-1-geert+renesas@glider.be>
References: <20200416115658.20406-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045711_759005_DE461C54 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Robert Richter <rrichter@marvell.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort configuration options for vendor-specific errata by vendor, to
increase uniformity.
Move ARM64_WORKAROUND_REPEAT_TLBI up, as it is also selected by
ARM64_ERRATUM_1286807.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/Kconfig | 72 +++++++++++++++++++++++-----------------------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c6072c9..8d33d7fed6d8549b 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -553,6 +553,9 @@ config ARM64_ERRATUM_1530923
 
 	  If unsure, say Y.
 
+config ARM64_WORKAROUND_REPEAT_TLBI
+	bool
+
 config ARM64_ERRATUM_1286807
 	bool "Cortex-A76: Modification of the translation table for a virtual address might lead to read-after-read ordering violation"
 	default y
@@ -694,6 +697,35 @@ config CAVIUM_TX2_ERRATUM_219
 
 	  If unsure, say Y.
 
+config FUJITSU_ERRATUM_010001
+	bool "Fujitsu-A64FX erratum E#010001: Undefined fault may occur wrongly"
+	default y
+	help
+	  This option adds a workaround for Fujitsu-A64FX erratum E#010001.
+	  On some variants of the Fujitsu-A64FX cores ver(1.0, 1.1), memory
+	  accesses may cause undefined fault (Data abort, DFSC=0b111111).
+	  This fault occurs under a specific hardware condition when a
+	  load/store instruction performs an address translation using:
+	  case-1  TTBR0_EL1 with TCR_EL1.NFD0 == 1.
+	  case-2  TTBR0_EL2 with TCR_EL2.NFD0 == 1.
+	  case-3  TTBR1_EL1 with TCR_EL1.NFD1 == 1.
+	  case-4  TTBR1_EL2 with TCR_EL2.NFD1 == 1.
+
+	  The workaround is to ensure these bits are clear in TCR_ELx.
+	  The workaround only affects the Fujitsu-A64FX.
+
+	  If unsure, say Y.
+
+config HISILICON_ERRATUM_161600802
+	bool "Hip07 161600802: Erroneous redistributor VLPI base"
+	default y
+	help
+	  The HiSilicon Hip07 SoC uses the wrong redistributor base
+	  when issued ITS commands such as VMOVP and VMAPP, and requires
+	  a 128kB offset to be applied to the target address in this commands.
+
+	  If unsure, say Y.
+
 config QCOM_FALKOR_ERRATUM_1003
 	bool "Falkor E1003: Incorrect translation due to ASID change"
 	default y
@@ -705,9 +737,6 @@ config QCOM_FALKOR_ERRATUM_1003
 	  is unchanged. Work around the erratum by invalidating the walk cache
 	  entries for the trampoline before entering the kernel proper.
 
-config ARM64_WORKAROUND_REPEAT_TLBI
-	bool
-
 config QCOM_FALKOR_ERRATUM_1009
 	bool "Falkor E1009: Prematurely complete a DSB after a TLBI"
 	default y
@@ -729,25 +758,6 @@ config QCOM_QDF2400_ERRATUM_0065
 
 	  If unsure, say Y.
 
-config SOCIONEXT_SYNQUACER_PREITS
-	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
-	default y
-	help
-	  Socionext Synquacer SoCs implement a separate h/w block to generate
-	  MSI doorbell writes with non-zero values for the device ID.
-
-	  If unsure, say Y.
-
-config HISILICON_ERRATUM_161600802
-	bool "Hip07 161600802: Erroneous redistributor VLPI base"
-	default y
-	help
-	  The HiSilicon Hip07 SoC uses the wrong redistributor base
-	  when issued ITS commands such as VMOVP and VMAPP, and requires
-	  a 128kB offset to be applied to the target address in this commands.
-
-	  If unsure, say Y.
-
 config QCOM_FALKOR_ERRATUM_E1041
 	bool "Falkor E1041: Speculative instruction fetches might cause errant memory access"
 	default y
@@ -758,22 +768,12 @@ config QCOM_FALKOR_ERRATUM_E1041
 
 	  If unsure, say Y.
 
-config FUJITSU_ERRATUM_010001
-	bool "Fujitsu-A64FX erratum E#010001: Undefined fault may occur wrongly"
+config SOCIONEXT_SYNQUACER_PREITS
+	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
 	default y
 	help
-	  This option adds a workaround for Fujitsu-A64FX erratum E#010001.
-	  On some variants of the Fujitsu-A64FX cores ver(1.0, 1.1), memory
-	  accesses may cause undefined fault (Data abort, DFSC=0b111111).
-	  This fault occurs under a specific hardware condition when a
-	  load/store instruction performs an address translation using:
-	  case-1  TTBR0_EL1 with TCR_EL1.NFD0 == 1.
-	  case-2  TTBR0_EL2 with TCR_EL2.NFD0 == 1.
-	  case-3  TTBR1_EL1 with TCR_EL1.NFD1 == 1.
-	  case-4  TTBR1_EL2 with TCR_EL2.NFD1 == 1.
-
-	  The workaround is to ensure these bits are clear in TCR_ELx.
-	  The workaround only affects the Fujitsu-A64FX.
+	  Socionext Synquacer SoCs implement a separate h/w block to generate
+	  MSI doorbell writes with non-zero values for the device ID.
 
 	  If unsure, say Y.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
