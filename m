Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39990AEA90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8/WSzUliUn/EygNPtaus6yJKtwdgJOMjih69AUDnpF4=; b=Zf8q7EqaQ0JDWbxtnefmb21zeR
	raRhTGjDKN0ovJksgLH+wqFryXo3BrzWUmM0qVitJ7dniFlCzTHQ5UA8gwx+C+CAsuaP0+JckxLe0
	e5WPQp85kls3ltlkZNRnAjuWtXXYM88v2MuDg3MSMT1tw/TigXeWzDIHk3M6SYUBMl7l7lzf/4J3q
	/VWumGv2jQh+aCyVY627/VJTF3Afm549uoxFPoU3uGzmvhLcTabi5uY9J/DMIOmpL1RwhfG+YYFhV
	pNvAXtQ1OkTpSydxA+GlHXhpTG3Nu6BxOh1BPqTOOK1fNGhNdt/EXfmy95oFkA0mliQSkkJ3T6OOi
	GZphzT3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fOz-0004en-Ez; Tue, 10 Sep 2019 12:37:45 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fNy-0003to-HW
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:36:46 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190910123641euoutp016611c3f23b761b5c6f856a856b599141~DE_xescZy1273812738euoutp01D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 12:36:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190910123641euoutp016611c3f23b761b5c6f856a856b599141~DE_xescZy1273812738euoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568119001;
 bh=V6hNjAkHg4sxr++j2MImPiCSLOraq/mqqnBxxG6lmYU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Vtrx7qdGPBi98Tz2pDVVTEypSznf5kws4DXtYXfvVE0u/ckj7a75HdxKC6Xe9+5lr
 kRAai+eF5/XBUC39lBPmLlrlPJV5exxJ3Mpwipa5tom8ZjZ4ZycU074r0BrNE1aZB2
 bqyME9CmpfNfgc2EOxgi7v3btaax46lDsWk5zSMI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190910123640eucas1p22f7d5bb0bbd54396973f397d4845327d~DE_w6cn880226902269eucas1p22;
 Tue, 10 Sep 2019 12:36:40 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C4.EB.04469.8D8977D5; Tue, 10
 Sep 2019 13:36:40 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190910123639eucas1p2ab65f8d2bba3ca9da831d2549dc62cfb~DE_wLafy53272032720eucas1p2G;
 Tue, 10 Sep 2019 12:36:39 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190910123639eusmtrp180cf8f81d6e5a777341f21752014b972~DE_v5zY432381323813eusmtrp1C;
 Tue, 10 Sep 2019 12:36:39 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-6f-5d7798d846a9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 02.88.04166.7D8977D5; Tue, 10
 Sep 2019 13:36:39 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123638eusmtip1938d0352967db747fcc52f6051ec2570~DE_vVk_A_1089210892eusmtip1T;
 Tue, 10 Sep 2019 12:36:38 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org
Subject: [PATCH v4 3/6] soc: samsung: Add Exynos Adaptive Supply Voltage driver
Date: Tue, 10 Sep 2019 14:36:15 +0200
Message-Id: <20190910123618.27985-4-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123618.27985-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEKsWRmVeSWpSXmKPExsWy7djP87o3ZpTHGtz6KmSxccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBLFZZOSmpNZllqkb5fAlbHr5SLWglfzmCq2NnWxNzA+
 fszYxcjJISFgItF7aip7FyMXh5DACkaJti07WSGcL4wSs27NhnI+M0o07brLAtPSNmUxVGI5
 o0T3qimMcC0v701jA6liEzCU6D3aB7ZEREBd4tWp/8wgRcwC65gkls1aBpYQFgiU2LfsJDOI
 zSKgKvH0+RSgZg4OXgFrib1PUyC2yUus3nAArIRTwEbi1O5dTCBzJAQms0tc7m6D+sJFYtXx
 Q6wQtrDEq+Nb2CFsGYnTk3tYIBqaGSV6dt9mh3AmMErcP74Aqtta4vDxi6wgm5kFNCXW79KH
 CDtKTNn1gREkLCHAJ3HjrSBImBnInLRtOjNEmFeio00IolpF4veq6UwQtpRE95P/0NDykJi7
 GuIEIYF+RombNw+xTWCUn4WwbAEj4ypG8dTS4tz01GLDvNRyveLE3OLSvHS95PzcTYzAlHL6
 3/FPOxi/Xko6xCjAwajEw9vRUh4rxJpYVlyZe4hRgoNZSYT3el9prBBvSmJlVWpRfnxRaU5q
 8SFGaQ4WJXHeaoYH0UIC6YklqdmpqQWpRTBZJg5OqQZG8fxjW4+t3vBJ7ItZ4R3n8K1fJE70
 eiSUhjuFZK0/5vpXhNP/xbP/zi9nTAgPf6g6484L25XiK5eqrdOPXuC33jrqfRRHxf/sZ6vD
 NTt8y9bmHHtcH3M25H3GDcEPDV+d7p/efIVhy1t9D5Z981fse/thQl67n2f6AqkHM/cXCBds
 VnGxYuk+ocRSnJFoqMVcVJwIAMiNS80lAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrALMWRmVeSWpSXmKPExsVy+t/xu7rXZ5THGnyeKG2xccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl7Hr5SLWglfzmCq2NnWxNzA+fszYxcjJISFgItE2ZTFrFyMX
 h5DAUkaJgxNOs3UxcgAlpCTmtyhB1AhL/LnWxQZR84lRYu2kmcwgCTYBQ4neo32MIPUiApoS
 e9eB1TAL7GCS2PvsLxtIjbCAv8SmJ3dYQWwWAVWJp8+ngM3nFbCW2Ps0BWK+vMTqDQfARnIK
 2Eic2r2LCcQWAip5/XEK6wRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECQ3vbsZ+b
 dzBe2hh8iFGAg1GJh/dBW3msEGtiWXFl7iFGCQ5mJRHe632lsUK8KYmVValF+fFFpTmpxYcY
 TYFumsgsJZqcD4y7vJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFIN
 jPO7fnA6x6esXrj37HG272p7n7r9v8L5dmePVR3fesfdnrxpJX/mOxnZnTWLPnGMn1noSOqc
 Fdueey4J+nX/xoMShfbpGod/ZIlNCCorNo3yvsU0MZatfftTy0krvaKXasUZr3+46L3Xi8Xe
 1x+Xdd0Qvui7RuirzN2Hk0y4epSMWuUtjOavXqjEUpyRaKjFXFScCAADHlhogwIAAA==
X-CMS-MailID: 20190910123639eucas1p2ab65f8d2bba3ca9da831d2549dc62cfb
X-Msg-Generator: CA
X-RootMTR: 20190910123639eucas1p2ab65f8d2bba3ca9da831d2549dc62cfb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123639eucas1p2ab65f8d2bba3ca9da831d2549dc62cfb
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123639eucas1p2ab65f8d2bba3ca9da831d2549dc62cfb@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053643_054656_618533B6 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Adaptive Supply Voltage (ASV) driver adjusts CPU cluster operating
points depending on exact revision of an SoC retrieved from the CHIPID
block or the OTP memory.  This allows for some power saving as for some
CPU clock frequencies we can lower CPU cluster's supply voltage comparing
to safe values common to all the SoC revisions.

This patch adds support for Exynos5422/5800 SoC, it is partially based
on code from https://github.com/hardkernel/linux repository,
branch odroidxu4-4.14.y, files: arch/arm/mach-exynos/exynos5422-asv.[ch].

Tested on Odroid XU3, XU4, XU3 Lite.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v3:
 - instead of removing/adding OPP use dedicated API to adjust OPP's
   voltage, only exynos_asv_update_cpu_opps() function has changed,
 - added a comment describing ASV tables at beginning of
   exynos5422-asv.c file.

Changes since v2:
 - use devm_kzalloc() in probe() to avoid memory leak,
 - removed leading spaces in exynos-chipid.h,
 - removed unneeded <linux/init.h> header inclusion,
 - dropped parentheses from exynos542_asv_parse_sg(),
 - updated Kconfig entry,
 - added const attribute to struct exynos_asv_susbsys::cpu_dt_compat.

Changes since v1 (RFC):
 - removed code for parsing the ASV OPP tables from DT, the ASV OPP tables
   moved to the driver,
 - converted to use the regmap API,
 - converted to normal platform driver.
---
 drivers/soc/samsung/Kconfig          |  10 +
 drivers/soc/samsung/Makefile         |   3 +
 drivers/soc/samsung/exynos-asv.c     | 179 ++++++++++
 drivers/soc/samsung/exynos-asv.h     |  82 +++++
 drivers/soc/samsung/exynos5422-asv.c | 509 +++++++++++++++++++++++++++
 drivers/soc/samsung/exynos5422-asv.h |  25 ++
 6 files changed, 808 insertions(+)
 create mode 100644 drivers/soc/samsung/exynos-asv.c
 create mode 100644 drivers/soc/samsung/exynos-asv.h
 create mode 100644 drivers/soc/samsung/exynos5422-asv.c
 create mode 100644 drivers/soc/samsung/exynos5422-asv.h

diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
index 33ad0de2de3c..27fc59bbb520 100644
--- a/drivers/soc/samsung/Kconfig
+++ b/drivers/soc/samsung/Kconfig
@@ -7,6 +7,16 @@ menuconfig SOC_SAMSUNG

 if SOC_SAMSUNG

+config EXYNOS_ASV
+	bool "Exynos Adaptive Supply Voltage support" if COMPILE_TEST
+	depends on (ARCH_EXYNOS && EXYNOS_CHIPID) || COMPILE_TEST
+	select EXYNOS_ASV_ARM if ARM && ARCH_EXYNOS
+
+# There is no need to enable these drivers for ARMv8
+config EXYNOS_ASV_ARM
+	bool "Exynos ASV ARMv7-specific driver extensions" if COMPILE_TEST
+	depends on EXYNOS_ASV
+
 config EXYNOS_CHIPID
 	bool "Exynos Chipid controller driver" if COMPILE_TEST
 	depends on ARCH_EXYNOS || COMPILE_TEST
diff --git a/drivers/soc/samsung/Makefile b/drivers/soc/samsung/Makefile
index 3b6a8797416c..edd1d6ea064d 100644
--- a/drivers/soc/samsung/Makefile
+++ b/drivers/soc/samsung/Makefile
@@ -1,5 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0

+obj-$(CONFIG_EXYNOS_ASV)	+= exynos-asv.o
+obj-$(CONFIG_EXYNOS_ASV_ARM)	+= exynos5422-asv.o
+
 obj-$(CONFIG_EXYNOS_CHIPID)	+= exynos-chipid.o
 obj-$(CONFIG_EXYNOS_PMU)	+= exynos-pmu.o

diff --git a/drivers/soc/samsung/exynos-asv.c b/drivers/soc/samsung/exynos-asv.c
new file mode 100644
index 000000000000..c55402aa5458
--- /dev/null
+++ b/drivers/soc/samsung/exynos-asv.c
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Samsung Electronics Co., Ltd.
+ *	      http://www.samsung.com/
+ * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
+ *
+ * Samsung Exynos SoC Adaptive Supply Voltage support
+ */
+
+#include <linux/cpu.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/init.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_opp.h>
+#include <linux/regmap.h>
+#include <linux/soc/samsung/exynos-chipid.h>
+
+#include "exynos-asv.h"
+#include "exynos5422-asv.h"
+
+#define MHZ 1000000U
+
+static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
+				      struct device *cpu)
+{
+	struct exynos_asv_subsys *subsys = NULL;
+	struct dev_pm_opp *opp;
+	unsigned int opp_freq;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(asv->subsys); i++) {
+		if (of_device_is_compatible(cpu->of_node,
+					    asv->subsys[i].cpu_dt_compat)) {
+			subsys = &asv->subsys[i];
+			break;
+		}
+	}
+	if (!subsys)
+		return -EINVAL;
+
+	for (i = 0; i < subsys->table.num_rows; i++) {
+		unsigned int new_volt, volt;
+		int ret;
+
+		opp_freq = exynos_asv_opp_get_frequency(subsys, i);
+
+		opp = dev_pm_opp_find_freq_exact(cpu, opp_freq * MHZ, true);
+		if (IS_ERR(opp)) {
+			dev_info(asv->dev, "cpu%d opp%d, freq: %u missing\n",
+				 cpu->id, i, opp_freq);
+
+			continue;
+		}
+
+		volt = dev_pm_opp_get_voltage(opp);
+		new_volt = asv->opp_get_voltage(subsys, i, volt);
+		dev_pm_opp_put(opp);
+
+		if (new_volt == volt)
+			continue;
+
+		ret = dev_pm_opp_adjust_voltage(cpu, opp_freq * MHZ,
+						new_volt, new_volt, new_volt);
+		if (ret < 0)
+			dev_err(asv->dev,
+				"Failed to adjust OPP %u Hz/%u uV for cpu%d\n",
+				opp_freq, new_volt, cpu->id);
+		else
+			dev_dbg(asv->dev,
+				"Adjusted OPP %u Hz/%u -> %u uV, cpu%d\n",
+				opp_freq, volt, new_volt, cpu->id);
+	}
+
+	return 0;
+}
+
+static int exynos_asv_update_opps(struct exynos_asv *asv)
+{
+	struct opp_table *last_opp_table = NULL;
+	struct device *cpu;
+	int ret, cpuid;
+
+	for_each_possible_cpu(cpuid) {
+		struct opp_table *opp_table;
+
+		cpu = get_cpu_device(cpuid);
+		if (!cpu)
+			continue;
+
+		opp_table = dev_pm_opp_get_opp_table(cpu);
+		if (IS_ERR(opp_table))
+			continue;
+
+		if (!last_opp_table || opp_table != last_opp_table) {
+			last_opp_table = opp_table;
+
+			ret = exynos_asv_update_cpu_opps(asv, cpu);
+			if (ret < 0)
+				dev_err(asv->dev, "Couldn't udate OPPs for cpu%d\n",
+					cpuid);
+		}
+
+		dev_pm_opp_put_opp_table(opp_table);
+	}
+
+	return	0;
+}
+
+static int exynos_asv_probe(struct platform_device *pdev)
+{
+	int (*probe_func)(struct exynos_asv *asv);
+	struct exynos_asv *asv;
+	struct device *cpu_dev;
+	u32 product_id = 0;
+	int ret, i;
+
+	cpu_dev = get_cpu_device(0);
+	ret = dev_pm_opp_get_opp_count(cpu_dev);
+	if (ret < 0)
+		return -EPROBE_DEFER;
+
+	asv = devm_kzalloc(&pdev->dev, sizeof(*asv), GFP_KERNEL);
+	if (!asv)
+		return -ENOMEM;
+
+	asv->chipid_regmap = syscon_node_to_regmap(pdev->dev.of_node);
+	if (IS_ERR(asv->chipid_regmap)) {
+		dev_err(&pdev->dev, "Could not find syscon regmap\n");
+		return PTR_ERR(asv->chipid_regmap);
+	}
+
+	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);
+
+	switch (product_id & EXYNOS_MASK) {
+	case 0xE5422000:
+		probe_func = exynos5422_asv_init;
+		break;
+	default:
+		dev_err(&pdev->dev, "Unsupported product ID: %#x", product_id);
+		return -ENODEV;
+	}
+
+	ret = of_property_read_u32(pdev->dev.of_node, "samsung,asv-bin",
+				   &asv->of_bin);
+	if (ret < 0)
+		asv->of_bin = -EINVAL;
+
+	asv->dev = &pdev->dev;
+	dev_set_drvdata(&pdev->dev, asv);
+
+	for (i = 0; i < ARRAY_SIZE(asv->subsys); i++)
+		asv->subsys[i].asv = asv;
+
+	ret = probe_func(asv);
+	if (ret < 0)
+		return ret;
+
+	return exynos_asv_update_opps(asv);
+}
+
+static const struct of_device_id exynos_asv_of_device_ids[] = {
+	{ .compatible = "samsung,exynos4210-chipid" },
+	{}
+};
+
+static struct platform_driver exynos_asv_driver = {
+	.driver = {
+		.name = "exynos-asv",
+		.of_match_table = exynos_asv_of_device_ids,
+	},
+	.probe	= exynos_asv_probe,
+};
+module_platform_driver(exynos_asv_driver);
diff --git a/drivers/soc/samsung/exynos-asv.h b/drivers/soc/samsung/exynos-asv.h
new file mode 100644
index 000000000000..14b4fedf2ddd
--- /dev/null
+++ b/drivers/soc/samsung/exynos-asv.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 Samsung Electronics Co., Ltd.
+ *	      http://www.samsung.com/
+ * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
+ *
+ * Samsung Exynos SoC Adaptive Supply Voltage support
+ */
+#ifndef __LINUX_SOC_EXYNOS_ASV_H
+#define __LINUX_SOC_EXYNOS_ASV_H
+
+enum {
+	EXYNOS_ASV_SUBSYS_ID_ARM,
+	EXYNOS_ASV_SUBSYS_ID_EGL = EXYNOS_ASV_SUBSYS_ID_ARM,
+	EXYNOS_ASV_SUBSYS_ID_KFC,
+	EXYNOS_ASV_SUBSYS_ID_INT,
+	EXYNOS_ASV_SUBSYS_ID_MIF,
+	EXYNOS_ASV_SUBSYS_ID_G3D,
+	EXYNOS_ASV_SUBSYS_ID_CAM,
+	EXYNOS_ASV_SUBSYS_ID_MAX
+};
+
+struct regmap;
+
+/* HPM, IDS values to select target group */
+struct asv_limit_entry {
+	unsigned int hpm;
+	unsigned int ids;
+};
+
+struct exynos_asv_table {
+	unsigned int num_rows;
+	unsigned int num_cols;
+	u32 *buf;
+};
+
+struct exynos_asv_subsys {
+	struct exynos_asv *asv;
+	const char *cpu_dt_compat;
+	int id;
+	struct exynos_asv_table table;
+
+	unsigned int base_volt;
+	unsigned int offset_volt_h;
+	unsigned int offset_volt_l;
+};
+
+struct exynos_asv {
+	struct device *dev;
+	struct regmap *chipid_regmap;
+	struct exynos_asv_subsys subsys[2];
+
+	int (*opp_get_voltage)(struct exynos_asv_subsys *subs, int level,
+			       unsigned int voltage);
+	unsigned int group;
+	unsigned int table;
+
+	/* True if SG fields from PKG_ID register should be used */
+	bool use_sg;
+	/* ASV bin read from DT */
+	int of_bin;
+};
+
+static inline u32 __asv_get_table_entry(struct exynos_asv_table *table,
+					unsigned int row, unsigned int col)
+{
+	return table->buf[row * (table->num_cols) + col];
+}
+
+static inline u32 exynos_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
+					unsigned int level, unsigned int group)
+{
+	return __asv_get_table_entry(&subsys->table, level, group + 1);
+}
+
+static inline u32 exynos_asv_opp_get_frequency(struct exynos_asv_subsys *subsys,
+					unsigned int level)
+{
+	return __asv_get_table_entry(&subsys->table, level, 0);
+}
+
+#endif /* __LINUX_SOC_EXYNOS_ASV_H */
diff --git a/drivers/soc/samsung/exynos5422-asv.c b/drivers/soc/samsung/exynos5422-asv.c
new file mode 100644
index 000000000000..21c936e1037a
--- /dev/null
+++ b/drivers/soc/samsung/exynos5422-asv.c
@@ -0,0 +1,509 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Samsung Electronics Co., Ltd.
+ *	      http://www.samsung.com/
+ *
+ * Samsung Exynos 5422 SoC Adaptive Supply Voltage support
+ */
+
+#include <linux/bitrev.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/of.h>
+#include <linux/regmap.h>
+#include <linux/soc/samsung/exynos-chipid.h>
+#include <linux/slab.h>
+
+#include "exynos-asv.h"
+
+#define ASV_GROUPS_NUM		14
+#define ASV_ARM_DVFS_NUM	20
+#define ASV_ARM_BIN2_DVFS_NUM	17
+#define ASV_KFC_DVFS_NUM	14
+#define ASV_KFC_BIN2_DVFS_NUM	12
+
+/*
+ * This array is a set of 4 ASV data tables, first column of each ASV table
+ * contains frequency value in MHz and subsequent columns contain the CPU
+ * cluster's supply voltage values in uV.
+ * In order to create a set of OPPs for specific SoC revision one of the voltage
+ * columns (1...14) from one of the tables (0...3) is selected during
+ * initialization. The are separate ASV tables for the big (ARM) and little
+ * (KFC) CPU cluster. Only OPPs which are already defined in devicetree
+ * will be updated.
+ */
+
+static const u32 asv_arm_table[][ASV_ARM_DVFS_NUM][ASV_GROUPS_NUM + 1] = {
+{
+	/* ARM 0, 1 */
+	{ 2100,    1362500, 1362500, 1350000, 1337500, 1325000, 1312500, 1300000,
+	  1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000 },
+	{ 2000,    1312500, 1312500, 1300000, 1287500, 1275000, 1262500, 1250000,
+	  1237500, 1225000, 1237500, 1225000, 1212500, 1200000, 1187500 },
+	{ 1900,    1250000, 1237500, 1225000, 1212500, 1200000, 1187500, 1175000,
+	  1162500, 1150000, 1162500, 1150000, 1137500, 1125000, 1112500 },
+	{ 1800,    1200000, 1187500, 1175000, 1162500, 1150000, 1137500, 1125000,
+	  1112500, 1100000, 1112500, 1100000, 1087500, 1075000, 1062500 },
+	{ 1700,    1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500,
+	  1075000, 1062500, 1075000, 1062500, 1050000, 1037500, 1025000 },
+	{ 1600,    1125000, 1112500, 1100000, 1087500, 1075000, 1062500, 1050000,
+	  1037500, 1025000, 1037500, 1025000, 1012500, 1000000, 987500 },
+	{ 1500,    1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500,
+	  1000000, 987500,  1000000, 987500,  975000,  962500,  950000 },
+	{ 1400,    1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
+	  975000,  962500,  975000,  962500,  950000,  937500,  925000 },
+	{ 1300,    1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
+	  962500,  950000,  962500,  950000,  937500,  925000,  912500 },
+	{ 1200,    1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
+	  937500,  925000,  937500,  925000,  912500,  900000,  900000 },
+	{ 1100,    1000000, 987500,  975000,  962500,  950000,  937500,  925000,
+	  912500,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 1000,    975000,  962500,  950000,  937500,  925000,  912500,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 900,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 800,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 700,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}, {
+	/* ARM 2 */
+	{ 2100,    1362500, 1362500, 1350000, 1337500, 1325000, 1312500, 1300000,
+	  1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000 },
+	{ 2000,    1312500, 1312500, 1312500, 1300000, 1275000, 1262500, 1250000,
+	  1237500, 1225000, 1237500, 1225000, 1212500, 1200000, 1187500 },
+	{ 1900,    1262500, 1250000, 1250000, 1237500, 1212500, 1200000, 1187500,
+	  1175000, 1162500, 1175000, 1162500, 1150000, 1137500, 1125000 },
+	{ 1800,    1212500, 1200000, 1187500, 1175000, 1162500, 1150000, 1137500,
+	  1125000, 1112500, 1125000, 1112500, 1100000, 1087500, 1075000 },
+	{ 1700,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
+	  1087500, 1075000, 1087500, 1075000, 1062500, 1050000, 1037500 },
+	{ 1600,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
+	  1050000, 1037500, 1050000, 1037500, 1025000, 1012500, 1000000 },
+	{ 1500,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
+	  1012500, 1000000, 1012500, 1000000, 987500,  975000,  962500 },
+	{ 1400,    1075000, 1062500, 1050000, 1037500, 1025000, 1012500, 1000000,
+	  987500,  975000,  987500,  975000,  962500,  950000,  937500 },
+	{ 1300,    1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
+	  962500,  950000,  962500,  950000,  937500,  925000,  912500 },
+	{ 1200,    1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
+	  937500,  925000,  937500,  925000,  912500,  900000,  900000 },
+	{ 1100,    1000000, 987500,  975000,  962500,  950000,  937500,  925000,
+	  912500,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 1000,    975000,  962500,  950000,  937500,  925000,  912500,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 900,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 800,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 700,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}, {
+	/* ARM 3 */
+	{ 2100,    1362500, 1362500, 1350000, 1337500, 1325000, 1312500, 1300000,
+	  1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000 },
+	{ 2000,    1312500, 1312500, 1300000, 1287500, 1275000, 1262500, 1250000,
+	  1237500, 1225000, 1237500, 1225000, 1212500, 1200000, 1187500 },
+	{ 1900,    1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500,
+	  1175000, 1162500, 1175000, 1162500, 1150000, 1137500, 1125000 },
+	{ 1800,    1212500, 1200000, 1187500, 1175000, 1162500, 1150000, 1137500,
+	  1125000, 1112500, 1125000, 1112500, 1100000, 1087500, 1075000 },
+	{ 1700,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
+	  1087500, 1075000, 1087500, 1075000, 1062500, 1050000, 1037500 },
+	{ 1600,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
+	  1050000, 1037500, 1050000, 1037500, 1025000, 1012500, 1000000 },
+	{ 1500,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
+	  1012500, 1000000, 1012500, 1000000, 987500,  975000,  962500 },
+	{ 1400,    1075000, 1062500, 1050000, 1037500, 1025000, 1012500, 1000000,
+	  987500,  975000,  987500,  975000,  962500,  950000,  937500 },
+	{ 1300,    1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
+	  962500,  950000,  962500,  950000,  937500,  925000,  912500 },
+	{ 1200,    1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
+	  937500,  925000,  937500,  925000,  912500,  900000,  900000 },
+	{ 1100,    1000000, 987500,  975000,  962500,  950000,  937500,  925000,
+	  912500,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 1000,    975000,  962500,  950000,  937500,  925000,  912500,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 900,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 800,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 700,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}, {
+	/* ARM bin 2 */
+	{ 1800,    1237500, 1225000, 1212500, 1200000, 1187500, 1175000, 1162500,
+	  1150000, 1137500, 1150000, 1137500, 1125000, 1112500, 1100000 },
+	{ 1700,    1200000, 1187500, 1175000, 1162500, 1150000, 1137500, 1125000,
+	  1112500, 1100000, 1112500, 1100000, 1087500, 1075000, 1062500 },
+	{ 1600,    1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500,
+	  1075000, 1062500, 1075000, 1062500, 1050000, 1037500, 1025000 },
+	{ 1500,    1125000, 1112500, 1100000, 1087500, 1075000, 1062500, 1050000,
+	  1037500, 1025000, 1037500, 1025000, 1012500, 1000000, 987500 },
+	{ 1400,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
+	  1012500, 1000000, 1012500, 1000000, 987500,  975000,  962500 },
+	{ 1300,    1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500,
+	  1000000, 987500,  1000000, 987500,  975000,  962500,  950000 },
+	{ 1200,    1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
+	  975000,  962500,  975000,  962500,  950000,  937500,  925000 },
+	{ 1100,    1037500, 1025000, 1012500, 1000000, 987500,  975000,  962500,
+	  950000,  937500,  950000,  937500,  925000,  912500,  900000 },
+	{ 1000,    1012500, 1000000, 987500,  975000,  962500,  950000,  937500,
+	  925000,  912500,  925000,  912500,  900000,  900000,  900000 },
+	{ 900,     987500,  975000,  962500,  950000,  937500,  925000,  912500,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 800,     962500,  950000,  937500,  925000,  912500,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 700,     937500,  925000,  912500,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}
+};
+
+static const u32 asv_kfc_table[][ASV_KFC_DVFS_NUM][ASV_GROUPS_NUM + 1] = {
+{
+	/* KFC 0, 1 */
+	{ 1500000, 1300000, 1300000, 1300000, 1287500, 1287500, 1287500, 1275000,
+	  1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500 },
+	{ 1400000, 1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000,
+	  1187500, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500 },
+	{ 1300000, 1225000, 1212500, 1200000, 1187500, 1175000, 1162500, 1150000,
+	  1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500 },
+	{ 1200000, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
+	  1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500 },
+	{ 1100000, 1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
+	  1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000 },
+	{ 1000000, 1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
+	  1012500, 1000000, 987500,  975000,  962500,  950000,  937500 },
+	{ 900000,  1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
+	  975000,  962500,  950000,  937500,  925000,  912500,  900000 },
+	{ 800000,  1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
+	  937500,  925000,  912500,  900000,  900000,  900000,  900000 },
+	{ 700000,  987500,  975000,  962500,  950000,  937500,  925000,  912500,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600000,  950000,  937500,  925000,  912500,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500000,  912500,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400000,  900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300000,  900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200000,  900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}, {
+	/* KFC 2 */
+	{ 1500,    1300000, 1300000, 1300000, 1287500, 1287500, 1287500, 1275000,
+	  1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500 },
+	{ 1400,    1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000,
+	  1187500, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500 },
+	{ 1300,    1225000, 1212500, 1200000, 1187500, 1175000, 1162500, 1150000,
+	  1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500 },
+	{ 1200,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
+	  1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500 },
+	{ 1100,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
+	  1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000 },
+	{ 1000,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
+	  1012500, 1000000, 987500,  975000,  962500,  950000,  937500 },
+	{ 900,     1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
+	  975000,  962500,  950000,  937500,  925000,  912500,  900000 },
+	{ 800,     1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
+	  937500,  925000,  912500,  900000,  900000,  900000,  900000 },
+	{ 700,     987500,  975000,  962500,  950000,  937500,  925000,  912500,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     912500,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}, {
+	/* KFC 3 */
+	{ 1500,    1300000, 1300000, 1300000, 1287500, 1287500, 1287500, 1275000,
+	  1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500 },
+	{ 1400,    1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000,
+	  1187500, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500 },
+	{ 1300,    1225000, 1212500, 1200000, 1187500, 1175000, 1162500, 1150000,
+	  1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500 },
+	{ 1200,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
+	  1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500 },
+	{ 1100,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
+	  1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000 },
+	{ 1000,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
+	  1012500, 1000000, 987500,  975000,  962500,  950000,  937500 },
+	{ 900,     1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
+	  975000,  962500,  950000,  937500,  925000,  912500,  900000 },
+	{ 800,     1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
+	  937500,  925000,  912500,  900000,  900000,  900000,  900000 },
+	{ 700,     987500,  975000,  962500,  950000,  937500,  925000,  912500,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     912500,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}, {
+	/* KFC bin 2 */
+	{ 1300,    1250000, 1237500, 1225000, 1212500, 1200000, 1187500, 1175000,
+	  1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500 },
+	{ 1200,    1200000, 1187500, 1175000, 1162500, 1150000, 1137500, 1125000,
+	  1112500, 1100000, 1087500, 1075000, 1062500, 1050000, 1037500 },
+	{ 1100,    1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500,
+	  1075000, 1062500, 1050000, 1037500, 1025000, 1012500, 1000000 },
+	{ 1000,    1125000, 1112500, 1100000, 1087500, 1075000, 1062500, 1050000,
+	  1037500, 1025000, 1012500, 1000000, 987500,  975000,  962500 },
+	{ 900,     1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500,
+	  1000000, 987500,  975000,  962500,  950000,  937500,  925000 },
+	{ 800,     1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
+	  962500,  950000,  937500,  925000,  912500,  900000,  900000 },
+	{ 700,     1012500, 1000000, 987500,  975000,  962500,  950000,  937500,
+	  925000,  912500,  900000,  900000,  900000,  900000,  900000 },
+	{ 600,     975000,  962500,  950000,  937500,  925000,  912500,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 500,     937500,  925000,  912500,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 400,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+	{ 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
+	  900000,  900000,  900000,  900000,  900000,  900000,  900000 },
+}
+};
+
+static const struct asv_limit_entry __asv_limits[ASV_GROUPS_NUM] = {
+	{ 13, 55 },
+	{ 21, 65 },
+	{ 25, 69 },
+	{ 30, 72 },
+	{ 36, 74 },
+	{ 43, 76 },
+	{ 51, 78 },
+	{ 65, 80 },
+	{ 81, 82 },
+	{ 98, 84 },
+	{ 119, 87 },
+	{ 135, 89 },
+	{ 150, 92 },
+	{ 999, 999 },
+};
+
+static int exynos5422_asv_get_group(struct exynos_asv *asv)
+{
+	unsigned int pkgid_reg, auxi_reg;
+	int hpm, ids, i;
+
+	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PKG_ID, &pkgid_reg);
+	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_AUX_INFO, &auxi_reg);
+
+	if (asv->use_sg) {
+		u32 sga = (pkgid_reg >> EXYNOS5422_SG_A_OFFSET) &
+			   EXYNOS5422_SG_A_MASK;
+
+		u32 sgb = (pkgid_reg >> EXYNOS5422_SG_B_OFFSET) &
+			   EXYNOS5422_SG_B_MASK;
+
+		if ((pkgid_reg >> EXYNOS5422_SG_BSIGN_OFFSET) &
+		     EXYNOS5422_SG_BSIGN_MASK)
+			return sga + sgb;
+		else
+			return sga - sgb;
+	}
+
+	hpm = (auxi_reg >> EXYNOS5422_TMCB_OFFSET) & EXYNOS5422_TMCB_MASK;
+	ids = (pkgid_reg >> EXYNOS5422_IDS_OFFSET) & EXYNOS5422_IDS_MASK;
+
+	for (i = 0; i < ASV_GROUPS_NUM; i++) {
+		if (ids <= __asv_limits[i].ids)
+			break;
+		if (hpm <= __asv_limits[i].hpm)
+			break;
+	}
+	if (i < ASV_GROUPS_NUM)
+		return i;
+
+	return 0;
+}
+
+static int __asv_offset_voltage(unsigned int index)
+{
+	switch (index) {
+	case 1:
+		return 12500;
+	case 2:
+		return 50000;
+	case 3:
+		return 25000;
+	default:
+		return 0;
+	};
+}
+
+static void exynos5422_asv_offset_voltage_setup(struct exynos_asv *asv)
+{
+	struct exynos_asv_subsys *subsys;
+	unsigned int reg, value;
+
+	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_AUX_INFO, &reg);
+
+	/* ARM offset voltage setup */
+	subsys = &asv->subsys[EXYNOS_ASV_SUBSYS_ID_ARM];
+
+	subsys->base_volt = 1000000;
+
+	value = (reg >> EXYNOS5422_ARM_UP_OFFSET) & EXYNOS5422_ARM_UP_MASK;
+	subsys->offset_volt_h = __asv_offset_voltage(value);
+
+	value = (reg >> EXYNOS5422_ARM_DN_OFFSET) & EXYNOS5422_ARM_DN_MASK;
+	subsys->offset_volt_l = __asv_offset_voltage(value);
+
+	/* KFC offset voltage setup */
+	subsys = &asv->subsys[EXYNOS_ASV_SUBSYS_ID_KFC];
+
+	subsys->base_volt = 1000000;
+
+	value = (reg >> EXYNOS5422_KFC_UP_OFFSET) & EXYNOS5422_KFC_UP_MASK;
+	subsys->offset_volt_h = __asv_offset_voltage(value);
+
+	value = (reg >> EXYNOS5422_KFC_DN_OFFSET) & EXYNOS5422_KFC_DN_MASK;
+	subsys->offset_volt_l = __asv_offset_voltage(value);
+}
+
+static int exynos5422_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
+				int level, unsigned int volt)
+{
+	unsigned int asv_volt;
+
+	if (level >= subsys->table.num_rows)
+		return volt;
+
+	asv_volt = exynos_asv_opp_get_voltage(subsys, level,
+					      subsys->asv->group);
+
+	if (volt > subsys->base_volt)
+		asv_volt += subsys->offset_volt_h;
+	else
+		asv_volt += subsys->offset_volt_l;
+
+	return asv_volt;
+}
+
+static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
+				      unsigned int pkg_id)
+{
+	return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
+}
+
+static bool exynos5422_asv_parse_bin2(struct exynos_asv *asv,
+				     unsigned int pkg_id)
+{
+	return (pkg_id >> EXYNOS5422_BIN2_OFFSET) & EXYNOS5422_BIN2_MASK;
+}
+
+static bool exynos5422_asv_parse_sg(struct exynos_asv *asv,
+					unsigned int pkg_id)
+{
+	return (pkg_id >> EXYNOS5422_USESG_OFFSET) & EXYNOS5422_USESG_MASK;
+}
+
+int exynos5422_asv_init(struct exynos_asv *asv)
+{
+	struct exynos_asv_subsys *subsys;
+	unsigned int table_index;
+	unsigned int pkg_id;
+	bool bin2;
+
+	regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PKG_ID, &pkg_id);
+
+	if (asv->of_bin == 2) {
+		bin2 = true;
+		asv->use_sg = false;
+	} else {
+		asv->use_sg = exynos5422_asv_parse_sg(asv, pkg_id);
+		bin2 = exynos5422_asv_parse_bin2(asv, pkg_id);
+	}
+
+	asv->group = exynos5422_asv_get_group(asv);
+	asv->table = exynos5422_asv_parse_table(asv, pkg_id);
+
+	exynos5422_asv_offset_voltage_setup(asv);
+
+	if (bin2) {
+		table_index = 3;
+	} else {
+		if (asv->table == 2 || asv->table == 3)
+			table_index = asv->table - 1;
+		else
+			table_index = 0;
+	}
+
+	subsys = &asv->subsys[EXYNOS_ASV_SUBSYS_ID_ARM];
+	subsys->cpu_dt_compat = "arm,cortex-a15";
+	if (bin2)
+		subsys->table.num_rows = ASV_ARM_BIN2_DVFS_NUM;
+	else
+		subsys->table.num_rows = ASV_ARM_DVFS_NUM;
+	subsys->table.num_cols = ASV_GROUPS_NUM + 1;
+	subsys->table.buf = (u32 *)asv_arm_table[table_index];
+
+	subsys = &asv->subsys[EXYNOS_ASV_SUBSYS_ID_KFC];
+	subsys->cpu_dt_compat = "arm,cortex-a7";
+	if (bin2)
+		subsys->table.num_rows = ASV_KFC_BIN2_DVFS_NUM;
+	else
+		subsys->table.num_rows = ASV_KFC_DVFS_NUM;
+	subsys->table.num_cols = ASV_GROUPS_NUM + 1;
+	subsys->table.buf = (u32 *)asv_kfc_table[table_index];
+
+	asv->opp_get_voltage = exynos5422_asv_opp_get_voltage;
+
+	return 0;
+}
diff --git a/drivers/soc/samsung/exynos5422-asv.h b/drivers/soc/samsung/exynos5422-asv.h
new file mode 100644
index 000000000000..d8f108fcc39b
--- /dev/null
+++ b/drivers/soc/samsung/exynos5422-asv.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 Samsung Electronics Co., Ltd.
+ *	      http://www.samsung.com/
+ *
+ * Samsung Exynos 5422 SoC Adaptive Supply Voltage support
+ */
+
+#ifndef __EXYNOS5422_ASV_H
+#define __EXYNOS5422_ASV_H
+
+#include <linux/errno.h>
+
+struct exynos_asv;
+
+#ifdef CONFIG_EXYNOS_ASV_ARM
+int exynos5422_asv_init(struct exynos_asv *asv);
+#else
+static inline int exynos5422_asv_init(struct exynos_asv *asv)
+{
+	return -ENOTSUPP;
+}
+#endif
+
+#endif /* __EXYNOS5422_ASV_H */
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
