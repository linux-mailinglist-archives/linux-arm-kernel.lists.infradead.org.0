Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043F88BC86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/axLUe0lvC3kNMFsZd86SET8os5MjRbN+ncabELy2uk=; b=VnaVSrz0GgZHQOvE+mE0/psUCv
	EyMMbkEbB4iMhkO1piUqY/Z+4zX0vFvLOCIRVduD1d0IMYYHulYnaQ7iQaHasI7PKdfRIF7MCBaVt
	3kBG5UbSVTz9tPkA39NHeuN1PpTC1kCRJ4MXSrVubYPDngV8OaTxtt6ROu76PmmlS1XcsdSbYbEi3
	ZkdDGsTstuukUXJTsXaAJz5jnpyeKnmoXwn17+ruvbgWbRrF1ECN77ysDZcQX8IC/EawIYbOY9OtL
	PtDTQ0ZqxayoW7CoBqK3SLeSbOoRq+4QUgYxTHm+nT3ZBVoGiQjVUnuEENjvP1+74UYQx15RHV8Zj
	dWoLd29Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYQN-0003Gv-4A; Tue, 13 Aug 2019 15:09:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYPu-00035r-Ah
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:08:56 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190813150852euoutp014f383db128d77468c85fe14eb75f3084~6g-prsluJ2742827428euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 15:08:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190813150852euoutp014f383db128d77468c85fe14eb75f3084~6g-prsluJ2742827428euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565708932;
 bh=4xBLzVQlksJZjqm1p2okgrhUtsVsXGgYUzbKDKnhVHk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M3lfi5HM0iO0egMq9wf7DSzadH7m0v4PRqpWAzlROXms/4FIHkp90tVGSRSoglQj+
 wAH55V54vcfr//BlytImqE0ce1GaOVeWefzOELA3fSTI9eyxek3pgKY22NaR6CvZBR
 2SxI2AmOr+922M3+8eICENTPqV2c6Q1NPzo7Yavs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190813150851eucas1p22480292b56b27f9d56ffc0d8563691a0~6g-pLSUDl1045710457eucas1p2D;
 Tue, 13 Aug 2019 15:08:51 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 12.5B.04469.382D25D5; Tue, 13
 Aug 2019 16:08:51 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150850eucas1p2aff64b5edb49ffb6626433de1c9e58ec~6g-oYQlXr2657926579eucas1p23;
 Tue, 13 Aug 2019 15:08:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190813150850eusmtrp2feaddf581349b3332d63b4c5ac3d9cab~6g-oIju9N2922129221eusmtrp2k;
 Tue, 13 Aug 2019 15:08:50 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-a3-5d52d283577d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A1.23.04117.282D25D5; Tue, 13
 Aug 2019 16:08:50 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150849eusmtip2c9cf763851e23d1b5fc058c314c6bed0~6g-nhUpLg1440914409eusmtip2k;
 Tue, 13 Aug 2019 15:08:49 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v3 1/9] soc: samsung: Add exynos chipid driver support
Date: Tue, 13 Aug 2019 17:08:19 +0200
Message-Id: <20190813150827.31972-2-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813150827.31972-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKKsWRmVeSWpSXmKPExsWy7djPc7rNl4JiDfZu47LYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wASxSXTUpqTmZZapG+XQJXxsrJ/5gKtuhUnLny
 iLWBca5qFyMnh4SAicTjveeZuhi5OIQEVjBKLJmwkA3C+cIosXPdJlYI5zOjxLO/G5hhWp51
 PYWqWs4o8evvRGa4lrbTO1lAqtgEDCV6j/YxgtgiAsIS95YuZwcpYha4xyRx+ulZJpCEsICb
 xPoDd8CKWARUJZbPnw4U5+DgFbCW2PMgEGKbvMTqDQfANnMK2EjsnP4e7CQJgcnsEieWb2eB
 KHKRWPzvJZQtLPHq+BZ2CFtG4v/O+UwQDc2MEj27b7NDOBMYJe4fX8AIUWUtcfj4RVaQzcwC
 mhLrd+lDhB0lTvfvZAcJSwjwSdx4KwgSZgYyJ22bzgwR5pXoaBOCqFaR+L1qOhOELSXR/eQ/
 1DkeEpMer4YGYz/QCe/Ws05glJ+FsGwBI+MqRvHU0uLc9NRiw7zUcr3ixNzi0rx0veT83E2M
 wMRy+t/xTzsYv15KOsQowMGoxMMbsCUoVog1say4MvcQowQHs5II74SLQCHelMTKqtSi/Pii
 0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2MqyaefL3O+dfJY5cnPnoh3n+y
 +0HsKilGKat36ootnsZe8Zrp6+ZJBT1wOtz4os7c9+cP93bbIxZz2NJrwpJPFuQZqr4UZpp/
 /PU7jXsb0v2Vub/vnu1jL2hb86LARStzgkolY+q65Lw4ZuW0iqMhr54JZ27ytM3YzaxVsunW
 Zf7T6ScyLrkrsRRnJBpqMRcVJwIA572xSigDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xe7pNl4JiDfY/EbTYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexsrJ/5gKtuhUnLnyiLWBca5qFyMnh4SAicSzrqds
 XYxcHEICSxkl2ps2ATkcQAkpifktShA1whJ/rnVB1XxilGi92MYMkmATMJToPdrHCGKLABXd
 W7qcHaSIWeAVk8Ttef+ZQBLCAm4S6w/cAStiEVCVWD5/OhPIAl4Ba4k9DwIhFshLrN5wAGwm
 p4CNxM7p71lBbCGgkqfv1jNPYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzDEtx37
 uWUHY9e74EOMAhyMSjy8AVuCYoVYE8uKK3MPMUpwMCuJ8E64CBTiTUmsrEotyo8vKs1JLT7E
 aAp000RmKdHkfGD85ZXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRq
 YOS/Vr2+yMnA7Idt0dzZfo12xaV32KeFnW+YMn3Xtrtbwj7O2BLD4ZYUYauktsnQ+Hs+09+n
 /WXSTRuyV+7VX17/evnb+DkrJFq51xga3FRymLLn6kndSzcdbxRuWRAZ+WTvL7PWy/qWr4vM
 J4pMNGFWnmWaP8Xcsqn3uH6BBf/KufOne5TP+K/EUpyRaKjFXFScCAAi0PdthwIAAA==
X-CMS-MailID: 20190813150850eucas1p2aff64b5edb49ffb6626433de1c9e58ec
X-Msg-Generator: CA
X-RootMTR: 20190813150850eucas1p2aff64b5edb49ffb6626433de1c9e58ec
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190813150850eucas1p2aff64b5edb49ffb6626433de1c9e58ec
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150850eucas1p2aff64b5edb49ffb6626433de1c9e58ec@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080854_733965_503CBD67 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Pankaj Dubey <pankaj.dubey@samsung.com>

Exynos SoCs have Chipid, for identification of product IDs and SoC
revisions. This patch intends to provide initialization code for all
these functionalities, at the same time it provides some sysfs entries
for accessing these information to user-space.

This driver uses existing binding for exynos-chipid.

Changes by Bartlomiej:
- fixed return values on errors
- removed bogus kfree_const()
- added missing Exynos4210 EVT0 id
- converted code to use EXYNOS_MASK define
- fixed np use after of_node_put()
- fixed too early use of dev_info()
- made driver fail for unknown SoC-s
- added SPDX tag
- updated Copyrights

Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
[m.szyprowski: for suggestion and code snippet of product_id_to_soc_id]
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
[s.nawrocki: updated copyright date, removed uneeded headers inclusion]
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v2:
 - removed uneeded headers inclusion.
---
 drivers/soc/samsung/Kconfig         |   5 ++
 drivers/soc/samsung/Makefile        |   2 +
 drivers/soc/samsung/exynos-chipid.c | 109 ++++++++++++++++++++++++++++
 3 files changed, 116 insertions(+)
 create mode 100644 drivers/soc/samsung/exynos-chipid.c

diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
index 2186285fda92..2905f5262197 100644
--- a/drivers/soc/samsung/Kconfig
+++ b/drivers/soc/samsung/Kconfig
@@ -7,6 +7,11 @@ menuconfig SOC_SAMSUNG
 
 if SOC_SAMSUNG
 
+config EXYNOS_CHIPID
+	bool "Exynos Chipid controller driver" if COMPILE_TEST
+	depends on ARCH_EXYNOS || COMPILE_TEST
+	select SOC_BUS
+
 config EXYNOS_PMU
 	bool "Exynos PMU controller driver" if COMPILE_TEST
 	depends on ARCH_EXYNOS || ((ARM || ARM64) && COMPILE_TEST)
diff --git a/drivers/soc/samsung/Makefile b/drivers/soc/samsung/Makefile
index 29f294baac6e..3b6a8797416c 100644
--- a/drivers/soc/samsung/Makefile
+++ b/drivers/soc/samsung/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_EXYNOS_CHIPID)	+= exynos-chipid.o
 obj-$(CONFIG_EXYNOS_PMU)	+= exynos-pmu.o
 
 obj-$(CONFIG_EXYNOS_PMU_ARM_DRIVERS)	+= exynos3250-pmu.o exynos4-pmu.o \
diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
new file mode 100644
index 000000000000..bcf691f2b650
--- /dev/null
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Samsung Electronics Co., Ltd.
+ *	      http://www.samsung.com/
+ *
+ * EXYNOS - CHIP ID support
+ * Author: Pankaj Dubey <pankaj.dubey@samsung.com>
+ * Author: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
+ */
+
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+
+#define EXYNOS_SUBREV_MASK	(0xF << 4)
+#define EXYNOS_MAINREV_MASK	(0xF << 0)
+#define EXYNOS_REV_MASK		(EXYNOS_SUBREV_MASK | EXYNOS_MAINREV_MASK)
+#define EXYNOS_MASK		0xFFFFF000
+
+static const struct exynos_soc_id {
+	const char *name;
+	unsigned int id;
+} soc_ids[] = {
+	{ "EXYNOS3250", 0xE3472000 },
+	{ "EXYNOS4210", 0x43200000 },	/* EVT0 revision */
+	{ "EXYNOS4210", 0x43210000 },
+	{ "EXYNOS4212", 0x43220000 },
+	{ "EXYNOS4412", 0xE4412000 },
+	{ "EXYNOS5250", 0x43520000 },
+	{ "EXYNOS5260", 0xE5260000 },
+	{ "EXYNOS5410", 0xE5410000 },
+	{ "EXYNOS5420", 0xE5420000 },
+	{ "EXYNOS5440", 0xE5440000 },
+	{ "EXYNOS5800", 0xE5422000 },
+	{ "EXYNOS7420", 0xE7420000 },
+	{ "EXYNOS5433", 0xE5433000 },
+};
+
+static const char * __init product_id_to_soc_id(unsigned int product_id)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(soc_ids); i++)
+		if ((product_id & EXYNOS_MASK) == soc_ids[i].id)
+			return soc_ids[i].name;
+	return NULL;
+}
+
+int __init exynos_chipid_early_init(void)
+{
+	struct soc_device_attribute *soc_dev_attr;
+	void __iomem *exynos_chipid_base;
+	struct soc_device *soc_dev;
+	struct device_node *root;
+	struct device_node *np;
+	u32 product_id;
+	u32 revision;
+
+	/* look up for chipid node */
+	np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
+	if (!np)
+		return -ENODEV;
+
+	exynos_chipid_base = of_iomap(np, 0);
+	of_node_put(np);
+
+	if (!exynos_chipid_base) {
+		pr_err("Failed to map SoC chipid\n");
+		return -ENXIO;
+	}
+
+	product_id = readl_relaxed(exynos_chipid_base);
+	revision = product_id & EXYNOS_REV_MASK;
+	iounmap(exynos_chipid_base);
+
+	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->family = "Samsung Exynos";
+
+	root = of_find_node_by_path("/");
+	of_property_read_string(root, "model", &soc_dev_attr->machine);
+	of_node_put(root);
+
+	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%x", revision);
+	soc_dev_attr->soc_id = product_id_to_soc_id(product_id);
+	if (!soc_dev_attr->soc_id) {
+		pr_err("Unknown SoC\n");
+		return -ENODEV;
+	}
+
+	/* please note that the actual registration will be deferred */
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		kfree(soc_dev_attr->revision);
+		kfree(soc_dev_attr);
+		return PTR_ERR(soc_dev);
+	}
+
+	/* it is too early to use dev_info() here (soc_dev is NULL) */
+	pr_info("soc soc0: Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
+		soc_dev_attr->soc_id, product_id, revision);
+
+	return 0;
+}
+early_initcall(exynos_chipid_early_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
