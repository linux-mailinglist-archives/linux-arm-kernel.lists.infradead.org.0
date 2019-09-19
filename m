Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17AAB7900
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYeOWtZGNiPTWxbDTHJ0tjnioMPnctULUgESLJc4K44=; b=gr1LCE5VHc4Uzb
	Fn7evOQaDlq2tHGml353h8GL/EoD7SUSVj8HuqjdUMRMOnTMCZP8eUynUEVMaa4S2jLNUdeUCbNqd
	IEACIeYqxzS7iwOg/NRju8TSW3qJMaHDZowb7mQj6S6oGvILcvBYxHoxaK/1MbP23kBFd3mRxblYB
	Jwj0kbZa/atwoB4zlBeGIIbNg/crR2WtxnfVhbobY6IGsqOMKQTs0v7jia+GwO5/9IiLyThtRA/OW
	zOj7b6r07oT/oh2R9I69+4Q5yz3bxBqLHQG7R15BiUk2nZdmFF+OF7Fb0xGX62m9ISdvFcq2Aqvsd
	x529y1UKp+JvSe2gbn6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvIb-00048q-CM; Thu, 19 Sep 2019 12:12:37 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvHN-0003TK-JL; Thu, 19 Sep 2019 12:11:23 +0000
Received: from droid13.amlogic.com (116.236.93.172) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Thu, 19 Sep 2019
 20:12:06 +0800
From: Jianxin Pan <jianxin.pan@amlogic.com>
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
Subject: [PATCH 2/3] soc: amlogic: Add support for Secure power domains
 controller
Date: Thu, 19 Sep 2019 08:11:03 -0400
Message-ID: <1568895064-4116-3-git-send-email-jianxin.pan@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
References: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [116.236.93.172]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_051122_148840_C51F0296 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Zhiqiang Liang <zhiqiang.liang@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Amlogic Secure Power controller. In A1/C1 series, power
control registers are in secure domain, and should be accessed by smc.

Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
Signed-off-by: Zhiqiang Liang <zhiqiang.liang@amlogic.com>
---
 drivers/soc/amlogic/Kconfig             |  13 +++
 drivers/soc/amlogic/Makefile            |   1 +
 drivers/soc/amlogic/meson-secure-pwrc.c | 182 ++++++++++++++++++++++++++++++++
 3 files changed, 196 insertions(+)
 create mode 100644 drivers/soc/amlogic/meson-secure-pwrc.c

diff --git a/drivers/soc/amlogic/Kconfig b/drivers/soc/amlogic/Kconfig
index bc2c912..6cb06e7 100644
--- a/drivers/soc/amlogic/Kconfig
+++ b/drivers/soc/amlogic/Kconfig
@@ -48,6 +48,19 @@ config MESON_EE_PM_DOMAINS
 	  Say yes to expose Amlogic Meson Everything-Else Power Domains as
 	  Generic Power Domains.
 
+config MESON_SECURE_PM_DOMAINS
+	bool "Amlogic Meson Secure Power Domains driver"
+	depends on ARCH_MESON || COMPILE_TEST
+	depends on PM && OF
+	depends on HAVE_ARM_SMCCC
+	default ARCH_MESON
+	select PM_GENERIC_DOMAINS
+	select PM_GENERIC_DOMAINS_OF
+	help
+	  Support for the power controller on Amlogic A1/C1 series.
+	  Say yes to expose Amlogic Meson Secure Power Domains as Generic
+	  Power Domains.
+
 config MESON_MX_SOCINFO
 	bool "Amlogic Meson MX SoC Information driver"
 	depends on ARCH_MESON || COMPILE_TEST
diff --git a/drivers/soc/amlogic/Makefile b/drivers/soc/amlogic/Makefile
index de79d044..7b8c5d3 100644
--- a/drivers/soc/amlogic/Makefile
+++ b/drivers/soc/amlogic/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_MESON_GX_SOCINFO) += meson-gx-socinfo.o
 obj-$(CONFIG_MESON_GX_PM_DOMAINS) += meson-gx-pwrc-vpu.o
 obj-$(CONFIG_MESON_MX_SOCINFO) += meson-mx-socinfo.o
 obj-$(CONFIG_MESON_EE_PM_DOMAINS) += meson-ee-pwrc.o
+obj-$(CONFIG_MESON_SECURE_PM_DOMAINS) += meson-secure-pwrc.o
diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
new file mode 100644
index 00000000..00c7232
--- /dev/null
+++ b/drivers/soc/amlogic/meson-secure-pwrc.c
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Amlogic, Inc.
+ * Author: Jianxin Pan <jianxin.pan@amlogic.com>
+ */
+#include <linux/io.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <dt-bindings/power/meson-a1-power.h>
+#include <linux/arm-smccc.h>
+
+#define PWRC_ON		1
+#define PWRC_OFF	0
+#define SMC_PWRC_SET	0x82000093
+#define SMC_PWRC_GET	0x82000095
+
+struct meson_secure_pwrc_domain {
+	struct generic_pm_domain base;
+	unsigned int index;
+};
+
+struct meson_secure_pwrc {
+	struct meson_secure_pwrc_domain *domains;
+	struct genpd_onecell_data xlate;
+};
+
+struct meson_secure_pwrc_domain_desc {
+	unsigned int index;
+	unsigned int flags;
+	char *name;
+	bool (*get_power)(struct meson_secure_pwrc_domain *pwrc_domain);
+};
+
+struct meson_secure_pwrc_domain_data {
+	unsigned int count;
+	struct meson_secure_pwrc_domain_desc *domains;
+};
+
+static bool pwrc_secure_get_power(struct meson_secure_pwrc_domain *pwrc_domain)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(SMC_PWRC_GET, pwrc_domain->index, 0,
+		      0, 0, 0, 0, 0, &res);
+
+	return res.a0 & 0x1;
+}
+
+static int meson_secure_pwrc_off(struct generic_pm_domain *domain)
+{
+	struct arm_smccc_res res;
+	struct meson_secure_pwrc_domain *pwrc_domain =
+		container_of(domain, struct meson_secure_pwrc_domain, base);
+
+	arm_smccc_smc(SMC_PWRC_SET, pwrc_domain->index, PWRC_OFF,
+		      0, 0, 0, 0, 0, &res);
+
+	return 0;
+}
+
+static int meson_secure_pwrc_on(struct generic_pm_domain *domain)
+{
+	struct arm_smccc_res res;
+	struct meson_secure_pwrc_domain *pwrc_domain =
+		container_of(domain, struct meson_secure_pwrc_domain, base);
+
+	arm_smccc_smc(SMC_PWRC_SET, pwrc_domain->index, PWRC_ON,
+		      0, 0, 0, 0, 0, &res);
+
+	return 0;
+}
+
+#define SEC_PD(__name, __flag)			\
+{						\
+	.name = #__name,			\
+	.index = PWRC_##__name##_ID,		\
+	.get_power = pwrc_secure_get_power,	\
+	.flags = __flag,			\
+}
+
+static struct meson_secure_pwrc_domain_desc a1_pwrc_domains[] = {
+	SEC_PD(DSPA,	0),
+	SEC_PD(DSPB,	0),
+	SEC_PD(UART,	GENPD_FLAG_ALWAYS_ON),
+	SEC_PD(DMC,	GENPD_FLAG_ALWAYS_ON),
+	SEC_PD(I2C,	0),
+	SEC_PD(PSRAM,	0),
+	SEC_PD(ACODEC,	0),
+	SEC_PD(AUDIO,	0),
+	SEC_PD(OTP,	0),
+	SEC_PD(DMA,	0),
+	SEC_PD(SD_EMMC,	0),
+	SEC_PD(RAMA,	0),
+	SEC_PD(RAMB,	GENPD_FLAG_ALWAYS_ON),
+	SEC_PD(IR,	0),
+	SEC_PD(SPICC,	0),
+	SEC_PD(SPIFC,	0),
+	SEC_PD(USB,	0),
+	SEC_PD(NIC,	GENPD_FLAG_ALWAYS_ON),
+	SEC_PD(PDMIN,	0),
+	SEC_PD(RSA,	0),
+};
+
+static int meson_secure_pwrc_probe(struct platform_device *pdev)
+{
+	const struct meson_secure_pwrc_domain_data *match;
+	struct meson_secure_pwrc *pwrc;
+	int i;
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
+	platform_set_drvdata(pdev, pwrc);
+
+	for (i = 0 ; i < match->count ; ++i) {
+		struct meson_secure_pwrc_domain *dom = &pwrc->domains[i];
+
+		if (!match->domains[i].index)
+			continue;
+
+		dom->index = match->domains[i].index;
+		dom->base.name = match->domains[i].name;
+		dom->base.flags = match->domains[i].flags;
+		dom->base.power_on = meson_secure_pwrc_on;
+		dom->base.power_off = meson_secure_pwrc_off;
+
+		pm_genpd_init(&dom->base, NULL,
+			      (match->domains[i].get_power ?
+			      match->domains[i].get_power(dom) : true));
+
+		pwrc->xlate.domains[i] = &dom->base;
+	}
+
+	return of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
+}
+
+static struct meson_secure_pwrc_domain_data meson_secure_a1_pwrc_data = {
+	.domains = a1_pwrc_domains,
+	.count = ARRAY_SIZE(a1_pwrc_domains),
+};
+
+static const struct of_device_id meson_secure_pwrc_match_table[] = {
+	{
+		.compatible = "amlogic,meson-a1-pwrc",
+		.data = &meson_secure_a1_pwrc_data,
+	},
+	{ }
+};
+
+static struct platform_driver meson_secure_pwrc_driver = {
+	.probe = meson_secure_pwrc_probe,
+	.driver = {
+		.name		= "meson_secure_pwrc",
+		.of_match_table	= meson_secure_pwrc_match_table,
+	},
+};
+
+static int meson_secure_pwrc_init(void)
+{
+	return platform_driver_register(&meson_secure_pwrc_driver);
+}
+arch_initcall_sync(meson_secure_pwrc_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
