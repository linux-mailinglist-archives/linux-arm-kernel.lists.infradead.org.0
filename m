Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFC59AB12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1non1FTN4nbXIie96xh9Wl1meAaYrgiHTVTw2r0PiTc=; b=uRv8PUwn+TPoOE
	diVy7j+ZL29QEqoPTIjMIYEDs+EF/BL8N/NcZryPmW73WpR7HFeNwvIQdWZem4hXgTvKJq19ot+Nu
	gDXeCX1Y2ufoN3xpLDPdt6NePzQcgEFXMOU66GUkuFrXCcbQZlGVFjSNm8WGYpq2F/jc2DVpFKku3
	u2NO9kRImHomIt40/0b+argTaredqDYZsphRF/+Z7roY20iz9zko09yIfy3l3MPeQzYbBA5mdulvu
	VT14t7+FIEaAEwGpkGUoe9e1dDQCH0lCPzfdgh9tvV7/eqvdMhvL4lSwn9q07i9hGkWBly6Rbq8E5
	BxcxABi9lc/dte7TLDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15WE-0002dB-Ql; Fri, 23 Aug 2019 09:06:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Ud-0000sS-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:04:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id z1so7903196wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lrGYvcJLycHuYoqEVzuuxf/6lBzEm525qRv+ShiSIjI=;
 b=adrOQneIK60l71LLhbBKa9MZDnSGSsDFr6m4IuvkUEWuTjsdo0I29pp/7E75tKk2PK
 8KY8rOXSYaNmmfE7tkEpla1KsQXO9WmTaH0Vd5Vi5xJ1uMPgwrVaIa+EU/FIomHsxylh
 ITWjdK2/cqL0V+0Cq7Gbcg7hr0sKcaW0GDpCsE9A25jJMqrPOgl0Sm1G31ch/nDBNri/
 uT4wwCS8QRGo75rlS6gelsCKPimIfmHjsy+QrZXKGDm3T6wGZ/7JRMefV5Zilbz3VwL1
 wYke1TTyxWO/Z+EtMFV94rCJic0N9jNtPZnE6gPQpEk5J35Gij9sWohn+YkQc6owfyEC
 4ZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lrGYvcJLycHuYoqEVzuuxf/6lBzEm525qRv+ShiSIjI=;
 b=o7N/3W8w5q/PndFsUSNM7O7vqXgNfnUebZTRd+3ggFhUAYeVxxhJ3W7rzkh7PcYdbn
 s7nMLXFUP2NzTGJDHVW7gi7hE5+S4nzWVXmeBdvvwpoxRAGjQEnPB3TpB3laFA3euDs5
 Znb/xAqX9f7oFZImbRcbvrIXO09WqSDn6qUdmEej/7q7yyWi9Vr8i6I3EUqZMs6XtsA/
 P3hY1rrwz4SMHNbevZm3ITmw2Zg1mxC/bHa48+G+7CpQhoZYCHyS/7j2ubE8py7HuaYs
 3/M10BqdGToN5tHfJJ2YoGOueg5yw8VP4zXODbQiXfY61Y3FmnOa3vrEU96zRsGwE98k
 s7pA==
X-Gm-Message-State: APjAAAVV/T/mFKOdFuaHeY+pVA/dIeAQKl13fiaZ5HqzklspimIeOQEt
 CAUubfRaBLgUX/So7ELpj8rHEg==
X-Google-Smtp-Source: APXvYqxR3GjJngWRFQoCvUKrB14Aif8h6QyRtChH8E+cX8t9CZSU2rcop3EMKqejs2WJ78V8UzyyAg==
X-Received: by 2002:adf:d187:: with SMTP id v7mr3952042wrc.33.1566551062199;
 Fri, 23 Aug 2019 02:04:22 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x26sm1625544wmj.42.2019.08.23.02.04.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 02:04:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH v2 2/5] soc: amlogic: Add support for Everything-Else power
 domains controller
Date: Fri, 23 Aug 2019 11:04:15 +0200
Message-Id: <20190823090418.17148-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823090418.17148-1-narmstrong@baylibre.com>
References: <20190823090418.17148-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020425_173476_8988A8C2 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the General Purpose Amlogic Everything-Else Power controller,
with the first support for G12A and SM1 SoCs dedicated to the VPU, PCIe,
USB, NNA, GE2D and Ethernet Power Domains.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/Kconfig         |  11 +
 drivers/soc/amlogic/Makefile        |   1 +
 drivers/soc/amlogic/meson-ee-pwrc.c | 492 ++++++++++++++++++++++++++++
 3 files changed, 504 insertions(+)
 create mode 100644 drivers/soc/amlogic/meson-ee-pwrc.c

diff --git a/drivers/soc/amlogic/Kconfig b/drivers/soc/amlogic/Kconfig
index 23bfb8ef4fdb..bc2c912949bd 100644
--- a/drivers/soc/amlogic/Kconfig
+++ b/drivers/soc/amlogic/Kconfig
@@ -37,6 +37,17 @@ config MESON_GX_PM_DOMAINS
 	  Say yes to expose Amlogic Meson GX Power Domains as
 	  Generic Power Domains.
 
+config MESON_EE_PM_DOMAINS
+	bool "Amlogic Meson Everything-Else Power Domains driver"
+	depends on ARCH_MESON || COMPILE_TEST
+	depends on PM && OF
+	default ARCH_MESON
+	select PM_GENERIC_DOMAINS
+	select PM_GENERIC_DOMAINS_OF
+	help
+	  Say yes to expose Amlogic Meson Everything-Else Power Domains as
+	  Generic Power Domains.
+
 config MESON_MX_SOCINFO
 	bool "Amlogic Meson MX SoC Information driver"
 	depends on ARCH_MESON || COMPILE_TEST
diff --git a/drivers/soc/amlogic/Makefile b/drivers/soc/amlogic/Makefile
index f2e4ed171297..de79d044b545 100644
--- a/drivers/soc/amlogic/Makefile
+++ b/drivers/soc/amlogic/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_MESON_CLK_MEASURE) += meson-clk-measure.o
 obj-$(CONFIG_MESON_GX_SOCINFO) += meson-gx-socinfo.o
 obj-$(CONFIG_MESON_GX_PM_DOMAINS) += meson-gx-pwrc-vpu.o
 obj-$(CONFIG_MESON_MX_SOCINFO) += meson-mx-socinfo.o
+obj-$(CONFIG_MESON_EE_PM_DOMAINS) += meson-ee-pwrc.o
diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
new file mode 100644
index 000000000000..5823f5b67d16
--- /dev/null
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -0,0 +1,492 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/bitfield.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of_device.h>
+#include <linux/reset-controller.h>
+#include <linux/reset.h>
+#include <linux/clk.h>
+#include <dt-bindings/power/meson-g12a-power.h>
+#include <dt-bindings/power/meson-sm1-power.h>
+
+/* AO Offsets */
+
+#define AO_RTI_GEN_PWR_SLEEP0		(0x3a << 2)
+#define AO_RTI_GEN_PWR_ISO0		(0x3b << 2)
+
+/* HHI Offsets */
+
+#define HHI_MEM_PD_REG0			(0x40 << 2)
+#define HHI_VPU_MEM_PD_REG0		(0x41 << 2)
+#define HHI_VPU_MEM_PD_REG1		(0x42 << 2)
+#define HHI_VPU_MEM_PD_REG3		(0x43 << 2)
+#define HHI_VPU_MEM_PD_REG4		(0x44 << 2)
+#define HHI_AUDIO_MEM_PD_REG0		(0x45 << 2)
+#define HHI_NANOQ_MEM_PD_REG0		(0x46 << 2)
+#define HHI_NANOQ_MEM_PD_REG1		(0x47 << 2)
+#define HHI_VPU_MEM_PD_REG2		(0x4d << 2)
+
+struct meson_ee_pwrc;
+struct meson_ee_pwrc_domain;
+
+struct meson_ee_pwrc_mem_domain {
+	unsigned int reg;
+	unsigned int mask;
+};
+
+struct meson_ee_pwrc_top_domain {
+	unsigned int sleep_reg;
+	unsigned int sleep_mask;
+	unsigned int iso_reg;
+	unsigned int iso_mask;
+};
+
+struct meson_ee_pwrc_domain_desc {
+	char *name;
+	unsigned int reset_names_count;
+	unsigned int clk_names_count;
+	struct meson_ee_pwrc_top_domain *top_pd;
+	unsigned int mem_pd_count;
+	struct meson_ee_pwrc_mem_domain *mem_pd;
+	bool (*get_power)(struct meson_ee_pwrc_domain *pwrc_domain);
+};
+
+struct meson_ee_pwrc_domain_data {
+	unsigned int count;
+	struct meson_ee_pwrc_domain_desc *domains;
+};
+
+/* TOP Power Domains */
+
+static struct meson_ee_pwrc_top_domain g12a_pwrc_vpu = {
+	.sleep_reg = AO_RTI_GEN_PWR_SLEEP0,
+	.sleep_mask = BIT(8),
+	.iso_reg = AO_RTI_GEN_PWR_SLEEP0,
+	.iso_mask = BIT(9),
+};
+
+#define SM1_EE_PD(__bit)					\
+	{							\
+		.sleep_reg = AO_RTI_GEN_PWR_SLEEP0, 		\
+		.sleep_mask = BIT(__bit), 			\
+		.iso_reg = AO_RTI_GEN_PWR_ISO0, 		\
+		.iso_mask = BIT(__bit), 			\
+	}
+
+static struct meson_ee_pwrc_top_domain sm1_pwrc_vpu = SM1_EE_PD(8);
+static struct meson_ee_pwrc_top_domain sm1_pwrc_nna = SM1_EE_PD(16);
+static struct meson_ee_pwrc_top_domain sm1_pwrc_usb = SM1_EE_PD(17);
+static struct meson_ee_pwrc_top_domain sm1_pwrc_pci = SM1_EE_PD(18);
+static struct meson_ee_pwrc_top_domain sm1_pwrc_ge2d = SM1_EE_PD(19);
+
+/* Memory PD Domains */
+
+#define VPU_MEMPD(__reg)					\
+	{ __reg, GENMASK(1, 0) },				\
+	{ __reg, GENMASK(3, 2) },				\
+	{ __reg, GENMASK(5, 4) },				\
+	{ __reg, GENMASK(7, 6) },				\
+	{ __reg, GENMASK(9, 8) },				\
+	{ __reg, GENMASK(11, 10) },				\
+	{ __reg, GENMASK(13, 12) },				\
+	{ __reg, GENMASK(15, 14) },				\
+	{ __reg, GENMASK(17, 16) },				\
+	{ __reg, GENMASK(19, 18) },				\
+	{ __reg, GENMASK(21, 20) },				\
+	{ __reg, GENMASK(23, 22) },				\
+	{ __reg, GENMASK(25, 24) },				\
+	{ __reg, GENMASK(27, 26) },				\
+	{ __reg, GENMASK(29, 28) },				\
+	{ __reg, GENMASK(31, 30) }
+
+#define VPU_HHI_MEMPD(__reg)					\
+	{ __reg, BIT(8) },					\
+	{ __reg, BIT(9) },					\
+	{ __reg, BIT(10) },					\
+	{ __reg, BIT(11) },					\
+	{ __reg, BIT(12) },					\
+	{ __reg, BIT(13) },					\
+	{ __reg, BIT(14) },					\
+	{ __reg, BIT(15) }
+
+static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_vpu[] = {
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG2),
+	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
+};
+
+static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_eth[] = {
+	{ HHI_MEM_PD_REG0, GENMASK(3, 2) },
+};
+
+static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_vpu[] = {
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG2),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG3),
+	{ HHI_VPU_MEM_PD_REG4, GENMASK(1, 0) },
+	{ HHI_VPU_MEM_PD_REG4, GENMASK(3, 2) },
+	{ HHI_VPU_MEM_PD_REG4, GENMASK(5, 4) },
+	{ HHI_VPU_MEM_PD_REG4, GENMASK(7, 6) },
+	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
+};
+
+static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_nna[] = {
+	{ HHI_NANOQ_MEM_PD_REG0, 0xff },
+	{ HHI_NANOQ_MEM_PD_REG1, 0xff },
+};
+
+static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_usb[] = {
+	{ HHI_MEM_PD_REG0, GENMASK(31, 30) },
+};
+
+static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_pcie[] = {
+	{ HHI_MEM_PD_REG0, GENMASK(29, 26) },
+};
+
+static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_ge2d[] = {
+	{ HHI_MEM_PD_REG0, GENMASK(25, 18) },
+};
+
+static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
+	{ HHI_MEM_PD_REG0, GENMASK(5, 4) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(1, 0) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(3, 2) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(5, 4) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(7, 6) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(13, 12) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(15, 14) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(17, 16) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(19, 18) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(21, 20) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(23, 22) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(25, 24) },
+	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(27, 26) },
+};
+
+#define VPU_PD(__name, __top_pd, __mem, __get_power, __resets, __clks)	\
+	{								\
+		.name = __name,						\
+		.reset_names_count = __resets,				\
+		.clk_names_count = __clks,				\
+		.top_pd = __top_pd,					\
+		.mem_pd_count = ARRAY_SIZE(__mem),			\
+		.mem_pd = __mem,					\
+		.get_power = __get_power,				\
+	}
+
+#define TOP_PD(__name, __top_pd, __mem, __get_power)			\
+	{								\
+		.name = __name,						\
+		.top_pd = __top_pd,					\
+		.mem_pd_count = ARRAY_SIZE(__mem),			\
+		.mem_pd = __mem,					\
+		.get_power = __get_power,				\
+	}
+
+#define MEM_PD(__name, __mem)						\
+	TOP_PD(__name, NULL, __mem, NULL)
+
+static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain);
+
+static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
+	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
+				     pwrc_ee_get_power, 11, 2),
+	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
+};
+
+static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
+	[PWRC_SM1_VPU_ID]  = VPU_PD("VPU", &sm1_pwrc_vpu, sm1_pwrc_mem_vpu,
+				    pwrc_ee_get_power, 11, 2),
+	[PWRC_SM1_NNA_ID]  = TOP_PD("NNA", &sm1_pwrc_nna, sm1_pwrc_mem_nna,
+				    pwrc_ee_get_power),
+	[PWRC_SM1_USB_ID]  = TOP_PD("USB", &sm1_pwrc_usb, sm1_pwrc_mem_usb,
+				    pwrc_ee_get_power),
+	[PWRC_SM1_PCIE_ID] = TOP_PD("PCI", &sm1_pwrc_pci, sm1_pwrc_mem_pcie,
+				    pwrc_ee_get_power),
+	[PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
+				    pwrc_ee_get_power),
+	[PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
+	[PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
+};
+
+struct meson_ee_pwrc_domain {
+	struct generic_pm_domain base;
+	bool enabled;
+	struct meson_ee_pwrc *pwrc;
+	struct meson_ee_pwrc_domain_desc desc;
+	struct clk_bulk_data *clks;
+	int num_clks;
+	struct reset_control *rstc;
+	int num_rstc;
+};
+
+struct meson_ee_pwrc {
+	struct regmap *regmap_ao;
+	struct regmap *regmap_hhi;
+	struct meson_ee_pwrc_domain *domains;
+	struct genpd_onecell_data xlate;
+};
+
+static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain)
+{
+	u32 reg;
+
+	regmap_read(pwrc_domain->pwrc->regmap_ao,
+		    pwrc_domain->desc.top_pd->sleep_reg, &reg);
+
+	return (reg & pwrc_domain->desc.top_pd->sleep_mask);
+}
+
+static int meson_ee_pwrc_off(struct generic_pm_domain *domain)
+{
+	struct meson_ee_pwrc_domain *pwrc_domain =
+		container_of(domain, struct meson_ee_pwrc_domain, base);
+	int i;
+
+	if (pwrc_domain->desc.top_pd)
+		regmap_update_bits(pwrc_domain->pwrc->regmap_ao,
+				   pwrc_domain->desc.top_pd->sleep_reg,
+				   pwrc_domain->desc.top_pd->sleep_mask,
+				   pwrc_domain->desc.top_pd->sleep_mask);
+	udelay(20);
+
+	for (i = 0 ; i < pwrc_domain->desc.mem_pd_count ; ++i)
+		regmap_update_bits(pwrc_domain->pwrc->regmap_hhi,
+				   pwrc_domain->desc.mem_pd[i].reg,
+				   pwrc_domain->desc.mem_pd[i].mask,
+				   pwrc_domain->desc.mem_pd[i].mask);
+
+	udelay(20);
+
+	if (pwrc_domain->desc.top_pd)
+		regmap_update_bits(pwrc_domain->pwrc->regmap_ao,
+				   pwrc_domain->desc.top_pd->iso_reg,
+				   pwrc_domain->desc.top_pd->iso_mask,
+				   pwrc_domain->desc.top_pd->iso_mask);
+
+	if (pwrc_domain->num_clks) {
+		msleep(20);
+		clk_bulk_disable_unprepare(pwrc_domain->num_clks,
+					   pwrc_domain->clks);
+	}
+
+	return 0;
+}
+
+static int meson_ee_pwrc_on(struct generic_pm_domain *domain)
+{
+	struct meson_ee_pwrc_domain *pwrc_domain =
+		container_of(domain, struct meson_ee_pwrc_domain, base);
+	int i, ret;
+
+	if (pwrc_domain->desc.top_pd)
+		regmap_update_bits(pwrc_domain->pwrc->regmap_ao,
+				   pwrc_domain->desc.top_pd->sleep_reg,
+				   pwrc_domain->desc.top_pd->sleep_mask, 0);
+	udelay(20);
+
+	for (i = 0 ; i < pwrc_domain->desc.mem_pd_count ; ++i)
+		regmap_update_bits(pwrc_domain->pwrc->regmap_hhi,
+				   pwrc_domain->desc.mem_pd[i].reg,
+				   pwrc_domain->desc.mem_pd[i].mask, 0);
+
+	udelay(20);
+
+	ret = reset_control_assert(pwrc_domain->rstc);
+	if (ret)
+		return ret;
+
+	if (pwrc_domain->desc.top_pd)
+		regmap_update_bits(pwrc_domain->pwrc->regmap_ao,
+				   pwrc_domain->desc.top_pd->iso_reg,
+				   pwrc_domain->desc.top_pd->iso_mask, 0);
+
+	ret = reset_control_deassert(pwrc_domain->rstc);
+	if (ret)
+		return ret;
+
+	return clk_bulk_prepare_enable(pwrc_domain->num_clks,
+				       pwrc_domain->clks);
+}
+
+static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
+				     struct meson_ee_pwrc *pwrc,
+				     struct meson_ee_pwrc_domain *dom)
+{
+	dom->pwrc = pwrc;
+	dom->num_rstc = dom->desc.reset_names_count;
+	dom->num_clks = dom->desc.clk_names_count;
+
+	if (dom->num_rstc) {
+		int count = reset_control_get_count(&pdev->dev);
+
+		if (count != dom->num_rstc)
+			dev_warn(&pdev->dev, "Invalid resets count %d for domain %s\n",
+				 count, dom->desc.name);
+
+		dom->rstc = devm_reset_control_array_get(&pdev->dev, false,
+							 false);
+		if (IS_ERR(dom->rstc))
+			return PTR_ERR(dom->rstc);
+	}
+
+	if (dom->num_clks) {
+		int ret = devm_clk_bulk_get_all(&pdev->dev, &dom->clks);
+		if (ret < 0)
+			return ret;
+
+		if (dom->num_clks != ret) {
+			dev_warn(&pdev->dev, "Invalid clocks count %d for domain %s\n",
+				 ret, dom->desc.name);
+			dom->num_clks = ret;
+		}
+	}
+
+	dom->base.name = dom->desc.name;
+	dom->base.power_on = meson_ee_pwrc_on;
+	dom->base.power_off = meson_ee_pwrc_off;
+
+	/*
+         * TOFIX: This is a special case for the VPU power domain, which can
+	 * be enabled previously by the bootloader. In this case the VPU
+         * pipeline may be functional but no driver maybe never attach
+         * to this power domain, and if the domain is disabled it could
+         * cause system errors. This is why the pm_domain_always_on_gov
+         * is used here.
+         * For the same reason, the clocks should be enabled in case
+         * we need to power the domain off, otherwise the internal clocks
+         * prepare/enable counters won't be in sync.
+         */
+	if (dom->num_clks && dom->desc.get_power && !dom->desc.get_power(dom)) {
+		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
+		if (ret)
+			return ret;
+
+		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
+	} else
+		pm_genpd_init(&dom->base, NULL,
+			      (dom->desc.get_power ?
+			       dom->desc.get_power(dom) : true));
+
+	return 0;
+}
+
+static int meson_ee_pwrc_probe(struct platform_device *pdev)
+{
+	const struct meson_ee_pwrc_domain_data *match;
+	struct regmap *regmap_ao, *regmap_hhi;
+	struct meson_ee_pwrc *pwrc;
+	int i, ret;
+
+	match = of_device_get_match_data(&pdev->dev);
+	if (!match) {
+		dev_err(&pdev->dev, "failed to get match data\n");
+		return -ENODEV;
+	}
+
+	pwrc = devm_kzalloc(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
+	if (!pwrc)
+		return -ENOMEM;
+
+	pwrc->xlate.domains = devm_kcalloc(&pdev->dev, match->count,
+					   sizeof(*pwrc->xlate.domains),
+					   GFP_KERNEL);
+	if (!pwrc->xlate.domains)
+		return -ENOMEM;
+
+	pwrc->domains = devm_kcalloc(&pdev->dev, match->count,
+				     sizeof(*pwrc->domains), GFP_KERNEL);
+	if (!pwrc->domains)
+		return -ENOMEM;
+
+	pwrc->xlate.num_domains = match->count;
+
+	regmap_hhi = syscon_node_to_regmap(of_get_parent(pdev->dev.of_node));
+	if (IS_ERR(regmap_hhi)) {
+		dev_err(&pdev->dev, "failed to get HHI regmap\n");
+		return PTR_ERR(regmap_hhi);
+	}
+
+	regmap_ao = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
+						    "amlogic,ao-sysctrl");
+	if (IS_ERR(regmap_ao)) {
+		dev_err(&pdev->dev, "failed to get AO regmap\n");
+		return PTR_ERR(regmap_ao);
+	}
+
+	pwrc->regmap_ao = regmap_ao;
+	pwrc->regmap_hhi = regmap_hhi;
+
+	platform_set_drvdata(pdev, pwrc);
+
+	for (i = 0 ; i < match->count ; ++i) {
+		struct meson_ee_pwrc_domain *dom = &pwrc->domains[i];
+
+		memcpy(&dom->desc, &match->domains[i], sizeof(dom->desc));
+
+		ret = meson_ee_pwrc_init_domain(pdev, pwrc, dom);
+		if (ret)
+			return ret;
+
+		pwrc->xlate.domains[i] = &dom->base;
+	}
+
+	of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
+
+	return 0;
+}
+
+static void meson_ee_pwrc_shutdown(struct platform_device *pdev)
+{
+	struct meson_ee_pwrc *pwrc = platform_get_drvdata(pdev);
+	int i;
+
+	for (i = 0 ; i < pwrc->xlate.num_domains ; ++i) {
+		struct meson_ee_pwrc_domain *dom = &pwrc->domains[i];
+
+		if (dom->desc.get_power && !dom->desc.get_power(dom))
+			meson_ee_pwrc_off(&dom->base);
+	}
+}
+
+static struct meson_ee_pwrc_domain_data meson_ee_g12a_pwrc_data = {
+	.count = ARRAY_SIZE(g12a_pwrc_domains),
+	.domains = g12a_pwrc_domains,
+};
+
+static struct meson_ee_pwrc_domain_data meson_ee_sm1_pwrc_data = {
+	.count = ARRAY_SIZE(sm1_pwrc_domains),
+	.domains = sm1_pwrc_domains,
+};
+
+static const struct of_device_id meson_ee_pwrc_match_table[] = {
+	{
+		.compatible = "amlogic,meson-g12a-pwrc",
+		.data = &meson_ee_g12a_pwrc_data,
+	},
+	{
+		.compatible = "amlogic,meson-sm1-pwrc",
+		.data = &meson_ee_sm1_pwrc_data,
+	},
+	{ /* sentinel */ }
+};
+
+static struct platform_driver meson_ee_pwrc_driver = {
+	.probe = meson_ee_pwrc_probe,
+	.shutdown = meson_ee_pwrc_shutdown,
+	.driver = {
+		.name		= "meson_ee_pwrc",
+		.of_match_table	= meson_ee_pwrc_match_table,
+	},
+};
+builtin_platform_driver(meson_ee_pwrc_driver);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
