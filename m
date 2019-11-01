Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4CEC3F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lJEKrpjNRi+jilpB6d9pgEucgNPnvokICNLsI7x/YRI=; b=DlnwOVOnKeSBYHceZjrW8yEwhB
	5vQTVS3NxtZk6sAO3jcFlnpibwuPdUiQz8SSLj1MtgyMYv8U3kNEXyPmkPrFNCVcMdwA/IePdpPB7
	OSzQecj0v4u58Qw2ORqK6IgGOD21cRepqkGTlOSw0iaU29Eqk+lfMR3+qq9ypXiTGWK8xVEY4I33I
	axqNmfDxXVzRagfJX7Z6KCwoSuaA/Do3+8jf0QIEX/uBATO8CTNhdSX07bJmIluLEzkNaHDOsehbq
	tf0/ZXE8tqYuNIuc0biNbRZCFfI/+AYBNE0R297E9NlkiXPwdJj4sEVf5UdzgPC239AMmMUZtpE3F
	VFecleTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXE6-00061u-JS; Fri, 01 Nov 2019 13:44:30 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXD3-0004jQ-Ht
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572615791;
 bh=ZvRbobq/A3o7unOYL01pPMgbwSptuQGi8SXTyWvKFeA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KnOtTbabCVnfy4poWpfEZJkcZ9+w/nuj9kY6riio9Ce1xjqo5hpHq9b4bOPsJB/vw
 Lq9VIy6y0E7dJJHxdzfCQPSCfdItlHGJmFdJbWxIjtAaFYI0xtuJ3zxAtbsTWQEmV2
 7NgBe1a3JYhynoVgNun823x2v9ULOCB2aSSPfSFI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MGz1f-1iE6jl2up9-00E5nH; Fri, 01 Nov 2019 14:43:10 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Markus Mayer <mmayer@broadcom.com>
Subject: [PATCH 2/4] thermal: Add BCM2711 thermal driver
Date: Fri,  1 Nov 2019 14:42:27 +0100
Message-Id: <1572615749-9524-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:W8Y8TrjXv7DBI+UOhPg3H+lw+29ji7fbc4oPSb9Y3kLSajZq+F9
 6vM7vUP/2p2NtXAKA2x7TYf7cz4NIx5plmG/lt0WoIQ6YzvBQ4uI6kfZtgGRgXw9KIbGYRv
 I4oY9GWGsh+DpA2G/kpO3HD8T65yvclzGp1X4l89ioeqC2FzIN0OzeYVma2iw32Wk8VhU8w
 GemtnKn3nrc7/xc2FKbTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5XyeTRLrFlY=:k9mMXgNrcwECxFFK5SlcSE
 oxFZ6rUMIuMoCArq1DyGiUJ+p8h5lQC5APjN1djYpWuJfyRgOlFtrqdpkGzrVVJg5CFu3xKK6
 /vUyLSRvGQvPmJpExxXaLX9idFGxc6y7JvWAwcZzkbi0NtsYYXVFxsEB9UlUQclyMLxmpE9kD
 RA9aUY97ChtHxmZ99IhZw/DTvnqDroXyqXBrv5DdCkSGH8gFRmciL5BsPK5au+wa1xuuEiu1M
 fbbK7+SPPIJM6DToFRjoAb/jhi2wn7Lqwpo+ImugKFNfhaJLvUZYDZ2TSbvwr+59P7vQJbC8L
 ek8wCUhjlC96gJCxyM6+XCXk2QcPTW+A7DOfZ8IwPyLKJvVKi/lG3f7UuEnpSakYS/JrgFmGU
 GBI0WwfjslQ972Z60zAaojDaoaAbtQXIFdBcPR7vbIH+KozMO3QRlnufiTSD7jnWlq1aZMllK
 GYOYVatHhWjr7eY6L6GzuqReABJvz2npL7HTD4vkg3RzickB4EKEssSOql8x/P0jTL2ROvBmy
 pKqoVc2I5QqjoCm6rmS/WsfeiY6hncROSZq35UhPBpQm0BlZ9TQf3E6HgFBwH7b5gp66NY1K1
 aVmwxqIwVcqWEnTni6C4L3BeOci1fqxmKzHfNOSCjen6Ft/tYMGh5WJfjteA67as/LMk7VWxR
 uW6vPdbhVmMMFOfCuteuRmoigFyjOs0+H2BWo57hFY33aWiJwY8+MZvvRymy1H0xP/Eie59rk
 QNllDA0F/odNpWS0IGayHYaASN0HR3puh2ZKnnUtPLJmM4doSGZFRPs6owIWQDixV3CtdED5O
 VFWwYeBlymygBbrlh/nqHVRRktT+9F9IAjdY2yil3j/FUJvLViq2545Ydk2SmiRcS9tssdLUF
 E0DZDovQKyiAt/YOqQVKhtUIPlEWuFIrzLTZYEFcKEJc9P8MWGlv0sVGC3CfCdMA4vzeAycnD
 8PszgrSa36aXyxy5kGxZOC5RsWwcyAkHqIcCZhCYjzUAHAKS4VAlsBtNgtbkyFKbkpW1jawBH
 LbzE4WKyrnfZyImtd71ZjHEHk0/S48y65Slh1NAtdS6qzEWB2jjAMTb7Bu+LopV82/VFvvLZj
 puH3eT4AN48C1WagFBaxOXKVLLBXzkvy9M3eZoG2GNs5bhr/9ufWLuogjSi/ltHUufP+hseMi
 g+BL/aUe5vCAKYNmHXk9xF78eQrZ0aa+JYVN4JuXRF+HoaFMjN6OvDye5r9rm6dhwvhBreEu/
 fdMdt3V6InXvHbD8q5sULbKt9eSvRdXpGA57d0Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_064325_913111_DD88EB91 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the thermal sensor driver for the Broadcom BCM2711 SoC,
which is placed on the Raspberry Pi 4. The driver only provides
SoC temperature reading so far.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/thermal/broadcom/Kconfig           |   8 ++
 drivers/thermal/broadcom/Makefile          |   1 +
 drivers/thermal/broadcom/bcm2711_thermal.c | 146 +++++++++++++++++++++++++++++
 3 files changed, 155 insertions(+)
 create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c

diff --git a/drivers/thermal/broadcom/Kconfig b/drivers/thermal/broadcom/Kconfig
index cf43e15..b970295 100644
--- a/drivers/thermal/broadcom/Kconfig
+++ b/drivers/thermal/broadcom/Kconfig
@@ -1,4 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config BCM2711_THERMAL
+	tristate "Broadcom AVS RO thermal sensor driver"
+	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on HAS_IOMEM
+	depends on THERMAL_OF
+	help
+	  Support for thermal sensors on Broadcom BCM2711 SoCs.
+
 config BCM2835_THERMAL
 	tristate "Thermal sensors on bcm2835 SoC"
 	depends on ARCH_BCM2835 || COMPILE_TEST
diff --git a/drivers/thermal/broadcom/Makefile b/drivers/thermal/broadcom/Makefile
index 490ab1f..c917b24 100644
--- a/drivers/thermal/broadcom/Makefile
+++ b/drivers/thermal/broadcom/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_BCM2711_THERMAL)		+= bcm2711_thermal.o
 obj-$(CONFIG_BCM2835_THERMAL)		+= bcm2835_thermal.o
 obj-$(CONFIG_BRCMSTB_THERMAL)		+= brcmstb_thermal.o
 obj-$(CONFIG_BCM_NS_THERMAL)		+= ns-thermal.o
diff --git a/drivers/thermal/broadcom/bcm2711_thermal.c b/drivers/thermal/broadcom/bcm2711_thermal.c
new file mode 100644
index 0000000..214a305
--- /dev/null
+++ b/drivers/thermal/broadcom/bcm2711_thermal.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Broadcom AVS RO thermal sensor driver
+ *
+ * based on brcmstb_thermal
+ *
+ * Copyright (C) 2019 Stefan Wahren
+ */
+
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/of_device.h>
+#include <linux/thermal.h>
+
+#include "../thermal_hwmon.h"
+
+#define AVS_RO_TEMP_STATUS		0x00
+ #define AVS_RO_TEMP_STATUS_valid_msk	(BIT(16) | BIT(10))
+ #define AVS_RO_TEMP_STATUS_data_msk	GENMASK(9, 0)
+
+struct bcm2711_thermal_priv {
+	void __iomem *base;
+	struct device *dev;
+	struct clk *clk;
+	struct thermal_zone_device *thermal;
+};
+
+static int bcm2711_get_temp(void *data, int *temp)
+{
+	struct bcm2711_thermal_priv *priv = data;
+	int slope = thermal_zone_get_slope(priv->thermal);
+	int offset = thermal_zone_get_offset(priv->thermal);
+	u32 val;
+	long t;
+
+	val = __raw_readl(priv->base + AVS_RO_TEMP_STATUS);
+
+	if (!(val & AVS_RO_TEMP_STATUS_valid_msk)) {
+		dev_err(priv->dev, "reading not valid\n");
+		return -EIO;
+	}
+
+	val &= AVS_RO_TEMP_STATUS_data_msk;
+
+	/* Convert a HW code to a temperature reading (millidegree celsius) */
+	t = slope * val + offset;
+	if (t < 0)
+		*temp = 0;
+	else
+		*temp = t;
+
+	return 0;
+}
+
+static const struct thermal_zone_of_device_ops bcm2711_thermal_of_ops = {
+	.get_temp	= bcm2711_get_temp,
+};
+
+static const struct of_device_id bcm2711_thermal_id_table[] = {
+	{ .compatible = "brcm,bcm2711-thermal" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, bcm2711_thermal_id_table);
+
+static int bcm2711_thermal_probe(struct platform_device *pdev)
+{
+	struct thermal_zone_device *thermal;
+	struct bcm2711_thermal_priv *priv;
+	struct resource *res;
+	int ret;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	priv->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	priv->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		ret = PTR_ERR(priv->clk);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "could not get clk: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret)
+		return ret;
+
+	priv->dev = &pdev->dev;
+	platform_set_drvdata(pdev, priv);
+
+	thermal = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv,
+						       &bcm2711_thermal_of_ops);
+	if (IS_ERR(thermal)) {
+		ret = PTR_ERR(thermal);
+		dev_err(&pdev->dev, "could not register sensor: %d\n", ret);
+		goto err_clk;
+	}
+
+	priv->thermal = thermal;
+
+	thermal->tzp->no_hwmon = false;
+	ret = thermal_add_hwmon_sysfs(thermal);
+	if (ret)
+		return ret;
+
+	return 0;
+
+err_clk:
+	clk_disable_unprepare(priv->clk);
+
+	return ret;
+}
+
+static int bcm2711_thermal_remove(struct platform_device *pdev)
+{
+	struct bcm2711_thermal_priv *priv = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(priv->clk);
+
+	return 0;
+}
+
+static struct platform_driver bcm2711_thermal_driver = {
+	.probe = bcm2711_thermal_probe,
+	.remove = bcm2711_thermal_remove,
+	.driver = {
+		.name = "bcm2711_thermal",
+		.of_match_table = bcm2711_thermal_id_table,
+	},
+};
+module_platform_driver(bcm2711_thermal_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Stefan Wahren");
+MODULE_DESCRIPTION("Broadcom AVS RO thermal sensor driver");
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
