Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22358379A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GFry+rj8oFoavg7RmxKZlt8sEssn043Q9CJUrfkXvIo=; b=i23V97ixyBDbiljQ/sy37EjS/q
	nYyiDbcIpJA5MJXGTtMDbDm94Fcg1/foFnPk3aaKtrh1AwWxgs/MA/ji9Nsf9mw9VbeUoHFqxgqXf
	S/8kdWSpVOY0J4W6c0WE9+dtiANjafOClUYKSTBKq1PWHDgbyfe8CM4r6CWFCEfQ0GsHlFggosaXf
	3oxJL46TWVFUYhSeIwxOgQIeM1ekBxkI3PDgQksaL8cx4AdM2/YKrz1gywctw6G2oNfOwZjXVmwJC
	oBpyFGMvWsBvnvbZzOXS87KcoxQkxx5N0/gkkohIwyw6GYl1C9cpFzxmfdi6b4mfiNmjBF/c+Edu0
	9n5KfbwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2rs-0003Yd-HE; Tue, 06 Aug 2019 17:03:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2qy-0002Zw-Hw
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:02:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27D381570;
 Tue,  6 Aug 2019 10:02:28 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 26A3A3F575;
 Tue,  6 Aug 2019 10:02:26 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/5] reset: Add support for resets provided by SCMI
Date: Tue,  6 Aug 2019 18:02:08 +0100
Message-Id: <20190806170208.6787-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806170208.6787-1-sudeep.holla@arm.com>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_100228_717633_DF30828E 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 pajay@qti.qualcomm.com, Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some ARM based systems, a separate Cortex-M based System Control
Processor(SCP) provides the overall power, clock, reset and system
control. System Control and Management Interface(SCMI) Message Protocol
is defined for the communication between the Application Cores(AP)
and the SCP.

Adds support for the resets provided using SCMI protocol for performing
reset management of various devices present on the SoC. Various reset
functionalities are achieved by the means of different ARM SCMI device
operations provided by the ARM SCMI framework.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 MAINTAINERS                |   1 +
 drivers/reset/Kconfig      |  11 ++++
 drivers/reset/Makefile     |   1 +
 drivers/reset/reset-scmi.c | 126 +++++++++++++++++++++++++++++++++++++
 4 files changed, 139 insertions(+)
 create mode 100644 drivers/reset/reset-scmi.c

v1->v2:
	- Renamed RESET_ARM_SCMI to RESET_SCMI and reworded Kconfig text
	- Dropped unused struct device pointer from scmi_reset_data
	- Added to_scmi_handle which helped to remove some repetitive code
	- Fixed some doxygen comments
	- Initialised rcdev.nr_resets
	- Fixed MODULE_DESCRIPTION

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f0..f4af5c59c116 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15545,6 +15545,7 @@ F:	drivers/clk/clk-sc[mp]i.c
 F:	drivers/cpufreq/sc[mp]i-cpufreq.c
 F:	drivers/firmware/arm_scpi.c
 F:	drivers/firmware/arm_scmi/
+F:	drivers/reset/reset-scmi.c
 F:	include/linux/sc[mp]i_protocol.h
 
 SYSTEM RESET/SHUTDOWN DRIVERS
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 21efb7d39d62..4178ac11ba85 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -116,6 +116,17 @@ config RESET_QCOM_PDC
 	  to control reset signals provided by PDC for Modem, Compute,
 	  Display, GPU, Debug, AOP, Sensors, Audio, SP and APPS.
 
+config RESET_SCMI
+	tristate "Reset driver controlled via ARM SCMI interface"
+	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
+	default ARM_SCMI_PROTOCOL
+	help
+	  This driver provides support for reset signal/domains that are
+	  controlled by firmware that implements the SCMI interface.
+
+	  This driver uses SCMI Message Protocol to interact with the
+	  firmware controlling all the reset signals.
+
 config RESET_SIMPLE
 	bool "Simple Reset Controller Driver" if COMPILE_TEST
 	default ARCH_STM32 || ARCH_STRATIX10 || ARCH_SUNXI || ARCH_ZX || ARCH_ASPEED || ARCH_BITMAIN
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 61456b8f659c..cf60ce526064 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_RESET_OXNAS) += reset-oxnas.o
 obj-$(CONFIG_RESET_PISTACHIO) += reset-pistachio.o
 obj-$(CONFIG_RESET_QCOM_AOSS) += reset-qcom-aoss.o
 obj-$(CONFIG_RESET_QCOM_PDC) += reset-qcom-pdc.o
+obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
 obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_RESET_STM32MP157) += reset-stm32mp1.o
 obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
new file mode 100644
index 000000000000..5e976a02a6cc
--- /dev/null
+++ b/drivers/reset/reset-scmi.c
@@ -0,0 +1,126 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ARM System Control and Management Interface (ARM SCMI) reset driver
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+#include <linux/scmi_protocol.h>
+
+/**
+ * struct scmi_reset_data - reset controller information structure
+ * @rcdev: reset controller entity
+ * @handle: ARM SCMI handle used for communication with system controller
+ * @dev: reset controller device pointer
+ */
+struct scmi_reset_data {
+	struct reset_controller_dev rcdev;
+	const struct scmi_handle *handle;
+};
+
+#define to_scmi_reset_data(p)	container_of((p), struct scmi_reset_data, rcdev)
+#define to_scmi_handle(p)	(to_scmi_reset_data(p)->handle)
+
+/**
+ * scmi_reset_assert() - assert device reset
+ * @rcdev: reset controller entity
+ * @id: ID of the reset to be asserted
+ *
+ * This function implements the reset driver op to assert a device's reset
+ * using the ARM SCMI protocol.
+ *
+ * Return: 0 for successful request, else a corresponding error value
+ */
+static int
+scmi_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	const struct scmi_handle *handle = to_scmi_handle(rcdev);
+
+	return handle->reset_ops->assert(handle, id);
+}
+
+/**
+ * scmi_reset_deassert() - deassert device reset
+ * @rcdev: reset controller entity
+ * @id: ID of the reset to be deasserted
+ *
+ * This function implements the reset driver op to deassert a device's reset
+ * using the ARM SCMI protocol.
+ *
+ * Return: 0 for successful request, else a corresponding error value
+ */
+static int
+scmi_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	const struct scmi_handle *handle = to_scmi_handle(rcdev);
+
+	return handle->reset_ops->deassert(handle, id);
+}
+
+/**
+ * scmi_reset_reset() - reset the device
+ * @rcdev: reset controller entity
+ * @id: ID of the reset signal to be reset(assert + deassert)
+ *
+ * This function implements the reset driver op to trigger a device's
+ * reset signal using the ARM SCMI protocol.
+ *
+ * Return: 0 for successful request, else a corresponding error value
+ */
+static int
+scmi_reset_reset(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	const struct scmi_handle *handle = to_scmi_handle(rcdev);
+
+	return handle->reset_ops->reset(handle, id);
+}
+
+static const struct reset_control_ops scmi_reset_ops = {
+	.assert		= scmi_reset_assert,
+	.deassert	= scmi_reset_deassert,
+	.reset		= scmi_reset_reset,
+};
+
+static int scmi_reset_probe(struct scmi_device *sdev)
+{
+	struct scmi_reset_data *data;
+	struct device *dev = &sdev->dev;
+	struct device_node *np = dev->of_node;
+	const struct scmi_handle *handle = sdev->handle;
+
+	if (!handle || !handle->reset_ops)
+		return -ENODEV;
+
+	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->rcdev.ops = &scmi_reset_ops;
+	data->rcdev.owner = THIS_MODULE;
+	data->rcdev.of_node = np;
+	data->rcdev.nr_resets = handle->reset_ops->num_domains_get(handle);
+
+	return devm_reset_controller_register(dev, &data->rcdev);
+}
+
+static const struct scmi_device_id scmi_id_table[] = {
+	{ SCMI_PROTOCOL_RESET },
+	{ },
+};
+MODULE_DEVICE_TABLE(scmi, scmi_id_table);
+
+static struct scmi_driver scmi_reset_driver = {
+	.name = "scmi-reset",
+	.probe = scmi_reset_probe,
+	.id_table = scmi_id_table,
+};
+module_scmi_driver(scmi_reset_driver);
+
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI reset controller driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
