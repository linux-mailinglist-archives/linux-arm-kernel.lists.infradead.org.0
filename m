Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0EB15BCC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4073YM/PuMWs3Uth0gHgiPyrnutJMU/eFEqSCTlkSQ0=; b=AVx3Jqn+QyyGdX
	IFDUaKZY14Cz4Rbkom2Sd+8caVUC9mqED2VJ6VZWq1s/Y8Ao7jlhGIfjQnXn1EyH6Zl3IhzLzUEBs
	DFnB6gwgEPvlMRNcHHAklCPct3gspNq4pLmZGdYgnCLZT6BK29vgCOBQwF+Y9eDa+nJbn7xmGWKIX
	lobqpjkEGhg00uc3aas5ggOW5k/8JHILvRAwkSH8VGmZbcjU1WECFMJRbSoyc7oIKGUVp1xkiAoEm
	d5O7WPm9vQYKCV0wB8ZrGesjSnj9jdhBlFjxJTPWbGt4mGdgyz9hRrkRXEZ2pBoODgEfXgTXu+d9m
	PyXGk0WayBzZZ3fRCY3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BhY-0001LL-5Z; Thu, 13 Feb 2020 10:26:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BgO-0000PL-9m
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:25:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01DAP5Ct099890;
 Thu, 13 Feb 2020 04:25:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581589505;
 bh=X8aJwnK9/Rq9p9WYlZ3deL7IAFGJ9rrfhTSu6FbBiW8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ArIHFWX0iZayhzbA+us0MJyIeoAfGXtrESwPqhptoRlSni5n0ksYt7SdI5I1ul+XH
 WwpfR4Nm4+F07XiYK0kTOAz23kHb81FELFl3g5gz9QgPxpX4GvD1MSzIVQHkvzgin8
 xVuQBfK3IsddBHv2c0K1NWiNnqEg6Fce5byh9xnM=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01DAP4Nb019988
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 Feb 2020 04:25:05 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 13
 Feb 2020 04:25:04 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 13 Feb 2020 04:25:04 -0600
Received: from a0393675ula.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01DAOqpZ011317;
 Thu, 13 Feb 2020 04:25:00 -0600
From: Keerthy <j-keerthy@ti.com>
To: <rui.zhang@intel.com>, <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
Subject: [PATCH 2/4] thermal: k3: Add support for bandgap sensors
Date: Thu, 13 Feb 2020 15:54:38 +0530
Message-ID: <20200213102440.20539-3-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213102440.20539-1-j-keerthy@ti.com>
References: <20200213102440.20539-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_022520_529138_F878E508 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bandgap provides current and voltage reference for its internal
circuits and other analog IP blocks. The analog-to-digital
converter (ADC) produces an output value that is proportional
to the silicon temperature.

Currently reading temperatures and trend computing is supported
as there are no active/passive cooling agent supported.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/thermal/Kconfig      |  12 ++
 drivers/thermal/Makefile     |   1 +
 drivers/thermal/k3_bandgap.c | 342 +++++++++++++++++++++++++++++++++++
 3 files changed, 355 insertions(+)
 create mode 100644 drivers/thermal/k3_bandgap.c

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 5a05db5438d6..fa598eddc7ac 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -251,6 +251,18 @@ config IMX_THERMAL
 	  cpufreq is used as the cooling device to throttle CPUs when the
 	  passive trip is crossed.
 
+config K3_THERMAL
+	bool "Texas Instruments K3 thermal support"
+	depends on THERMAL
+	depends on ARCH_K3 || COMPILE_TEST
+	help
+	  If you say yes here you get thermal support for the Texas Instruments
+	  K3 SoC family. The current chip supported is:
+	   - AM654
+
+	  This includes temperature reading functionality and also trend
+	  computation.
+
 config MAX77620_THERMAL
 	tristate "Temperature sensor driver for Maxim MAX77620 PMIC"
 	depends on MFD_MAX77620
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index 9fb88e26fb10..5ad6535139ae 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -28,6 +28,7 @@ thermal_sys-$(CONFIG_CLOCK_THERMAL)	+= clock_cooling.o
 # devfreq cooling
 thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
 
+obj-$(CONFIG_K3_THERMAL)	+= k3_bandgap.o
 # platform thermal drivers
 obj-y				+= broadcom/
 obj-$(CONFIG_THERMAL_MMIO)		+= thermal_mmio.o
diff --git a/drivers/thermal/k3_bandgap.c b/drivers/thermal/k3_bandgap.c
new file mode 100644
index 000000000000..00184d2d6ba6
--- /dev/null
+++ b/drivers/thermal/k3_bandgap.c
@@ -0,0 +1,342 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * TI Bandgap temperature sensor driver for K3 SoC Family
+ *
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/pm_runtime.h>
+#include <linux/err.h>
+#include <linux/types.h>
+#include <linux/spinlock.h>
+#include <linux/of_platform.h>
+#include <linux/io.h>
+#include <linux/workqueue.h>
+#include <linux/thermal.h>
+#include <linux/of.h>
+
+#define K3_VTM_DEVINFO_PWR0_OFFSET		0x4
+#define K3_VTM_DEVINFO_PWR0_CVD_CT_MASK	0xf
+#define K3_VTM_DEVINFO_PWR0_TEMPSENS_CT_MASK	0xf0
+#define K3_VTM_TMPSENS0_CTRL_OFFSET	0x80
+#define K3_VTM_REGS_PER_TS			0x10
+#define K3_VTM_TS_STAT_DTEMP_MASK	0x3ff
+#define K3_VTM_MAX_NUM_TS		8
+#define K3_VTM_TMPSENS_CTRL_CBIASSEL	BIT(0)
+#define K3_VTM_TMPSENS_CTRL_SOC		BIT(5)
+#define K3_VTM_TMPSENS_CTRL_CLRZ		BIT(6)
+#define K3_VTM_TMPSENS_CTRL_CLKON_REQ	BIT(7)
+
+#define K3_VTM_ADC_BEGIN_VAL		540
+#define K3_VTM_ADC_END_VAL		944
+
+static const int k3_adc_to_temp[K3_VTM_ADC_END_VAL - K3_VTM_ADC_BEGIN_VAL
+				+ 1] = {
+	-40000, -40000, -40000, -40000, -39800, -39400, -39000, -38600, -38200,
+	-37800, -37400, -37000, -36600, -36200, -35800, -35300, -34700, -34200,
+	-33800, -33400, -33000, -32600, -32200, -31800, -31400, -31000, -30600,
+	-30200, -29800, -29400, -29000, -28600, -28200, -27700, -27100, -26600,
+	-26200, -25800, -25400, -25000, -24600, -24200, -23800, -23400, -23000,
+	-22600, -22200, -21800, -21400, -21000, -20500, -19900, -19400, -19000,
+	-18600, -18200, -17800, -17400, -17000, -16600, -16200, -15800, -15400,
+	-15000, -14600, -14200, -13800, -13400, -13000, -12500, -11900, -11400,
+	-11000, -10600, -10200, -9800, -9400, -9000, -8600, -8200, -7800, -7400,
+	-7000, -6600, -6200, -5800, -5400, -5000, -4500, -3900, -3400, -3000,
+	-2600, -2200, -1800, -1400, -1000, -600, -200, 200, 600, 1000, 1400,
+	1800, 2200, 2600, 3000, 3400, 3900, 4500, 5000, 5400, 5800, 6200, 6600,
+	7000, 7400, 7800, 8200, 8600, 9000, 9400, 9800, 10200, 10600, 11000,
+	11400, 11800, 12200, 12700, 13300, 13800, 14200, 14600, 15000, 15400,
+	15800, 16200, 16600, 17000, 17400, 17800, 18200, 18600, 19000, 19400,
+	19800, 20200, 20600, 21000, 21400, 21900, 22500, 23000, 23400, 23800,
+	24200, 24600, 25000, 25400, 25800, 26200, 26600, 27000, 27400, 27800,
+	28200, 28600, 29000, 29400, 29800, 30200, 30600, 31000, 31400, 31900,
+	32500, 33000, 33400, 33800, 34200, 34600, 35000, 35400, 35800, 36200,
+	36600, 37000, 37400, 37800, 38200, 38600, 39000, 39400, 39800, 40200,
+	40600, 41000, 41400, 41800, 42200, 42600, 43100, 43700, 44200, 44600,
+	45000, 45400, 45800, 46200, 46600, 47000, 47400, 47800, 48200, 48600,
+	49000, 49400, 49800, 50200, 50600, 51000, 51400, 51800, 52200, 52600,
+	53000, 53400, 53800, 54200, 54600, 55000, 55400, 55900, 56500, 57000,
+	57400, 57800, 58200, 58600, 59000, 59400, 59800, 60200, 60600, 61000,
+	61400, 61800, 62200, 62600, 63000, 63400, 63800, 64200, 64600, 65000,
+	65400, 65800, 66200, 66600, 67000, 67400, 67800, 68200, 68600, 69000,
+	69400, 69800, 70200, 70600, 71000, 71500, 72100, 72600, 73000, 73400,
+	73800, 74200, 74600, 75000, 75400, 75800, 76200, 76600, 77000, 77400,
+	77800, 78200, 78600, 79000, 79400, 79800, 80200, 80600, 81000, 81400,
+	81800, 82200, 82600, 83000, 83400, 83800, 84200, 84600, 85000, 85400,
+	85800, 86200, 86600, 87000, 87400, 87800, 88200, 88600, 89000, 89400,
+	89800, 90200, 90600, 91000, 91400, 91800, 92200, 92600, 93000, 93400,
+	93800, 94200, 94600, 95000, 95400, 95800, 96200, 96600, 97000, 97500,
+	98100, 98600, 99000, 99400, 99800, 100200, 100600, 101000, 101400,
+	101800, 102200, 102600, 103000, 103400, 103800, 104200, 104600, 105000,
+	105400, 105800, 106200, 106600, 107000, 107400, 107800, 108200, 108600,
+	109000, 109400, 109800, 110200, 110600, 111000, 111400, 111800, 112200,
+	112600, 113000, 113400, 113800, 114200, 114600, 115000, 115400, 115800,
+	116200, 116600, 117000, 117400, 117800, 118200, 118600, 119000, 119400,
+	119800, 120200, 120600, 121000, 121400, 121800, 122200, 122600, 123000,
+	123400, 123800, 124200, 124600, 124900, 125000,
+};
+
+struct k3_thermal_data;
+
+struct k3_bandgap {
+	struct device *dev;
+	void __iomem *base;
+	const struct k3_bandgap_data *conf;
+	spinlock_t lock; /* shields this struct */
+	int ts_cnt;
+	u32 errata;
+	struct k3_thermal_data *ts_data[K3_VTM_MAX_NUM_TS];
+};
+
+struct k3_vtm_driver_data {
+	u32 errata;
+};
+
+/* common data structures */
+struct k3_thermal_data {
+	struct thermal_zone_device *ti_thermal;
+	struct thermal_cooling_device *cool_dev;
+	struct k3_bandgap *bgp;
+	enum thermal_device_mode mode;
+	struct work_struct thermal_wq;
+	int sensor_id;
+	u32 ctrl_offset;
+	u32 stat_offset;
+	int prev_temp;
+};
+
+static unsigned int vtm_get_best_value(unsigned int s0, unsigned int s1,
+				       unsigned int s2)
+{
+	int d01 = abs(s0 - s1);
+	int d02 = abs(s0 - s2);
+	int d12 = abs(s1 - s2);
+
+	if (d01 <= d02 && d01 <= d12)
+		return (s0 + s1) / 2;
+
+	if (d02 <= d01 && d02 <= d12)
+		return (s0 + s2) / 2;
+
+	return (s1 + s2) / 2;
+}
+
+static int k3_bgp_read_temp(struct k3_thermal_data *devdata,
+			    int *temp)
+{
+	struct k3_bandgap *bgp;
+	unsigned int dtemp, s0, s1, s2;
+
+	bgp = devdata->bgp;
+	/**
+	 * Errata is applicable for am654 pg 1.0 silicon. There
+	 * is a variation of the order for 8-10 degree centigrade.
+	 * Work around that by getting the average of two closest
+	 * readings out of three readings everytime we want to
+	 * report temperatures.
+	 *
+	 * Errata workaround.
+	 */
+
+	if (bgp->errata) {
+		s0 = readl(bgp->base + devdata->stat_offset) &
+			K3_VTM_TS_STAT_DTEMP_MASK;
+		s1 = readl(bgp->base + devdata->stat_offset) &
+			K3_VTM_TS_STAT_DTEMP_MASK;
+		s2 = readl(bgp->base + devdata->stat_offset) &
+			K3_VTM_TS_STAT_DTEMP_MASK;
+		dtemp = vtm_get_best_value(s0, s1, s2);
+	} else {
+		dtemp = readl(bgp->base + devdata->stat_offset) &
+				K3_VTM_TS_STAT_DTEMP_MASK;
+	}
+
+	if (dtemp < K3_VTM_ADC_BEGIN_VAL || dtemp > K3_VTM_ADC_END_VAL)
+		return -EINVAL;
+
+	*temp = k3_adc_to_temp[dtemp - K3_VTM_ADC_BEGIN_VAL];
+
+	return 0;
+}
+
+/* thermal zone ops */
+/* Get temperature callback function for thermal zone */
+static int k3_thermal_get_temp(void *devdata, int *temp)
+{
+	struct k3_thermal_data *data = devdata;
+	int ret = 0;
+
+	ret = k3_bgp_read_temp(data, temp);
+	if (ret)
+		return ret;
+
+	data->prev_temp = *temp;
+
+	return ret;
+}
+
+static int k3_thermal_get_trend(void *p, int trip, enum thermal_trend *trend)
+{
+	struct k3_thermal_data *data = p;
+	struct k3_bandgap *bgp;
+	int ret = 0, temp = 0;
+
+	bgp = data->bgp;
+
+	ret = k3_bgp_read_temp(data, &temp);
+	if (ret)
+		return ret;
+
+	if (temp > data->prev_temp)
+		*trend = THERMAL_TREND_RAISING;
+	else if (temp < data->prev_temp)
+		*trend = THERMAL_TREND_DROPPING;
+	else
+		*trend = THERMAL_TREND_STABLE;
+
+	return 0;
+}
+
+static const struct thermal_zone_of_device_ops k3_of_thermal_ops = {
+	.get_temp = k3_thermal_get_temp,
+	.get_trend = k3_thermal_get_trend,
+};
+
+static void k3_thermal_work(struct work_struct *work)
+{
+	struct k3_thermal_data *data = container_of(work,
+					struct k3_thermal_data, thermal_wq);
+
+	thermal_zone_device_update(data->ti_thermal, THERMAL_EVENT_UNSPECIFIED);
+
+	dev_dbg(&data->ti_thermal->device, "updated thermal zone %s\n",
+		data->ti_thermal->type);
+}
+
+static const struct of_device_id of_k3_bandgap_match[];
+
+static int k3_bandgap_probe(struct platform_device *pdev)
+{
+	int ret = 0, cnt, val, id, reg_cnt = 0;
+	struct resource *res;
+	struct device *dev = &pdev->dev;
+	struct k3_bandgap *bgp;
+	struct k3_thermal_data *data;
+	const struct k3_vtm_driver_data *drv_data;
+
+	bgp = devm_kzalloc(&pdev->dev, sizeof(*bgp), GFP_KERNEL);
+	if (!bgp)
+		return -ENOMEM;
+
+	drv_data = of_device_get_match_data(&pdev->dev);
+	if (drv_data)
+		bgp->errata = drv_data->errata;
+
+	bgp->dev = dev;
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	bgp->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(bgp->base))
+		return PTR_ERR(bgp->base);
+
+	pm_runtime_enable(dev);
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
+		pm_runtime_disable(dev);
+		return ret;
+	}
+
+	/* Get the sensor count in the VTM */
+	val = readl(bgp->base + K3_VTM_DEVINFO_PWR0_OFFSET);
+	cnt = val & K3_VTM_DEVINFO_PWR0_TEMPSENS_CT_MASK;
+	cnt >>= __ffs(K3_VTM_DEVINFO_PWR0_TEMPSENS_CT_MASK);
+	bgp->ts_cnt = cnt;
+
+	data = devm_kcalloc(bgp->dev, cnt, sizeof(*data), GFP_KERNEL);
+	if (!data) {
+		ret = -ENOMEM;
+		goto err_alloc;
+	}
+
+	/* Register the thermal sensors */
+	for (id = 0; id < cnt; id++) {
+		data[id].sensor_id = id;
+		data[id].bgp = bgp;
+		data[id].ctrl_offset = K3_VTM_TMPSENS0_CTRL_OFFSET +
+					id * K3_VTM_REGS_PER_TS;
+		data[id].stat_offset = data[id].ctrl_offset + 0x8;
+		INIT_WORK(&data[id].thermal_wq, k3_thermal_work);
+
+		val = readl(data[id].bgp->base + data[id].ctrl_offset);
+		val |= (K3_VTM_TMPSENS_CTRL_SOC |
+			K3_VTM_TMPSENS_CTRL_CLRZ |
+			K3_VTM_TMPSENS_CTRL_CLKON_REQ);
+		val &= ~K3_VTM_TMPSENS_CTRL_CBIASSEL;
+		writel(val, data[id].bgp->base + data[id].ctrl_offset);
+
+		bgp->ts_data[id] = &data[id];
+		data[id].ti_thermal =
+		devm_thermal_zone_of_sensor_register(bgp->dev, id,
+						     &data[id],
+						     &k3_of_thermal_ops);
+		if (IS_ERR(data[id].ti_thermal)) {
+			dev_err(bgp->dev, "thermal zone device is NULL\n");
+			ret = PTR_ERR(data[id].ti_thermal);
+			goto err_alloc;
+		}
+
+		reg_cnt++;
+
+		/* Initialize Previous temp */
+		k3_thermal_get_temp(&data[id], &data[id].prev_temp);
+	}
+
+	platform_set_drvdata(pdev, bgp);
+
+	return 0;
+
+err_alloc:
+	pm_runtime_put_sync(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
+	return ret;
+}
+
+static int k3_bandgap_remove(struct platform_device *pdev)
+{
+	pm_runtime_put_sync(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
+static const struct k3_vtm_driver_data am654_data = {
+	.errata = 1,
+};
+
+static const struct of_device_id of_k3_bandgap_match[] = {
+	{
+		.compatible = "ti,am654-vtm",
+		.data = &am654_data,
+	},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, of_k3_bandgap_match);
+
+static struct platform_driver k3_bandgap_sensor_driver = {
+	.probe = k3_bandgap_probe,
+	.remove = k3_bandgap_remove,
+	.driver = {
+		.name = "k3-soc-thermal",
+		.of_match_table	= of_k3_bandgap_match,
+	},
+};
+
+module_platform_driver(k3_bandgap_sensor_driver);
+
+MODULE_DESCRIPTION("K3 bandgap temperature sensor driver");
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("J Keerthy <j-keerthy@ti.com>");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
