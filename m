Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0247818D4FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cPesf/QSKshmbm6fntX+tF7gvDPwUcpp7A3KxRKSr0=; b=n5RWn8cAlf0kvn
	XL1ybO5ccgtZI8E9XCPk9ZJO0lwZK8dLHV0vYM5whQKkvhvQ1fNh3NbhT3SPqfyqfWcp/SpX6sjqL
	DNYAjx3XwwWkoIR0WZ/VuW1LWINDWSGCvOXYl8VXO3PSh9VK3C0IdtlbCYBkEMOoUG92REUwKr/M0
	eQ7D8iIW5NqDG/xIeJFm3ntRAgAI9YIFGxs6rX67DoeBmtk3O7zKjIZUr5NpeB0Rbb1zU/iE9v10Y
	442GHV5f/Bh5UUvXEfWJ7snFbGkJTBDCH3c6zwA++BNp4+NhU32Xo5wnyrs2wFR2blLUi9M/Pv6Kc
	HFlmQE5akf6blujewckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKuN-0003cN-5O; Fri, 20 Mar 2020 16:54:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtR-00033O-4J
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id d25so3538697pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hXZj3durdtqx1oD/4UmE9TfFNUArXoxC6KBNXH8TdRk=;
 b=K2qQUAGvs/RdBYhSV4xvCxrlVIrlqsSOQKKI8umSy9IfMvij+m6Rcq4gQ7XxE99iTb
 wVEInfir6EKMyKlR0G//kfI4dtGwWG0U7GVAWPzPYN/Vykdz4i/Knq1I4GGFXvVPbp9z
 8NrS4ZXF+qpqB6COppe2E5EgpA8KytwN4cx5Jz1SlYUnAOaihKKVbRvsRUnLhoy9eTWz
 sBoIldnRa0chXtCstpT6dVEDH7rr4ln6P6KOpgwT0yJCvr6bS3rVmoc6vbgWFjf9BoFr
 G7WMZ460qTeQxOCb6yVCtJE2ML6dc6gcE8FvSGG7ghn0ecUya0TUifb0HlV1Uqsvlycm
 hG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hXZj3durdtqx1oD/4UmE9TfFNUArXoxC6KBNXH8TdRk=;
 b=cLvf6Qj/plgmOTn/QJT//ItDHDH4GSYDuoXCaw4Ixws5USYmD/t5I8pSgRh1a6vyDo
 9x9QmEWuWcLEXIAv7QDrW0Xsj8UDMrXjde3NJ1xA7WjnQ9CIjdtik0bUAwPI/yH04kx7
 hcb6kF6Tqs81LCUxliaZmwc2rO2yWY3OnGoA0dkhhTvdQhvcVg/kX+dxLgz8dlfj2Bp8
 ynPF4fT/Ul3WLBSZdla/u84fJxERamSvINVEmqIgad09VqUVxzPxtvxQl8A4tnikTVbN
 vsaKCeHX/S34i912cQFknshSChPpu+mgqAxWkLqc4SenC/s6FueYhAPJj2XjWSGisKbi
 Dasg==
X-Gm-Message-State: ANhLgQ2JP2s+3Y95yxrKSotnHkOqNRjxoiO2zn24c5AzmlQpKhGJGbtA
 1P8WW6ox/aPLiKzey/M4l19DPg==
X-Google-Smtp-Source: ADFU+vunvrGxatVPc06mb1iLGUMLOuox1fTdHAgAWo6/uzee6kZXkKelp9EKTYMzIv2g/uiX27kypA==
X-Received: by 2002:aa7:94b9:: with SMTP id a25mr10865753pfl.193.1584723186215; 
 Fri, 20 Mar 2020 09:53:06 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:05 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 01/12] coresight: cti: Initial CoreSight CTI Driver
Date: Fri, 20 Mar 2020 10:52:52 -0600
Message-Id: <20200320165303.13681-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095309_182277_2650BB16 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

This introduces a baseline CTI driver and associated configuration files.

Uses the platform agnostic naming standard for CoreSight devices, along
with a generic platform probing method that currently supports device
tree descriptions, but allows for the ACPI bindings to be added once these
have been defined for the CTI devices.

Driver will probe for the device on the AMBA bus, and load the CTI driver
on CoreSight ID match to CTI IDs in tables.

Initial sysfs support for enable / disable provided.

Default CTI interconnection data is generated based on hardware
register signal counts, with no additional connection information.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/Kconfig           |  12 +
 drivers/hwtracing/coresight/Makefile          |   3 +
 .../coresight/coresight-cti-platform.c        |  53 +++
 .../hwtracing/coresight/coresight-cti-sysfs.c |  83 ++++
 drivers/hwtracing/coresight/coresight-cti.c   | 446 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.h   | 186 ++++++++
 drivers/hwtracing/coresight/coresight.c       |   3 +
 include/linux/coresight.h                     |  23 +
 8 files changed, 809 insertions(+)
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-platform.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-sysfs.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.h

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 6ff30e25af55..45d3822c8c8c 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -110,4 +110,16 @@ config CORESIGHT_CPU_DEBUG
 	  properly, please refer Documentation/trace/coresight-cpu-debug.rst
 	  for detailed description and the example for usage.
 
+config CORESIGHT_CTI
+	bool "CoreSight Cross Trigger Interface (CTI) driver"
+	depends on ARM || ARM64
+	help
+	  This driver provides support for CoreSight CTI and CTM components.
+	  These provide hardware triggering events between CoreSight trace
+	  source and sink components. These can be used to halt trace or
+	  inject events into the trace stream. CTI also provides a software
+	  control to trigger the same halt events. This can provide fast trace
+	  halt compared to disabling sources and sinks normally in driver
+	  software.
+
 endif
diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index 3c0ac421e211..0e3e72f0f510 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -17,3 +17,6 @@ obj-$(CONFIG_CORESIGHT_SOURCE_ETM4X) += coresight-etm4x.o \
 obj-$(CONFIG_CORESIGHT_STM) += coresight-stm.o
 obj-$(CONFIG_CORESIGHT_CPU_DEBUG) += coresight-cpu-debug.o
 obj-$(CONFIG_CORESIGHT_CATU) += coresight-catu.o
+obj-$(CONFIG_CORESIGHT_CTI) += coresight-cti.o \
+				coresight-cti-platform.o \
+				coresight-cti-sysfs.o
diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
new file mode 100644
index 000000000000..665be86c585d
--- /dev/null
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019, The Linaro Limited. All rights reserved.
+ */
+
+#include <linux/of.h>
+
+#include "coresight-cti.h"
+
+/* get the hardware configuration & connection data. */
+int cti_plat_get_hw_data(struct device *dev,
+			 struct cti_drvdata *drvdata)
+{
+	int rc = 0;
+	struct cti_device *cti_dev = &drvdata->ctidev;
+
+	/* if no connections, just add a single default based on max IN-OUT */
+	if (cti_dev->nr_trig_con == 0)
+		rc = cti_add_default_connection(dev, drvdata);
+	return rc;
+}
+
+struct coresight_platform_data *
+coresight_cti_get_platform_data(struct device *dev)
+{
+	int ret = -ENOENT;
+	struct coresight_platform_data *pdata = NULL;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev);
+
+	if (IS_ERR_OR_NULL(fwnode))
+		goto error;
+
+	/*
+	 * Alloc platform data but leave it zero init. CTI does not use the
+	 * same connection infrastructuree as trace path components but an
+	 * empty struct enables us to use the standard coresight component
+	 * registration code.
+	 */
+	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata) {
+		ret = -ENOMEM;
+		goto error;
+	}
+
+	/* get some CTI specifics */
+	ret = cti_plat_get_hw_data(dev, drvdata);
+
+	if (!ret)
+		return pdata;
+error:
+	return ERR_PTR(ret);
+}
diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
new file mode 100644
index 000000000000..6d2790568071
--- /dev/null
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Linaro Limited, All rights reserved.
+ * Author: Mike Leach <mike.leach@linaro.org>
+ */
+
+#include <linux/coresight.h>
+
+#include "coresight-cti.h"
+
+/* basic attributes */
+static ssize_t enable_show(struct device *dev,
+			   struct device_attribute *attr,
+			   char *buf)
+{
+	int enable_req;
+	bool enabled, powered;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	enable_req = atomic_read(&drvdata->config.enable_req_count);
+	spin_lock(&drvdata->spinlock);
+	powered = drvdata->config.hw_powered;
+	enabled = drvdata->config.hw_enabled;
+	spin_unlock(&drvdata->spinlock);
+
+	if (powered)
+		return sprintf(buf, "%d\n", enabled);
+	else
+		return sprintf(buf, "%d\n", !!enable_req);
+}
+
+static ssize_t enable_store(struct device *dev,
+			    struct device_attribute *attr,
+			    const char *buf, size_t size)
+{
+	int ret = 0;
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	ret = kstrtoul(buf, 0, &val);
+	if (ret)
+		return ret;
+
+	if (val)
+		ret = cti_enable(drvdata->csdev);
+	else
+		ret = cti_disable(drvdata->csdev);
+	if (ret)
+		return ret;
+	return size;
+}
+static DEVICE_ATTR_RW(enable);
+
+static ssize_t powered_show(struct device *dev,
+			    struct device_attribute *attr,
+			    char *buf)
+{
+	bool powered;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	spin_lock(&drvdata->spinlock);
+	powered = drvdata->config.hw_powered;
+	spin_unlock(&drvdata->spinlock);
+
+	return sprintf(buf, "%d\n", powered);
+}
+static DEVICE_ATTR_RO(powered);
+
+/* attribute and group sysfs tables. */
+static struct attribute *coresight_cti_attrs[] = {
+	&dev_attr_enable.attr,
+	&dev_attr_powered.attr,
+	NULL,
+};
+
+static const struct attribute_group coresight_cti_group = {
+	.attrs = coresight_cti_attrs,
+};
+
+const struct attribute_group *coresight_cti_groups[] = {
+	&coresight_cti_group,
+	NULL,
+};
diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
new file mode 100644
index 000000000000..c71b72d12534
--- /dev/null
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -0,0 +1,446 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 Linaro Limited, All rights reserved.
+ * Author: Mike Leach <mike.leach@linaro.org>
+ */
+
+#include "coresight-cti.h"
+
+/**
+ * CTI devices can be associated with a PE, or be connected to CoreSight
+ * hardware. We have a list of all CTIs irrespective of CPU bound or
+ * otherwise.
+ *
+ * We assume that the non-CPU CTIs are always powered as we do with sinks etc.
+ *
+ * We leave the client to figure out if all the CTIs are interconnected with
+ * the same CTM, in general this is the case but does not always have to be.
+ */
+
+/* net of CTI devices connected via CTM */
+LIST_HEAD(ect_net);
+
+/* protect the list */
+static DEFINE_MUTEX(ect_mutex);
+
+#define csdev_to_cti_drvdata(csdev)	\
+	dev_get_drvdata(csdev->dev.parent)
+
+/*
+ * CTI naming. CTI bound to cores will have the name cti_cpu<N> where
+ * N is the CPU ID. System CTIs will have the name cti_sys<I> where I
+ * is an index allocated by order of discovery.
+ *
+ * CTI device name list - for CTI not bound to cores.
+ */
+DEFINE_CORESIGHT_DEVLIST(cti_sys_devs, "cti_sys");
+
+/* write set of regs to hardware - call with spinlock claimed */
+void cti_write_all_hw_regs(struct cti_drvdata *drvdata)
+{
+	struct cti_config *config = &drvdata->config;
+	int i;
+
+	CS_UNLOCK(drvdata->base);
+
+	/* disable CTI before writing registers */
+	writel_relaxed(0, drvdata->base + CTICONTROL);
+
+	/* write the CTI trigger registers */
+	for (i = 0; i < config->nr_trig_max; i++) {
+		writel_relaxed(config->ctiinen[i], drvdata->base + CTIINEN(i));
+		writel_relaxed(config->ctiouten[i],
+			       drvdata->base + CTIOUTEN(i));
+	}
+
+	/* other regs */
+	writel_relaxed(config->ctigate, drvdata->base + CTIGATE);
+	writel_relaxed(config->asicctl, drvdata->base + ASICCTL);
+	writel_relaxed(config->ctiappset, drvdata->base + CTIAPPSET);
+
+	/* re-enable CTI */
+	writel_relaxed(1, drvdata->base + CTICONTROL);
+
+	CS_LOCK(drvdata->base);
+}
+
+static void cti_enable_hw_smp_call(void *info)
+{
+	struct cti_drvdata *drvdata = info;
+
+	cti_write_all_hw_regs(drvdata);
+}
+
+/* write regs to hardware and enable */
+static int cti_enable_hw(struct cti_drvdata *drvdata)
+{
+	struct cti_config *config = &drvdata->config;
+	struct device *dev = &drvdata->csdev->dev;
+	int rc = 0;
+
+	pm_runtime_get_sync(dev->parent);
+	spin_lock(&drvdata->spinlock);
+
+	/* no need to do anything if enabled or unpowered*/
+	if (config->hw_enabled || !config->hw_powered)
+		goto cti_state_unchanged;
+
+	/* claim the device */
+	rc = coresight_claim_device(drvdata->base);
+	if (rc)
+		goto cti_err_not_enabled;
+
+	if (drvdata->ctidev.cpu >= 0) {
+		rc = smp_call_function_single(drvdata->ctidev.cpu,
+					      cti_enable_hw_smp_call,
+					      drvdata, 1);
+		if (rc)
+			goto cti_err_not_enabled;
+	} else {
+		cti_write_all_hw_regs(drvdata);
+	}
+
+	config->hw_enabled = true;
+	atomic_inc(&drvdata->config.enable_req_count);
+	spin_unlock(&drvdata->spinlock);
+	return rc;
+
+cti_state_unchanged:
+	atomic_inc(&drvdata->config.enable_req_count);
+
+	/* cannot enable due to error */
+cti_err_not_enabled:
+	spin_unlock(&drvdata->spinlock);
+	pm_runtime_put(dev->parent);
+	return rc;
+}
+
+/* disable hardware */
+static int cti_disable_hw(struct cti_drvdata *drvdata)
+{
+	struct cti_config *config = &drvdata->config;
+	struct device *dev = &drvdata->csdev->dev;
+
+	spin_lock(&drvdata->spinlock);
+
+	/* check refcount - disable on 0 */
+	if (atomic_dec_return(&drvdata->config.enable_req_count) > 0)
+		goto cti_not_disabled;
+
+	/* no need to do anything if disabled or cpu unpowered */
+	if (!config->hw_enabled || !config->hw_powered)
+		goto cti_not_disabled;
+
+	CS_UNLOCK(drvdata->base);
+
+	/* disable CTI */
+	writel_relaxed(0, drvdata->base + CTICONTROL);
+	config->hw_enabled = false;
+
+	coresight_disclaim_device_unlocked(drvdata->base);
+	CS_LOCK(drvdata->base);
+	spin_unlock(&drvdata->spinlock);
+	pm_runtime_put(dev);
+	return 0;
+
+	/* not disabled this call */
+cti_not_disabled:
+	spin_unlock(&drvdata->spinlock);
+	return 0;
+}
+
+/*
+ * Look at the HW DEVID register for some of the HW settings.
+ * DEVID[15:8] - max number of in / out triggers.
+ */
+#define CTI_DEVID_MAXTRIGS(devid_val) ((int) BMVAL(devid_val, 8, 15))
+
+/* DEVID[19:16] - number of CTM channels */
+#define CTI_DEVID_CTMCHANNELS(devid_val) ((int) BMVAL(devid_val, 16, 19))
+
+static void cti_set_default_config(struct device *dev,
+				   struct cti_drvdata *drvdata)
+{
+	struct cti_config *config = &drvdata->config;
+	u32 devid;
+
+	devid = readl_relaxed(drvdata->base + CORESIGHT_DEVID);
+	config->nr_trig_max = CTI_DEVID_MAXTRIGS(devid);
+
+	/*
+	 * no current hardware should exceed this, but protect the driver
+	 * in case of fault / out of spec hw
+	 */
+	if (config->nr_trig_max > CTIINOUTEN_MAX) {
+		dev_warn_once(dev,
+			"Limiting HW MaxTrig value(%d) to driver max(%d)\n",
+			config->nr_trig_max, CTIINOUTEN_MAX);
+		config->nr_trig_max = CTIINOUTEN_MAX;
+	}
+
+	config->nr_ctm_channels = CTI_DEVID_CTMCHANNELS(devid);
+
+	/* Most regs default to 0 as zalloc'ed except...*/
+	config->trig_filter_enable = true;
+	config->ctigate = GENMASK(config->nr_ctm_channels - 1, 0);
+	atomic_set(&config->enable_req_count, 0);
+}
+
+/*
+ * Add a connection entry to the list of connections for this
+ * CTI device.
+ */
+int cti_add_connection_entry(struct device *dev, struct cti_drvdata *drvdata,
+			     struct cti_trig_con *tc,
+			     struct coresight_device *csdev,
+			     const char *assoc_dev_name)
+{
+	struct cti_device *cti_dev = &drvdata->ctidev;
+
+	tc->con_dev = csdev;
+	/*
+	 * Prefer actual associated CS device dev name to supplied value -
+	 * which is likely to be node name / other conn name.
+	 */
+	if (csdev)
+		tc->con_dev_name = dev_name(&csdev->dev);
+	else if (assoc_dev_name != NULL) {
+		tc->con_dev_name = devm_kstrdup(dev,
+						assoc_dev_name, GFP_KERNEL);
+		if (!tc->con_dev_name)
+			return -ENOMEM;
+	}
+	list_add_tail(&tc->node, &cti_dev->trig_cons);
+	cti_dev->nr_trig_con++;
+
+	/* add connection usage bit info to overall info */
+	drvdata->config.trig_in_use |= tc->con_in->used_mask;
+	drvdata->config.trig_out_use |= tc->con_out->used_mask;
+
+	return 0;
+}
+
+/* create a trigger connection with appropriately sized signal groups */
+struct cti_trig_con *cti_allocate_trig_con(struct device *dev, int in_sigs,
+					   int out_sigs)
+{
+	struct cti_trig_con *tc = NULL;
+	struct cti_trig_grp *in = NULL, *out = NULL;
+
+	tc = devm_kzalloc(dev, sizeof(struct cti_trig_con), GFP_KERNEL);
+	if (!tc)
+		return tc;
+
+	in = devm_kzalloc(dev,
+			  offsetof(struct cti_trig_grp, sig_types[in_sigs]),
+			  GFP_KERNEL);
+	if (!in)
+		return NULL;
+
+	out = devm_kzalloc(dev,
+			   offsetof(struct cti_trig_grp, sig_types[out_sigs]),
+			   GFP_KERNEL);
+	if (!out)
+		return NULL;
+
+	tc->con_in = in;
+	tc->con_out = out;
+	tc->con_in->nr_sigs = in_sigs;
+	tc->con_out->nr_sigs = out_sigs;
+	return tc;
+}
+
+/*
+ * Add a default connection if nothing else is specified.
+ * single connection based on max in/out info, no assoc device
+ */
+int cti_add_default_connection(struct device *dev, struct cti_drvdata *drvdata)
+{
+	int ret = 0;
+	int n_trigs = drvdata->config.nr_trig_max;
+	u32 n_trig_mask = GENMASK(n_trigs - 1, 0);
+	struct cti_trig_con *tc = NULL;
+
+	/*
+	 * Assume max trigs for in and out,
+	 * all used, default sig types allocated
+	 */
+	tc = cti_allocate_trig_con(dev, n_trigs, n_trigs);
+	if (!tc)
+		return -ENOMEM;
+
+	tc->con_in->used_mask = n_trig_mask;
+	tc->con_out->used_mask = n_trig_mask;
+	ret = cti_add_connection_entry(dev, drvdata, tc, NULL, "default");
+	return ret;
+}
+
+/** cti ect operations **/
+int cti_enable(struct coresight_device *csdev)
+{
+	struct cti_drvdata *drvdata = csdev_to_cti_drvdata(csdev);
+
+	return cti_enable_hw(drvdata);
+}
+
+int cti_disable(struct coresight_device *csdev)
+{
+	struct cti_drvdata *drvdata = csdev_to_cti_drvdata(csdev);
+
+	return cti_disable_hw(drvdata);
+}
+
+const struct coresight_ops_ect cti_ops_ect = {
+	.enable = cti_enable,
+	.disable = cti_disable,
+};
+
+const struct coresight_ops cti_ops = {
+	.ect_ops = &cti_ops_ect,
+};
+
+/*
+ * Free up CTI specific resources
+ * called by dev->release, need to call down to underlying csdev release.
+ */
+static void cti_device_release(struct device *dev)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_drvdata *ect_item, *ect_tmp;
+
+	mutex_lock(&ect_mutex);
+
+	/* remove from the list */
+	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
+		if (ect_item == drvdata) {
+			list_del(&ect_item->node);
+			break;
+		}
+	}
+	mutex_unlock(&ect_mutex);
+
+	if (drvdata->csdev_release)
+		drvdata->csdev_release(dev);
+}
+
+static int cti_probe(struct amba_device *adev, const struct amba_id *id)
+{
+	int ret = 0;
+	void __iomem *base;
+	struct device *dev = &adev->dev;
+	struct cti_drvdata *drvdata = NULL;
+	struct coresight_desc cti_desc;
+	struct coresight_platform_data *pdata = NULL;
+	struct resource *res = &adev->res;
+
+	/* driver data*/
+	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
+	if (!drvdata) {
+		ret = -ENOMEM;
+		dev_info(dev, "%s, mem err\n", __func__);
+		goto err_out;
+	}
+
+	/* Validity for the resource is already checked by the AMBA core */
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base)) {
+		ret = PTR_ERR(base);
+		dev_err(dev, "%s, remap err\n", __func__);
+		goto err_out;
+	}
+	drvdata->base = base;
+
+	dev_set_drvdata(dev, drvdata);
+
+	/* default CTI device info  */
+	drvdata->ctidev.cpu = -1;
+	drvdata->ctidev.nr_trig_con = 0;
+	drvdata->ctidev.ctm_id = 0;
+	INIT_LIST_HEAD(&drvdata->ctidev.trig_cons);
+
+	spin_lock_init(&drvdata->spinlock);
+
+	/* initialise CTI driver config values */
+	cti_set_default_config(dev, drvdata);
+
+	pdata = coresight_cti_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		dev_err(dev, "coresight_cti_get_platform_data err\n");
+		ret =  PTR_ERR(pdata);
+		goto err_out;
+	}
+
+	/* default to powered - could change on PM notifications */
+	drvdata->config.hw_powered = true;
+
+	/* set up device name - will depend if cpu bound or otherwise */
+	if (drvdata->ctidev.cpu >= 0)
+		cti_desc.name = devm_kasprintf(dev, GFP_KERNEL, "cti_cpu%d",
+					       drvdata->ctidev.cpu);
+	else
+		cti_desc.name = coresight_alloc_device_name(&cti_sys_devs, dev);
+	if (!cti_desc.name) {
+		ret = -ENOMEM;
+		goto err_out;
+	}
+
+	/* set up coresight component description */
+	cti_desc.pdata = pdata;
+	cti_desc.type = CORESIGHT_DEV_TYPE_ECT;
+	cti_desc.subtype.ect_subtype = CORESIGHT_DEV_SUBTYPE_ECT_CTI;
+	cti_desc.ops = &cti_ops;
+	cti_desc.groups = coresight_cti_groups;
+	cti_desc.dev = dev;
+	drvdata->csdev = coresight_register(&cti_desc);
+	if (IS_ERR(drvdata->csdev)) {
+		ret = PTR_ERR(drvdata->csdev);
+		goto err_out;
+	}
+
+	/* add to list of CTI devices */
+	mutex_lock(&ect_mutex);
+	list_add(&drvdata->node, &ect_net);
+	mutex_unlock(&ect_mutex);
+
+	/* set up release chain */
+	drvdata->csdev_release = drvdata->csdev->dev.release;
+	drvdata->csdev->dev.release = cti_device_release;
+
+	/* all done - dec pm refcount */
+	pm_runtime_put(&adev->dev);
+	dev_info(&drvdata->csdev->dev, "CTI initialized\n");
+	return 0;
+
+err_out:
+	return ret;
+}
+
+static struct amba_cs_uci_id uci_id_cti[] = {
+	{
+		/*  CTI UCI data */
+		.devarch	= 0x47701a14, /* CTI v2 */
+		.devarch_mask	= 0xfff0ffff,
+		.devtype	= 0x00000014, /* maj(0x4-debug) min(0x1-ECT) */
+	}
+};
+
+static const struct amba_id cti_ids[] = {
+	CS_AMBA_ID(0x000bb906), /* Coresight CTI (SoC 400), C-A72, C-A57 */
+	CS_AMBA_ID(0x000bb922), /* CTI - C-A8 */
+	CS_AMBA_ID(0x000bb9a8), /* CTI - C-A53 */
+	CS_AMBA_ID(0x000bb9aa), /* CTI - C-A73 */
+	CS_AMBA_UCI_ID(0x000bb9da, uci_id_cti), /* CTI - C-A35 */
+	CS_AMBA_UCI_ID(0x000bb9ed, uci_id_cti), /* Coresight CTI (SoC 600) */
+	{ 0, 0},
+};
+
+static struct amba_driver cti_driver = {
+	.drv = {
+		.name	= "coresight-cti",
+		.owner = THIS_MODULE,
+		.suppress_bind_attrs = true,
+	},
+	.probe		= cti_probe,
+	.id_table	= cti_ids,
+};
+builtin_amba_driver(cti_driver);
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
new file mode 100644
index 000000000000..d0ac90f49544
--- /dev/null
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -0,0 +1,186 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 Linaro Limited, All rights reserved.
+ * Author: Mike Leach <mike.leach@linaro.org>
+ */
+
+#ifndef _CORESIGHT_CORESIGHT_CTI_H
+#define _CORESIGHT_CORESIGHT_CTI_H
+
+#include <asm/local.h>
+#include <linux/spinlock.h>
+#include "coresight-priv.h"
+
+/*
+ * Device registers
+ * 0x000 - 0x144: CTI programming and status
+ * 0xEDC - 0xEF8: CTI integration test.
+ * 0xF00 - 0xFFC: Coresight management registers.
+ */
+/* CTI programming registers */
+#define CTICONTROL		0x000
+#define CTIINTACK		0x010
+#define CTIAPPSET		0x014
+#define CTIAPPCLEAR		0x018
+#define CTIAPPPULSE		0x01C
+#define CTIINEN(n)		(0x020 + (4 * n))
+#define CTIOUTEN(n)		(0x0A0 + (4 * n))
+#define CTITRIGINSTATUS		0x130
+#define CTITRIGOUTSTATUS	0x134
+#define CTICHINSTATUS		0x138
+#define CTICHOUTSTATUS		0x13C
+#define CTIGATE			0x140
+#define ASICCTL			0x144
+/* Integration test registers */
+#define ITCHINACK		0xEDC /* WO CTI CSSoc 400 only*/
+#define ITTRIGINACK		0xEE0 /* WO CTI CSSoc 400 only*/
+#define ITCHOUT			0xEE4 /* WO RW-600 */
+#define ITTRIGOUT		0xEE8 /* WO RW-600 */
+#define ITCHOUTACK		0xEEC /* RO CTI CSSoc 400 only*/
+#define ITTRIGOUTACK		0xEF0 /* RO CTI CSSoc 400 only*/
+#define ITCHIN			0xEF4 /* RO */
+#define ITTRIGIN		0xEF8 /* RO */
+/* management registers */
+#define CTIDEVAFF0		0xFA8
+#define CTIDEVAFF1		0xFAC
+
+/*
+ * CTI CSSoc 600 has a max of 32 trigger signals per direction.
+ * CTI CSSoc 400 has 8 IO triggers - other CTIs can be impl def.
+ * Max of in and out defined in the DEVID register.
+ * - pick up actual number used from .dts parameters if present.
+ */
+#define CTIINOUTEN_MAX		32
+
+/**
+ * Group of related trigger signals
+ *
+ * @nr_sigs: number of signals in the group.
+ * @used_mask: bitmask representing the signal indexes in the group.
+ * @sig_types: array of types for the signals, length nr_sigs.
+ */
+struct cti_trig_grp {
+	int nr_sigs;
+	u32 used_mask;
+	int sig_types[];
+};
+
+/**
+ * Trigger connection - connection between a CTI and other (coresight) device
+ * lists input and output trigger signals for the device
+ *
+ * @con_in: connected CTIIN signals for the device.
+ * @con_out: connected CTIOUT signals for the device.
+ * @con_dev: coresight device connected to the CTI, NULL if not CS device
+ * @con_dev_name: name of connected device (CS or CPU)
+ * @node: entry node in list of connections.
+ */
+struct cti_trig_con {
+	struct cti_trig_grp *con_in;
+	struct cti_trig_grp *con_out;
+	struct coresight_device *con_dev;
+	const char *con_dev_name;
+	struct list_head node;
+};
+
+/**
+ * struct cti_device - description of CTI device properties.
+ *
+ * @nt_trig_con: Number of external devices connected to this device.
+ * @ctm_id: which CTM this device is connected to (by default it is
+ *          assumed there is a single CTM per SoC, ID 0).
+ * @trig_cons: list of connections to this device.
+ * @cpu: CPU ID if associated with CPU, -1 otherwise.
+ */
+struct cti_device {
+	int nr_trig_con;
+	u32 ctm_id;
+	struct list_head trig_cons;
+	int cpu;
+};
+
+/**
+ * struct cti_config - configuration of the CTI device hardware
+ *
+ * @nr_trig_max: Max number of trigger signals implemented on device.
+ *		 (max of trig_in or trig_out) - from ID register.
+ * @nr_ctm_channels: number of available CTM channels - from ID register.
+ * @enable_req_count: CTI is enabled alongside >=1 associated devices.
+ * @hw_enabled: true if hw is currently enabled.
+ * @hw_powered: true if associated cpu powered on, or no cpu.
+ * @trig_in_use: bitfield of in triggers registered as in use.
+ * @trig_out_use: bitfield of out triggers registered as in use.
+ * @trig_out_filter: bitfield of out triggers that are blocked if filter
+ *		     enabled. Typically this would be dbgreq / restart on
+ *		     a core CTI.
+ * @trig_filter_enable: 1 if filtering enabled.
+ * @xtrig_rchan_sel: channel selection for xtrigger connection show.
+ * @ctiappset: CTI Software application channel set.
+ * @ctiinout_sel: register selector for INEN and OUTEN regs.
+ * @ctiinen: enable input trigger to a channel.
+ * @ctiouten: enable output trigger from a channel.
+ * @ctigate: gate channel output from CTI to CTM.
+ * @asicctl: asic control register.
+ */
+struct cti_config {
+	/* hardware description */
+	int nr_ctm_channels;
+	int nr_trig_max;
+
+	/* cti enable control */
+	atomic_t enable_req_count;
+	bool hw_enabled;
+	bool hw_powered;
+
+	/* registered triggers and filtering */
+	u32 trig_in_use;
+	u32 trig_out_use;
+	u32 trig_out_filter;
+	bool trig_filter_enable;
+	u8 xtrig_rchan_sel;
+
+	/* cti cross trig programmable regs */
+	u32 ctiappset;
+	u8 ctiinout_sel;
+	u32 ctiinen[CTIINOUTEN_MAX];
+	u32 ctiouten[CTIINOUTEN_MAX];
+	u32 ctigate;
+	u32 asicctl;
+};
+
+/**
+ * struct cti_drvdata - specifics for the CTI device
+ * @base:	Memory mapped base address for this component..
+ * @csdev:	Standard CoreSight device information.
+ * @ctidev:	Extra information needed by the CTI/CTM framework.
+ * @spinlock:	Control data access to one at a time.
+ * @config:	Configuration data for this CTI device.
+ * @node:	List entry of this device in the list of CTI devices.
+ * @csdev_release: release function for underlying coresight_device.
+ */
+struct cti_drvdata {
+	void __iomem *base;
+	struct coresight_device	*csdev;
+	struct cti_device ctidev;
+	spinlock_t spinlock;
+	struct cti_config config;
+	struct list_head node;
+	void (*csdev_release)(struct device *dev);
+};
+
+/* private cti driver fns & vars */
+extern const struct attribute_group *coresight_cti_groups[];
+int cti_add_default_connection(struct device *dev,
+			       struct cti_drvdata *drvdata);
+int cti_add_connection_entry(struct device *dev, struct cti_drvdata *drvdata,
+			     struct cti_trig_con *tc,
+			     struct coresight_device *csdev,
+			     const char *assoc_dev_name);
+struct cti_trig_con *cti_allocate_trig_con(struct device *dev, int in_sigs,
+					   int out_sigs);
+int cti_enable(struct coresight_device *csdev);
+int cti_disable(struct coresight_device *csdev);
+struct coresight_platform_data *
+coresight_cti_get_platform_data(struct device *dev);
+
+#endif  /* _CORESIGHT_CORESIGHT_CTI_H */
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index ef20f74c85fa..1a5fdf2710ff 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -955,6 +955,9 @@ static struct device_type coresight_dev_type[] = {
 	{
 		.name = "helper",
 	},
+	{
+		.name = "ect",
+	},
 };
 
 static void coresight_device_release(struct device *dev)
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 44e552de419c..b3e582d96a34 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -41,6 +41,7 @@ enum coresight_dev_type {
 	CORESIGHT_DEV_TYPE_LINKSINK,
 	CORESIGHT_DEV_TYPE_SOURCE,
 	CORESIGHT_DEV_TYPE_HELPER,
+	CORESIGHT_DEV_TYPE_ECT,
 };
 
 enum coresight_dev_subtype_sink {
@@ -68,6 +69,12 @@ enum coresight_dev_subtype_helper {
 	CORESIGHT_DEV_SUBTYPE_HELPER_CATU,
 };
 
+/* Embedded Cross Trigger (ECT) sub-types */
+enum coresight_dev_subtype_ect {
+	CORESIGHT_DEV_SUBTYPE_ECT_NONE,
+	CORESIGHT_DEV_SUBTYPE_ECT_CTI,
+};
+
 /**
  * union coresight_dev_subtype - further characterisation of a type
  * @sink_subtype:	type of sink this component is, as defined
@@ -78,6 +85,8 @@ enum coresight_dev_subtype_helper {
  *			by @coresight_dev_subtype_source.
  * @helper_subtype:	type of helper this component is, as defined
  *			by @coresight_dev_subtype_helper.
+ * @ect_subtype:        type of cross trigger this component is, as
+ *			defined by @coresight_dev_subtype_ect
  */
 union coresight_dev_subtype {
 	/* We have some devices which acts as LINK and SINK */
@@ -87,6 +96,7 @@ union coresight_dev_subtype {
 	};
 	enum coresight_dev_subtype_source source_subtype;
 	enum coresight_dev_subtype_helper helper_subtype;
+	enum coresight_dev_subtype_ect ect_subtype;
 };
 
 /**
@@ -196,6 +206,7 @@ static struct coresight_dev_list (var) = {				\
 #define sink_ops(csdev)		csdev->ops->sink_ops
 #define link_ops(csdev)		csdev->ops->link_ops
 #define helper_ops(csdev)	csdev->ops->helper_ops
+#define ect_ops(csdev)		csdev->ops->ect_ops
 
 /**
  * struct coresight_ops_sink - basic operations for a sink
@@ -262,11 +273,23 @@ struct coresight_ops_helper {
 	int (*disable)(struct coresight_device *csdev, void *data);
 };
 
+/**
+ * struct coresight_ops_ect - Ops for an embedded cross trigger device
+ *
+ * @enable	: Enable the device
+ * @disable	: Disable the device
+ */
+struct coresight_ops_ect {
+	int (*enable)(struct coresight_device *csdev);
+	int (*disable)(struct coresight_device *csdev);
+};
+
 struct coresight_ops {
 	const struct coresight_ops_sink *sink_ops;
 	const struct coresight_ops_link *link_ops;
 	const struct coresight_ops_source *source_ops;
 	const struct coresight_ops_helper *helper_ops;
+	const struct coresight_ops_ect *ect_ops;
 };
 
 #ifdef CONFIG_CORESIGHT
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
