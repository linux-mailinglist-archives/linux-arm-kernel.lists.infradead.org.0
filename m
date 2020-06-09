Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3981F354F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R8JH/lM4Ce/9qqdJKIVZpcvVAJT8uXHK7AYa0sx7kcI=; b=Ngk02FnuvI52SSi0SpGO5+aVsf
	BWju6+AX2jd0iSFcjwtQSdBxIhNOq2M71XzN4eDzYHs1fVXiMeDyZlxfUTbm1ttuBl/8/2IdHWG7/
	RHqOq8WlT+cpPu+aSqQhmj4MnumANYPx0pR/IDZ+VTsuxBjW9Y5vQ/ucAxuLYGWsQoe8plmEi+xsU
	2m6E6Z/7TtYBJDX0+nkersYCBqw8to1cpGl8685xMYqgP2GVl7u0eMFh/qH2hr4k0JypJsipLml7o
	2yLqn2ztPXK6cKrJdL3N3Q5PofO6KegO/1HIGnJeqVBpOD1hrUWV8MmZ5/LlGxH9cs7+0KwE8X3nf
	jTr8v7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiYwl-00068y-6T; Tue, 09 Jun 2020 07:45:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYuo-0004er-40
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:43:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C94BF1A12A9;
 Tue,  9 Jun 2020 09:43:20 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 798CF1A00E4;
 Tue,  9 Jun 2020 09:43:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 31B9A40307;
 Tue,  9 Jun 2020 15:42:58 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, oleksandr.suvorov@toradex.com, stefan.agner@toradex.com,
 arnd@arndb.de, abel.vesa@nxp.com, peng.fan@nxp.com, aisheng.dong@nxp.com,
 tglx@linutronix.de, allison@lohutok.net, gregkh@linuxfoundation.org,
 info@metux.net, leonard.crestez@nxp.com, fugang.duan@nxp.com,
 daniel.baluta@nxp.com, yuehaibing@huawei.com, sfr@canb.auug.org.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH V2 4/9] clk: imx: Support building i.MX common clock driver as
 module
Date: Tue,  9 Jun 2020 15:32:08 +0800
Message-Id: <1591687933-19495-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004322_454514_ADDE2305 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are more and more requirements of building SoC specific drivers
as modules, add support for building i.MX common clock driver as module
to meet the requirement.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- move scu lpcg driver change to SCU patch.
---
 drivers/clk/imx/Kconfig            |  8 ++++++--
 drivers/clk/imx/Makefile           | 25 +++++--------------------
 drivers/clk/imx/clk-composite-8m.c |  1 +
 drivers/clk/imx/clk-cpu.c          |  1 +
 drivers/clk/imx/clk-frac-pll.c     |  1 +
 drivers/clk/imx/clk-gate2.c        |  1 +
 drivers/clk/imx/clk-pll14xx.c      |  4 ++++
 drivers/clk/imx/clk-sscg-pll.c     |  1 +
 drivers/clk/imx/clk.c              | 28 ++++++++++++++++++++++------
 9 files changed, 42 insertions(+), 28 deletions(-)

diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig
index ded0643..678113b 100644
--- a/drivers/clk/imx/Kconfig
+++ b/drivers/clk/imx/Kconfig
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 # common clock support for NXP i.MX SoC family.
 config MXC_CLK
-	bool
-	def_bool ARCH_MXC
+	tristate "IMX clock"
+	depends on ARCH_MXC
 
 config MXC_CLK_SCU
 	tristate "IMX SCU clock"
@@ -11,24 +11,28 @@ config MXC_CLK_SCU
 config CLK_IMX8MM
 	bool "IMX8MM CCM Clock Driver"
 	depends on ARCH_MXC
+	select MXC_CLK
 	help
 	    Build the driver for i.MX8MM CCM Clock Driver
 
 config CLK_IMX8MN
 	bool "IMX8MN CCM Clock Driver"
 	depends on ARCH_MXC
+	select MXC_CLK
 	help
 	    Build the driver for i.MX8MN CCM Clock Driver
 
 config CLK_IMX8MP
 	bool "IMX8MP CCM Clock Driver"
 	depends on ARCH_MXC
+	select MXC_CLK
 	help
 	    Build the driver for i.MX8MP CCM Clock Driver
 
 config CLK_IMX8MQ
 	bool "IMX8MQ CCM Clock Driver"
 	depends on ARCH_MXC
+	select MXC_CLK
 	help
 	    Build the driver for i.MX8MQ CCM Clock Driver
 
diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 1af8cff..1291f9b 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -1,25 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_MXC_CLK) += \
-	clk.o \
-	clk-busy.o \
-	clk-composite-8m.o \
-	clk-cpu.o \
-	clk-composite-7ulp.o \
-	clk-divider-gate.o \
-	clk-fixup-div.o \
-	clk-fixup-mux.o \
-	clk-frac-pll.o \
-	clk-gate-exclusive.o \
-	clk-gate2.o \
-	clk-pfd.o \
-	clk-pfdv2.o \
-	clk-pllv1.o \
-	clk-pllv2.o \
-	clk-pllv3.o \
-	clk-pllv4.o \
-	clk-sscg-pll.o \
-	clk-pll14xx.o
+mxc-clk-objs += clk.o clk-busy.o clk-composite-8m.o clk-cpu.o clk-composite-7ulp.o \
+		clk-divider-gate.o clk-fixup-div.o clk-fixup-mux.o clk-frac-pll.o \
+		clk-gate-exclusive.o clk-gate2.o clk-pfd.o clk-pfdv2.o clk-pllv1.o \
+		clk-pllv2.o clk-pllv3.o clk-pllv4.o clk-sscg-pll.o clk-pll14xx.o
+obj-$(CONFIG_MXC_CLK) += mxc-clk.o
 
 mxc-clk-scu-objs += clk-scu.o clk-lpcg-scu.o
 obj-$(CONFIG_MXC_CLK_SCU) += mxc-clk-scu.o
diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index d2b5af8..73e064b 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -243,3 +243,4 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	kfree(mux);
 	return ERR_CAST(hw);
 }
+EXPORT_SYMBOL_GPL(imx8m_clk_hw_composite_flags);
diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index cb182be..07dc88b 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -104,3 +104,4 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 
 	return hw;
 }
+EXPORT_SYMBOL_GPL(imx_clk_hw_cpu);
diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index 101e0a3..aa6aebf 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -233,3 +233,4 @@ struct clk_hw *imx_clk_hw_frac_pll(const char *name,
 
 	return hw;
 }
+EXPORT_SYMBOL_GPL(imx_clk_hw_frac_pll);
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index b87ab3c..b1b93ea 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -177,3 +177,4 @@ struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
 
 	return hw;
 }
+EXPORT_SYMBOL_GPL(clk_hw_register_gate2);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index f9eb189..5482775 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -68,6 +68,7 @@ struct imx_pll14xx_clk imx_1443x_pll = {
 	.rate_table = imx_pll1443x_tbl,
 	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
 };
+EXPORT_SYMBOL_GPL(imx_1443x_pll);
 
 struct imx_pll14xx_clk imx_1443x_dram_pll = {
 	.type = PLL_1443X,
@@ -75,12 +76,14 @@ struct imx_pll14xx_clk imx_1443x_dram_pll = {
 	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
 	.flags = CLK_GET_RATE_NOCACHE,
 };
+EXPORT_SYMBOL_GPL(imx_1443x_dram_pll);
 
 struct imx_pll14xx_clk imx_1416x_pll = {
 	.type = PLL_1416X,
 	.rate_table = imx_pll1416x_tbl,
 	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
 };
+EXPORT_SYMBOL_GPL(imx_1416x_pll);
 
 static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
 		struct clk_pll14xx *pll, unsigned long rate)
@@ -436,3 +439,4 @@ struct clk_hw *imx_dev_clk_hw_pll14xx(struct device *dev, const char *name,
 
 	return hw;
 }
+EXPORT_SYMBOL_GPL(imx_dev_clk_hw_pll14xx);
diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
index 773d8a5..2f6a0a0 100644
--- a/drivers/clk/imx/clk-sscg-pll.c
+++ b/drivers/clk/imx/clk-sscg-pll.c
@@ -537,3 +537,4 @@ struct clk_hw *imx_clk_hw_sscg_pll(const char *name,
 
 	return hw;
 }
+EXPORT_SYMBOL_GPL(imx_clk_hw_sscg_pll);
diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 87ab8db..cc894b5 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -3,6 +3,7 @@
 #include <linux/clk-provider.h>
 #include <linux/err.h>
 #include <linux/io.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -13,6 +14,7 @@
 #define CCDR_MMDC_CH1_MASK		BIT(16)
 
 DEFINE_SPINLOCK(imx_ccm_lock);
+EXPORT_SYMBOL_GPL(imx_ccm_lock);
 
 void imx_unregister_clocks(struct clk *clks[], unsigned int count)
 {
@@ -29,8 +31,9 @@ void imx_unregister_hw_clocks(struct clk_hw *hws[], unsigned int count)
 	for (i = 0; i < count; i++)
 		clk_hw_unregister(hws[i]);
 }
+EXPORT_SYMBOL_GPL(imx_unregister_hw_clocks);
 
-void __init imx_mmdc_mask_handshake(void __iomem *ccm_base,
+void imx_mmdc_mask_handshake(void __iomem *ccm_base,
 				    unsigned int chn)
 {
 	unsigned int reg;
@@ -59,8 +62,9 @@ void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count)
 			pr_err("i.MX clk %u: register failed with %ld\n",
 			       i, PTR_ERR(clks[i]));
 }
+EXPORT_SYMBOL_GPL(imx_check_clk_hws);
 
-static struct clk * __init imx_obtain_fixed_clock_from_dt(const char *name)
+static struct clk *imx_obtain_fixed_clock_from_dt(const char *name)
 {
 	struct of_phandle_args phandle;
 	struct clk *clk = ERR_PTR(-ENODEV);
@@ -80,7 +84,7 @@ static struct clk * __init imx_obtain_fixed_clock_from_dt(const char *name)
 	return clk;
 }
 
-struct clk * __init imx_obtain_fixed_clock(
+struct clk *imx_obtain_fixed_clock(
 			const char *name, unsigned long rate)
 {
 	struct clk *clk;
@@ -91,7 +95,7 @@ struct clk * __init imx_obtain_fixed_clock(
 	return clk;
 }
 
-struct clk_hw * __init imx_obtain_fixed_clock_hw(
+struct clk_hw *imx_obtain_fixed_clock_hw(
 			const char *name, unsigned long rate)
 {
 	struct clk *clk;
@@ -113,6 +117,7 @@ struct clk_hw * imx_obtain_fixed_clk_hw(struct device_node *np,
 
 	return __clk_get_hw(clk);
 }
+EXPORT_SYMBOL_GPL(imx_obtain_fixed_clk_hw);
 
 /*
  * This fixups the register CCM_CSCMR1 write value.
@@ -143,16 +148,24 @@ void imx_cscmr1_fixup(u32 *val)
 static int imx_keep_uart_clocks;
 static struct clk ** const *imx_uart_clocks;
 
-static int __init imx_keep_uart_clocks_param(char *str)
+static int __maybe_unused imx_keep_uart_clocks_param(char *str)
 {
 	imx_keep_uart_clocks = 1;
 
 	return 0;
 }
+
+#ifdef MODULE
+__setup_param("earlycon", imx_keep_uart_earlycon,
+	      imx_keep_uart_clocks_param);
+__setup_param("earlyprintk", imx_keep_uart_earlyprintk,
+	      imx_keep_uart_clocks_param);
+#else
 __setup_param("earlycon", imx_keep_uart_earlycon,
 	      imx_keep_uart_clocks_param, 0);
 __setup_param("earlyprintk", imx_keep_uart_earlyprintk,
 	      imx_keep_uart_clocks_param, 0);
+#endif
 
 void imx_register_uart_clocks(struct clk ** const clks[])
 {
@@ -164,8 +177,9 @@ void imx_register_uart_clocks(struct clk ** const clks[])
 			clk_prepare_enable(*imx_uart_clocks[i]);
 	}
 }
+EXPORT_SYMBOL_GPL(imx_register_uart_clocks);
 
-static int __init imx_clk_disable_uart(void)
+static int imx_clk_disable_uart(void)
 {
 	if (imx_keep_uart_clocks && imx_uart_clocks) {
 		int i;
@@ -177,3 +191,5 @@ static int __init imx_clk_disable_uart(void)
 	return 0;
 }
 late_initcall_sync(imx_clk_disable_uart);
+
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
