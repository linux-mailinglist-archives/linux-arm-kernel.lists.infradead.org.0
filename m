Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB713032D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cqgy04++m3TUj9rIYyYd5MNM5LIiM00QXGNF5wd54UA=; b=Pt4n/QJjMvrE19n+ouNGzdZeHk
	vidni3JRswIAG0ivqutwKjr3vAm7aHzDVOZxl9WQLPKLz41F7b3hrF2+YUT8xTCQqRkW3ywFMURvY
	WqU4+tgDMRHgPPZydIcKHgTnOryhji1gdKsUa3uhYt2nAjgUpbgfDsdW1KpqSH24rAu0ZMg1+qc+n
	K+otCuqjrhSBSdzhJFGwevGIkKEOSw2p14U9uSoxmn1mSy03VktIYoVXM6i/2Ywuh4kO/z98L0t3j
	TU/LOeN7WViF1DGCLfb5RCb6BXLcGVibG7glsnpmkFvZtHhZ8UZ8hp7ksCFFL8P4SfRW4MYsNikLH
	/mz0AyNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlGc-0001sv-Mc; Sat, 04 Jan 2020 15:23:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlFV-00012q-Ik
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:21:59 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 396B82464E;
 Sat,  4 Jan 2020 15:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151316;
 bh=EQcqcjjuv0ouoB59KSHZHDUV1ulzaGFtTg7hG/A0CYg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eLMuVvEaWGCbCegYXJlpdmRAOu7dKrufwcvtboIHnFMehI8rKl139rmnhFMrt4E1W
 EiouZtSUM7pczl53PuVxc0sC0huu6kRWHAwYDfuwksA+f/QbqFKPOvPr78FvgssbN6
 QWQVTk+Ihy8S16+g89A+bBROHaDNPs2i0qDMRbVo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/20] soc: samsung: Rename Samsung and Exynos to lowercase
Date: Sat,  4 Jan 2020 16:20:52 +0100
Message-Id: <20200104152107.11407-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072157_708219_155E1B79 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Samsung"
and "Exynos" names.

"SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
names.  Therefore they should be written with lowercase letters starting
with capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Although advertisement materials usually use uppercase "SAMSUNG", the
lowercase version is used in all legal aspects (e.g. on Wikipedia and in
privacy/legal statements on
https://www.samsung.com/semiconductor/privacy-global/).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/soc/samsung/Kconfig                 |  2 +-
 drivers/soc/samsung/exynos-chipid.c         |  2 +-
 drivers/soc/samsung/exynos-pmu.c            |  2 +-
 drivers/soc/samsung/exynos-pmu.h            |  2 +-
 drivers/soc/samsung/exynos3250-pmu.c        |  2 +-
 drivers/soc/samsung/exynos4-pmu.c           |  2 +-
 drivers/soc/samsung/exynos5250-pmu.c        |  2 +-
 drivers/soc/samsung/exynos5420-pmu.c        |  2 +-
 include/linux/soc/samsung/exynos-pmu.h      |  2 +-
 include/linux/soc/samsung/exynos-regs-pmu.h | 16 ++++++++--------
 10 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
index 27fc59bbb520..c7a2003687c7 100644
--- a/drivers/soc/samsung/Kconfig
+++ b/drivers/soc/samsung/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 #
-# SAMSUNG SoC drivers
+# Samsung SoC drivers
 #
 menuconfig SOC_SAMSUNG
 	bool "Samsung SoC driver support" if COMPILE_TEST
diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index b89c26a71c6e..2dad4961a80b 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -3,7 +3,7 @@
  * Copyright (c) 2019 Samsung Electronics Co., Ltd.
  *	      http://www.samsung.com/
  *
- * EXYNOS - CHIP ID support
+ * Exynos - CHIP ID support
  * Author: Pankaj Dubey <pankaj.dubey@samsung.com>
  * Author: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
  */
diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index 7da2701c871a..17304fa18429 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2014 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com/
 //
-// EXYNOS - CPU PMU(Power Management Unit) support
+// Exynos - CPU PMU(Power Management Unit) support
 
 #include <linux/of.h>
 #include <linux/of_address.h>
diff --git a/drivers/soc/samsung/exynos-pmu.h b/drivers/soc/samsung/exynos-pmu.h
index 977e4daf5a0f..5e851f32307e 100644
--- a/drivers/soc/samsung/exynos-pmu.h
+++ b/drivers/soc/samsung/exynos-pmu.h
@@ -3,7 +3,7 @@
  * Copyright (c) 2015 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * Header for EXYNOS PMU Driver support
+ * Header for Exynos PMU Driver support
  */
 
 #ifndef __EXYNOS_PMU_H
diff --git a/drivers/soc/samsung/exynos3250-pmu.c b/drivers/soc/samsung/exynos3250-pmu.c
index 275d348ed9c9..30f230ed1769 100644
--- a/drivers/soc/samsung/exynos3250-pmu.c
+++ b/drivers/soc/samsung/exynos3250-pmu.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2015 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com/
 //
-// EXYNOS3250 - CPU PMU (Power Management Unit) support
+// Exynos3250 - CPU PMU (Power Management Unit) support
 
 #include <linux/soc/samsung/exynos-regs-pmu.h>
 #include <linux/soc/samsung/exynos-pmu.h>
diff --git a/drivers/soc/samsung/exynos4-pmu.c b/drivers/soc/samsung/exynos4-pmu.c
index a7cdbf1aac0c..cb35103565a6 100644
--- a/drivers/soc/samsung/exynos4-pmu.c
+++ b/drivers/soc/samsung/exynos4-pmu.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2015 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com/
 //
-// EXYNOS4 - CPU PMU(Power Management Unit) support
+// Exynos4 - CPU PMU(Power Management Unit) support
 
 #include <linux/soc/samsung/exynos-regs-pmu.h>
 #include <linux/soc/samsung/exynos-pmu.h>
diff --git a/drivers/soc/samsung/exynos5250-pmu.c b/drivers/soc/samsung/exynos5250-pmu.c
index 19b38e008145..7a2d50be6b4a 100644
--- a/drivers/soc/samsung/exynos5250-pmu.c
+++ b/drivers/soc/samsung/exynos5250-pmu.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2015 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com/
 //
-// EXYNOS5250 - CPU PMU (Power Management Unit) support
+// Exynos5250 - CPU PMU (Power Management Unit) support
 
 #include <linux/soc/samsung/exynos-regs-pmu.h>
 #include <linux/soc/samsung/exynos-pmu.h>
diff --git a/drivers/soc/samsung/exynos5420-pmu.c b/drivers/soc/samsung/exynos5420-pmu.c
index b236d3b47b49..6fedcd78cb45 100644
--- a/drivers/soc/samsung/exynos5420-pmu.c
+++ b/drivers/soc/samsung/exynos5420-pmu.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2011-2015 Samsung Electronics Co., Ltd.
 //		http://www.samsung.com/
 //
-// EXYNOS5420 - CPU PMU (Power Management Unit) support
+// Exynos5420 - CPU PMU (Power Management Unit) support
 
 #include <linux/pm.h>
 #include <linux/soc/samsung/exynos-regs-pmu.h>
diff --git a/include/linux/soc/samsung/exynos-pmu.h b/include/linux/soc/samsung/exynos-pmu.h
index fc0b445bb36b..a4f5516cc956 100644
--- a/include/linux/soc/samsung/exynos-pmu.h
+++ b/include/linux/soc/samsung/exynos-pmu.h
@@ -3,7 +3,7 @@
  * Copyright (c) 2014 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * Header for EXYNOS PMU Driver support
+ * Header for Exynos PMU Driver support
  */
 
 #ifndef __LINUX_SOC_EXYNOS_PMU_H
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index 5addaf5ccbce..fc9250fb3133 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -3,7 +3,7 @@
  * Copyright (c) 2010-2015 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
  *
- * EXYNOS - Power management unit definition
+ * Exynos - Power management unit definition
  *
  * Notice:
  * This is not a list of all Exynos Power Management Unit SFRs.
@@ -185,7 +185,7 @@
 /* Only for S5Pv210 */
 #define S5PV210_EINT_WAKEUP_MASK	0xC004
 
-/* Only for EXYNOS4210 */
+/* Only for Exynos4210 */
 #define S5P_CMU_CLKSTOP_LCD1_LOWPWR	0x1154
 #define S5P_CMU_RESET_LCD1_LOWPWR	0x1174
 #define S5P_MODIMIF_MEM_LOWPWR		0x11C4
@@ -193,7 +193,7 @@
 #define S5P_SATA_MEM_LOWPWR		0x11E4
 #define S5P_LCD1_LOWPWR			0x1394
 
-/* Only for EXYNOS4x12 */
+/* Only for Exynos4x12 */
 #define S5P_ISP_ARM_LOWPWR			0x1050
 #define S5P_DIS_IRQ_ISP_ARM_LOCAL_LOWPWR	0x1054
 #define S5P_DIS_IRQ_ISP_ARM_CENTRAL_LOWPWR	0x1058
@@ -234,7 +234,7 @@
 #define S5P_SECSS_MEM_OPTION			0x2EC8
 #define S5P_ROTATOR_MEM_OPTION			0x2F48
 
-/* Only for EXYNOS4412 */
+/* Only for Exynos4412 */
 #define S5P_ARM_CORE2_LOWPWR			0x1020
 #define S5P_DIS_IRQ_CORE2			0x1024
 #define S5P_DIS_IRQ_CENTRAL2			0x1028
@@ -242,7 +242,7 @@
 #define S5P_DIS_IRQ_CORE3			0x1034
 #define S5P_DIS_IRQ_CENTRAL3			0x1038
 
-/* Only for EXYNOS3XXX */
+/* Only for Exynos3XXX */
 #define EXYNOS3_ARM_CORE0_SYS_PWR_REG			0x1000
 #define EXYNOS3_DIS_IRQ_ARM_CORE0_LOCAL_SYS_PWR_REG	0x1004
 #define EXYNOS3_DIS_IRQ_ARM_CORE0_CENTRAL_SYS_PWR_REG	0x1008
@@ -347,7 +347,7 @@
 #define EXYNOS3_OPTION_USE_SC_FEEDBACK			(1 << 1)
 #define EXYNOS3_OPTION_SKIP_DEACTIVATE_ACEACP_IN_PWDN	(1 << 7)
 
-/* For EXYNOS5 */
+/* For Exynos5 */
 
 #define EXYNOS5_AUTO_WDTRESET_DISABLE				0x0408
 #define EXYNOS5_MASK_WDTRESET_REQUEST				0x040C
@@ -484,7 +484,7 @@
 
 #define EXYNOS5420_SWRESET_KFC_SEL				0x3
 
-/* Only for EXYNOS5420 */
+/* Only for Exynos5420 */
 #define EXYNOS5420_L2RSTDISABLE_VALUE				BIT(3)
 
 #define EXYNOS5420_LPI_MASK					0x0004
@@ -645,7 +645,7 @@
 					 | EXYNOS5420_KFC_USE_STANDBY_WFI2  \
 					 | EXYNOS5420_KFC_USE_STANDBY_WFI3)
 
-/* For EXYNOS5433 */
+/* For Exynos5433 */
 #define EXYNOS5433_EINT_WAKEUP_MASK				(0x060C)
 #define EXYNOS5433_USBHOST30_PHY_CONTROL			(0x0728)
 #define EXYNOS5433_PAD_RETENTION_AUD_OPTION			(0x3028)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
