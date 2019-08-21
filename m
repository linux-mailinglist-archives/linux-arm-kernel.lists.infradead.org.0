Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6939E979D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zqhyJU59LPBEJuZoOH71PdeTp9bGdEyHW607jiuZwBA=; b=ieSe3NGdwBLR9Htcq/leYZaagj
	lTJQ0Ey7ss7HsSYCHBT/aPaXgp6qKKjUIRVLJH6HQFLHKYF05+7bfBlgGokxP+w3T2pMHXqHLvGP6
	cFXB6QTT+WgiydtCeIPUV1NOMmufa7RRsew2jSh6aUgRkToX6OcoE+AYM3iOhE2fyBoV2FqvMBztY
	uCiGTdljTuLMjM5gXCDeP/L/Xdhl3dkYuS13eI9QlCoM8XtdWqWiYFKQOj9WO7weg4Z6ZBhf29mfk
	9Yxlv6G0+Ym3cH1P80rz4hkQ2sDoNHSFcA/9pOujr56diqQifuDv0oQY6O+G5APiPW/h0x0Rtcm9k
	dp8U1r5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Q14-0000mZ-Of; Wed, 21 Aug 2019 12:47:06 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Q0G-0000MN-BC
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:46:19 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id rom32000h05gfCL01om3xP; Wed, 21 Aug 2019 14:46:05 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0003e0-Lx; Wed, 21 Aug 2019 14:46:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0007dh-L3; Wed, 21 Aug 2019 14:46:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Simon Horman <horms@verge.net.au>,
	Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 2/3] soc: renesas: Enable ARM_ERRATA_754322 for affected
 Cortex-A9
Date: Wed, 21 Aug 2019 14:46:01 +0200
Message-Id: <20190821124602.29317-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821124602.29317-1-geert+renesas@glider.be>
References: <20190821124602.29317-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_054616_533768_4BEC8BD7 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM Erratum 754322 affects Cortex-A9 revisions r2p* and r3p*.

Enable support code to mitigate the erratum when compiling a kernel for
any of the affected Renesas SoCs:
  - RZ/A1: r3p0,
  - R-Mobile A1: r2p4,
  - R-Car M1A: r2p2-00rel0,
  - R-Car H1: r3p0,
  - SH-Mobile AG5: r2p2,
and drop the corresponding config symbol from shmobile_defconfig.

EMMA Mobile EV2 (r1p3) and RZ/A2 (r4p1) are not affected.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Looks like my R-Mobile A1 is actually r2p3, and the R-Car M1A in Magnus'
farm is r2p4?

 arch/arm/configs/shmobile_defconfig | 1 -
 drivers/soc/renesas/Kconfig         | 5 +++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmobile_defconfig
index c6c70355141c38fa..123821e63873dafa 100644
--- a/arch/arm/configs/shmobile_defconfig
+++ b/arch/arm/configs/shmobile_defconfig
@@ -9,7 +9,6 @@ CONFIG_PERF_EVENTS=y
 CONFIG_SLAB=y
 CONFIG_ARCH_RENESAS=y
 CONFIG_PL310_ERRATA_588369=y
-CONFIG_ARM_ERRATA_754322=y
 CONFIG_SMP=y
 CONFIG_SCHED_MC=y
 CONFIG_NR_CPUS=8
diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index a72d014ea37cc788..3c5e017bacbaca11 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -55,6 +55,7 @@ config ARCH_EMEV2
 
 config ARCH_R7S72100
 	bool "RZ/A1H (R7S72100)"
+	select ARM_ERRATA_754322
 	select PM
 	select PM_GENERIC_DOMAINS
 	select RENESAS_OSTM
@@ -79,6 +80,7 @@ config ARCH_R8A73A4
 config ARCH_R8A7740
 	bool "R-Mobile A1 (R8A77400)"
 	select ARCH_RMOBILE
+	select ARM_ERRATA_754322
 	select RENESAS_INTC_IRQPIN
 
 config ARCH_R8A7743
@@ -108,10 +110,12 @@ config ARCH_R8A77470
 config ARCH_R8A7778
 	bool "R-Car M1A (R8A77781)"
 	select ARCH_RCAR_GEN1
+	select ARM_ERRATA_754322
 
 config ARCH_R8A7779
 	bool "R-Car H1 (R8A77790)"
 	select ARCH_RCAR_GEN1
+	select ARM_ERRATA_754322
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
 	select SYSC_R8A7779
@@ -158,6 +162,7 @@ config ARCH_R9A06G032
 config ARCH_SH73A0
 	bool "SH-Mobile AG5 (R8A73A00)"
 	select ARCH_RMOBILE
+	select ARM_ERRATA_754322
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
 	select RENESAS_INTC_IRQPIN
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
