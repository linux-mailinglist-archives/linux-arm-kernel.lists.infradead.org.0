Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4740ADC9BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxbsgIMioHYnZ68PGZEv9lrS8D0j7doNzckd2H9+Ksw=; b=kW2DdMHD07KXPX
	19d4w9jaSYg0cMnT1SaAcdJ3Vy+jWEQu4E73BZiiyc1cpM0N6Oh3+svvqV7lGLKs1eMDneI/0q2Il
	NR74m4q3sUyqeKFmwqFkceOjaB555N8jUgBKSu2QzLYf5wimm8ZdXOyykZmLuR68B/+9wC38oUvI4
	Qqsp1VNh/8oTA2Ij8vevLdf+yU0B6iThtqjIdsscLjUCR5H35Q/DBITPMDLlFZIUv8n9tWy3mYKvP
	x1SCueFPqpb4ytF424IasD/1IfpNqTkxfoBSzG0/Kte7Zm9KJqRH+vnJ8etR9g0e9CZO8OQuzN9Oq
	4w1ub+HMjOhtyvnu/amQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUX8-00018j-Di; Fri, 18 Oct 2019 15:51:18 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOh-00089D-H6
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:45 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MJV5K-1iaoKF3RSi-00JvoD; Fri, 18 Oct 2019 17:42:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 35/46] cpufreq: pxa3: move clk register access to clk driver
Date: Fri, 18 Oct 2019 17:41:50 +0200
Message-Id: <20191018154201.1276638-35-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:o6X2GiFCPtFxV5PV4sLe6Tx6xb21oUZGUcOOgBZYSAWwgzC/jUs
 abp20CFjc8Gs/k0Su9brUxTD84fcvVQQtcJavFiUOTjyGSzT8fasOvVv8Ys2yjSE3K+myed
 BaKW+CywNxsRd3Xs2rFhVUAEZYNQVoYpLtdLwYDSjD/9vnWLsl+IRnJCb3oPXk/U1Jbvg/e
 hftOaj3iY8ausiGmW7uCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ueaPjGNhuIE=:1FLilwW1vyaKgPnng20RZ1
 ZlaSi7S7KKZuUfLe2WmUHUFJT105z4pBScav2My1yCieflkzBq6JBUJkQyrkxs9BlobMjdbXf
 DyEBUREJzUSqA66Vf2xBip4NIFIEE6NY8vGV6rGo1m2wHovva0XLuilzAfWQiSrSfDMvUFTU4
 nhlFbbwN1kkfqPxt4dQ7APxGUF4BO0Tpu9O3uqSNhW22FM06WrS5I0e3aPECBG7cjnUGvo2F7
 CqUDR8/QKOr+ca8lNWJ8L34kwK7rPr7/CfKplj9U7s6rZAQKhAb16s26aen+hsEmiNoekHfqf
 02q9grZ2vie9X6dQnyray55I6GTsiprURnSn9w/4XI1FA4PH8WETdpUJyuoT+B4Teg7Zx56ob
 mNqSA5Xo4Lbmyiz3/z90lQf/pJWllUVW3bGhnvFfA41uE0Ln6Qvyius0UT+bXceqFwr6LQ0xf
 npfdsSFK0wVy2+3aQGt0h53pSwFAOctARLf5FLTpJOmqb075Pn5tGyQp+H2k7uZmjxIFQmcu0
 s1NYlBSRvBYmF16WO7L58LqJ3FoCzcYnXYeKaFLF9WdDaPFYl6HJPktvZFbfwwyoOAWad3v66
 chZJWSv4YvuGXzUw+8zlkQotHIzVjX+V4Q61vvGr4phijW6etbDjnUSx3ECfrcnJd7kxpWP/J
 l2Pis0BC69MqQuzSGgaPRlw4clxbgl7BipVLt+BiR5hdAH43Q2LYzpf/Qa7qoiLcAUc2yOuQ3
 sXOah/cqonxg+s/w0x3FSoFPVvmkyFhlN99Kai+WCVABHEa8OoAVR5iVW8IsvCMM4ONdL7mHA
 /LhQGDt9twu7pbBdKvSYX+0t7gq4B5U18tLMKVUmoddNow58+unq4dMVcV2gHwSB4DgT7WnQS
 ukpLbvjVKENo67/dCcOQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084236_006610_852423DA 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver needs some low-level register access for setting
the core and bus frequencies. These registers are owned
by the clk driver, so move the low-level access into that
driver with a slightly higher-level interface and avoid
any machine header file dependencies.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-clk@vger.kernel.org
Cc: linux-pm@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/generic.h              |  1 -
 arch/arm/mach-pxa/include/mach/generic.h |  5 --
 arch/arm/mach-pxa/pxa3xx.c               |  1 +
 drivers/clk/pxa/clk-pxa3xx.c             | 16 ++++++
 drivers/cpufreq/pxa2xx-cpufreq.c         |  3 --
 drivers/cpufreq/pxa3xx-cpufreq.c         | 64 +++++++++++++-----------
 include/linux/clk/pxa.h                  |  9 ++++
 7 files changed, 62 insertions(+), 37 deletions(-)
 delete mode 100644 arch/arm/mach-pxa/include/mach/generic.h
 create mode 100644 include/linux/clk/pxa.h

diff --git a/arch/arm/mach-pxa/generic.h b/arch/arm/mach-pxa/generic.h
index 2f706ef97357..487eadb0fc2a 100644
--- a/arch/arm/mach-pxa/generic.h
+++ b/arch/arm/mach-pxa/generic.h
@@ -7,7 +7,6 @@
  */
 
 #include <linux/reboot.h>
-#include <mach/generic.h>
 
 struct irq_data;
 
diff --git a/arch/arm/mach-pxa/include/mach/generic.h b/arch/arm/mach-pxa/include/mach/generic.h
deleted file mode 100644
index 613f6a299d0d..000000000000
--- a/arch/arm/mach-pxa/include/mach/generic.h
+++ /dev/null
@@ -1,5 +0,0 @@
-#ifdef CONFIG_PXA3xx
-extern unsigned	pxa3xx_get_clk_frequency_khz(int);
-#else
-#define pxa3xx_get_clk_frequency_khz(x)		(0)
-#endif
diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
index 7881888107c7..f4657f4edb3b 100644
--- a/arch/arm/mach-pxa/pxa3xx.c
+++ b/arch/arm/mach-pxa/pxa3xx.c
@@ -25,6 +25,7 @@
 #include <linux/platform_data/i2c-pxa.h>
 #include <linux/platform_data/mmp_dma.h>
 #include <linux/soc/pxa/cpu.h>
+#include <linux/clk/pxa.h>
 
 #include <asm/mach/map.h>
 #include <asm/suspend.h>
diff --git a/drivers/clk/pxa/clk-pxa3xx.c b/drivers/clk/pxa/clk-pxa3xx.c
index 027b78183565..60a0db4f3790 100644
--- a/drivers/clk/pxa/clk-pxa3xx.c
+++ b/drivers/clk/pxa/clk-pxa3xx.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/soc/pxa/cpu.h>
 #include <mach/smemc.h>
+#include <linux/clk/pxa.h>
 #include <mach/pxa3xx-regs.h>
 
 #include <dt-bindings/clock/pxa-clock.h>
@@ -79,6 +80,21 @@ unsigned int pxa3xx_get_clk_frequency_khz(int info)
 	return (unsigned int)clks[0] / KHz;
 }
 
+void pxa3xx_clk_update_accr(u32 disable, u32 enable, u32 xclkcfg, u32 mask)
+{
+	u32 accr = ACCR;
+
+	accr &= ~disable;
+	accr |= enable;
+
+	ACCR = accr;
+	if (xclkcfg)
+		__asm__("mcr p14, 0, %0, c6, c0, 0\n" : : "r"(xclkcfg));
+
+	while ((ACSR & mask) != (accr & mask))
+		cpu_relax();
+}
+
 static unsigned long clk_pxa3xx_ac97_get_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
diff --git a/drivers/cpufreq/pxa2xx-cpufreq.c b/drivers/cpufreq/pxa2xx-cpufreq.c
index e74d36d6f78d..ed1ae061a687 100644
--- a/drivers/cpufreq/pxa2xx-cpufreq.c
+++ b/drivers/cpufreq/pxa2xx-cpufreq.c
@@ -27,9 +27,6 @@
 #include <linux/soc/pxa/cpu.h>
 #include <linux/io.h>
 
-#include <mach/pxa2xx-regs.h>
-#include <mach/smemc.h>
-
 #ifdef DEBUG
 static unsigned int freq_debug;
 module_param(freq_debug, uint, 0);
diff --git a/drivers/cpufreq/pxa3xx-cpufreq.c b/drivers/cpufreq/pxa3xx-cpufreq.c
index d3b398b4aa6a..4afa48d172db 100644
--- a/drivers/cpufreq/pxa3xx-cpufreq.c
+++ b/drivers/cpufreq/pxa3xx-cpufreq.c
@@ -9,12 +9,10 @@
 #include <linux/init.h>
 #include <linux/cpufreq.h>
 #include <linux/soc/pxa/cpu.h>
+#include <linux/clk/pxa.h>
 #include <linux/slab.h>
 #include <linux/io.h>
 
-#include <mach/generic.h>
-#include <mach/pxa3xx-regs.h>
-
 #define HSS_104M	(0)
 #define HSS_156M	(1)
 #define HSS_208M	(2)
@@ -35,6 +33,28 @@
 #define DMCFS_26M	(0)
 #define DMCFS_260M	(3)
 
+#define ACCR_XPDIS		(1 << 31)	/* Core PLL Output Disable */
+#define ACCR_SPDIS		(1 << 30)	/* System PLL Output Disable */
+#define ACCR_D0CS		(1 << 26)	/* D0 Mode Clock Select */
+#define ACCR_PCCE		(1 << 11)	/* Power Mode Change Clock Enable */
+#define ACCR_DDR_D0CS		(1 << 7)	/* DDR SDRAM clock frequency in D0CS (PXA31x only) */
+
+#define ACCR_SMCFS_MASK		(0x7 << 23)	/* Static Memory Controller Frequency Select */
+#define ACCR_SFLFS_MASK		(0x3 << 18)	/* Frequency Select for Internal Memory Controller */
+#define ACCR_XSPCLK_MASK	(0x3 << 16)	/* Core Frequency during Frequency Change */
+#define ACCR_HSS_MASK		(0x3 << 14)	/* System Bus-Clock Frequency Select */
+#define ACCR_DMCFS_MASK		(0x3 << 12)	/* Dynamic Memory Controller Clock Frequency Select */
+#define ACCR_XN_MASK		(0x7 << 8)	/* Core PLL Turbo-Mode-to-Run-Mode Ratio */
+#define ACCR_XL_MASK		(0x1f)		/* Core PLL Run-Mode-to-Oscillator Ratio */
+
+#define ACCR_SMCFS(x)		(((x) & 0x7) << 23)
+#define ACCR_SFLFS(x)		(((x) & 0x3) << 18)
+#define ACCR_XSPCLK(x)		(((x) & 0x3) << 16)
+#define ACCR_HSS(x)		(((x) & 0x3) << 14)
+#define ACCR_DMCFS(x)		(((x) & 0x3) << 12)
+#define ACCR_XN(x)		(((x) & 0x7) << 8)
+#define ACCR_XL(x)		((x) & 0x1f)
+
 struct pxa3xx_freq_info {
 	unsigned int cpufreq_mhz;
 	unsigned int core_xl : 5;
@@ -112,41 +132,29 @@ static int setup_freqs_table(struct cpufreq_policy *policy,
 
 static void __update_core_freq(struct pxa3xx_freq_info *info)
 {
-	uint32_t mask = ACCR_XN_MASK | ACCR_XL_MASK;
-	uint32_t accr = ACCR;
-	uint32_t xclkcfg;
-
-	accr &= ~(ACCR_XN_MASK | ACCR_XL_MASK | ACCR_XSPCLK_MASK);
-	accr |= ACCR_XN(info->core_xn) | ACCR_XL(info->core_xl);
+	u32 mask, disable, enable, xclkcfg;
 
+	mask	= ACCR_XN_MASK | ACCR_XL_MASK;
+	disable = mask | ACCR_XSPCLK_MASK;
+	enable  = ACCR_XN(info->core_xn) | ACCR_XL(info->core_xl);
 	/* No clock until core PLL is re-locked */
-	accr |= ACCR_XSPCLK(XSPCLK_NONE);
-
+	enable |= ACCR_XSPCLK(XSPCLK_NONE);
 	xclkcfg = (info->core_xn == 2) ? 0x3 : 0x2;	/* turbo bit */
 
-	ACCR = accr;
-	__asm__("mcr p14, 0, %0, c6, c0, 0\n" : : "r"(xclkcfg));
-
-	while ((ACSR & mask) != (accr & mask))
-		cpu_relax();
+	pxa3xx_clk_update_accr(disable, enable, xclkcfg, mask);
 }
 
 static void __update_bus_freq(struct pxa3xx_freq_info *info)
 {
-	uint32_t mask;
-	uint32_t accr = ACCR;
-
-	mask = ACCR_SMCFS_MASK | ACCR_SFLFS_MASK | ACCR_HSS_MASK |
-		ACCR_DMCFS_MASK;
-
-	accr &= ~mask;
-	accr |= ACCR_SMCFS(info->smcfs) | ACCR_SFLFS(info->sflfs) |
-		ACCR_HSS(info->hss) | ACCR_DMCFS(info->dmcfs);
+	u32 mask, disable, enable;
 
-	ACCR = accr;
+	mask	= ACCR_SMCFS_MASK | ACCR_SFLFS_MASK | ACCR_HSS_MASK |
+		  ACCR_DMCFS_MASK;
+	disable = mask;
+	enable	= ACCR_SMCFS(info->smcfs) | ACCR_SFLFS(info->sflfs) |
+		  ACCR_HSS(info->hss) | ACCR_DMCFS(info->dmcfs);
 
-	while ((ACSR & mask) != (accr & mask))
-		cpu_relax();
+	pxa3xx_clk_update_accr(disable, enable, 0, mask);
 }
 
 static unsigned int pxa3xx_cpufreq_get(unsigned int cpu)
diff --git a/include/linux/clk/pxa.h b/include/linux/clk/pxa.h
new file mode 100644
index 000000000000..e5516c608c99
--- /dev/null
+++ b/include/linux/clk/pxa.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifdef CONFIG_PXA3xx
+extern unsigned	pxa3xx_get_clk_frequency_khz(int);
+extern void pxa3xx_clk_update_accr(u32 disable, u32 enable, u32 xclkcfg, u32 mask);
+#else
+#define pxa3xx_get_clk_frequency_khz(x)		(0)
+#define pxa3xx_clk_update_accr(disable, enable, xclkcfg, mask) do { } while (0)
+#endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
