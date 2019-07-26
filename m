Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4367776AD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yubt+GushkkOsigRj5dkWh5jdbQm7/HPe/pqM6n3Kw4=; b=n394AUrEH5H3tH0B93TypBZZXh
	axH7VdbhIjrrhCk54NhHL4hr4+vFYXLMiWAg+FL5M+ysVHnLsYBOoNQ08UrOBqu2nGwNHBwIwmpDQ
	9MukJ+a3/GJ0OlxeM//BykWHMJ97rhNIZWxL4keq1h37YGZHW8QhU+XiJD3h6psShRCugTpDSdCZ7
	rEyKi0THLY0jyCEM1V2ZMXm7g9SJ8I7CDysjgqFoKZ177KSF6pZkRW14J2fZogMZTILZnXJu988MV
	pZOgvvDt6U2vCWUwaWJiiPi+IarHDV1EItx4Sx9biqCBU1FoVlYJCalLv29ZqkphI9sCtMy6Er1QK
	DmhJ7wQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0n5-0006MF-5g; Fri, 26 Jul 2019 14:01:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0lc-0005Or-CD
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:00:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0723615A2;
 Fri, 26 Jul 2019 07:00:16 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F31EF3F694;
 Fri, 26 Jul 2019 07:00:13 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] firmware: arm_scmi: Add RESET protocol in SCMI v2.0
Date: Fri, 26 Jul 2019 14:59:53 +0100
Message-Id: <20190726135954.11078-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135954.11078-1-sudeep.holla@arm.com>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070016_657421_97251B69 
X-CRM114-Status: GOOD (  16.54  )
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

SCMIv2.0 adds a new Reset Management Protocol to manage various reset
states a given device or domain can enter. Device(s) that can be
collectively reset through a common reset signal constitute a reset
domain for the firmware.

A reset domain can be reset autonomously or explicitly through assertion
and de-assertion of the signal. When autonomous reset is chosen, the
firmware is responsible for taking the necessary steps to reset the
domain and to subsequently bring it out of reset. When explicit reset is
chosen, the caller has to specifically assert and then de-assert the
reset signal by issuing two separate RESET commands.

Add the basic SCMI reset infrastructure that can be used by Linux
reset controller driver.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/reset.c  | 231 +++++++++++++++++++++++++++++
 include/linux/scmi_protocol.h      |  26 ++++
 3 files changed, 258 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/reset.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index c47d28d556b6..5f298f00a82e 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -2,5 +2,5 @@
 obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
 scmi-bus-y = bus.o
 scmi-driver-y = driver.o
-scmi-protocols-y = base.o clock.o perf.o power.o sensors.o
+scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
new file mode 100644
index 000000000000..11cb8b5ccf34
--- /dev/null
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Reset Protocol
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include "common.h"
+
+enum scmi_reset_protocol_cmd {
+	RESET_DOMAIN_ATTRIBUTES = 0x3,
+	RESET = 0x4,
+	RESET_NOTIFY = 0x5,
+};
+
+enum scmi_reset_protocol_notify {
+	RESET_ISSUED = 0x0,
+};
+
+#define NUM_RESET_DOMAIN_MASK	0xffff
+#define RESET_NOTIFY_ENABLE	BIT(0)
+
+struct scmi_msg_resp_reset_domain_attributes {
+	__le32 attributes;
+#define SUPPORTS_ASYNC_RESET(x)		((x) & BIT(31))
+#define SUPPORTS_NOTIFY_RESET(x)	((x) & BIT(30))
+	__le32 latency;
+	    u8 name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_msg_reset_domain_reset {
+	__le32 domain_id;
+	__le32 flags;
+#define AUTONOMOUS_RESET	BIT(0)
+#define EXPLICIT_RESET_ASSERT	BIT(1)
+#define ASYNCHRONOUS_RESET	BIT(2)
+	__le32 reset_state;
+#define ARCH_RESET_TYPE		BIT(31)
+#define COLD_RESET_STATE	BIT(0)
+#define ARCH_COLD_RESET		(ARCH_RESET_TYPE | COLD_RESET_STATE)
+};
+
+struct reset_dom_info {
+	bool async_reset;
+	bool reset_notify;
+	u32 latency_us;
+	char name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_reset_info {
+	int num_domains;
+	struct reset_dom_info *dom_info;
+};
+
+static int scmi_reset_attributes_get(const struct scmi_handle *handle,
+				     struct scmi_reset_info *pi)
+{
+	int ret;
+	struct scmi_xfer *t;
+	u32 *attr;
+
+	ret = scmi_xfer_get_init(handle, PROTOCOL_ATTRIBUTES,
+				 SCMI_PROTOCOL_RESET, 0, sizeof(*attr), &t);
+	if (ret)
+		return ret;
+
+	attr = t->rx.buf;
+
+	ret = scmi_do_xfer(handle, t);
+	if (!ret)
+		pi->num_domains = le32_to_cpu(*attr) & NUM_RESET_DOMAIN_MASK;
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
+static int
+scmi_reset_domain_attributes_get(const struct scmi_handle *handle, u32 domain,
+				 struct reset_dom_info *dom_info)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_reset_domain_attributes *attr;
+
+	ret = scmi_xfer_get_init(handle, RESET_DOMAIN_ATTRIBUTES,
+				 SCMI_PROTOCOL_RESET, sizeof(domain),
+				 sizeof(*attr), &t);
+	if (ret)
+		return ret;
+
+	*(__le32 *)t->tx.buf = cpu_to_le32(domain);
+	attr = t->rx.buf;
+
+	ret = scmi_do_xfer(handle, t);
+	if (!ret) {
+		u32 attributes = le32_to_cpu(attr->attributes);
+
+		dom_info->async_reset = SUPPORTS_ASYNC_RESET(attributes);
+		dom_info->reset_notify = SUPPORTS_NOTIFY_RESET(attributes);
+		dom_info->latency_us = le32_to_cpu(attr->latency);
+		if (dom_info->latency_us == U32_MAX)
+			dom_info->latency_us = 0;
+		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+	}
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
+static int scmi_reset_num_domains_get(const struct scmi_handle *handle)
+{
+	struct scmi_reset_info *pi = handle->reset_priv;
+
+	return pi->num_domains;
+}
+
+static char *scmi_reset_name_get(const struct scmi_handle *handle, u32 domain)
+{
+	struct scmi_reset_info *pi = handle->reset_priv;
+	struct reset_dom_info *dom = pi->dom_info + domain;
+
+	return dom->name;
+}
+
+static int scmi_reset_latency_get(const struct scmi_handle *handle, u32 domain)
+{
+	struct scmi_reset_info *pi = handle->reset_priv;
+	struct reset_dom_info *dom = pi->dom_info + domain;
+
+	return dom->latency_us;
+}
+
+static int scmi_domain_reset(const struct scmi_handle *handle, u32 domain,
+			     u32 flags, u32 state)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_reset_domain_reset *dom;
+	struct scmi_reset_info *pi = handle->reset_priv;
+	struct reset_dom_info *rdom = pi->dom_info + domain;
+
+	if (rdom->async_reset)
+		flags |= ASYNCHRONOUS_RESET;
+
+	ret = scmi_xfer_get_init(handle, RESET, SCMI_PROTOCOL_RESET,
+				 sizeof(*dom), 0, &t);
+	if (ret)
+		return ret;
+
+	dom = t->tx.buf;
+	dom->domain_id = cpu_to_le32(domain);
+	dom->flags = cpu_to_le32(flags);
+	dom->domain_id = cpu_to_le32(state);
+
+	if (rdom->async_reset)
+		ret = scmi_do_xfer_with_response(handle, t);
+	else
+		ret = scmi_do_xfer(handle, t);
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
+static int scmi_reset_domain_reset(const struct scmi_handle *handle, u32 domain)
+{
+	return scmi_domain_reset(handle, domain, AUTONOMOUS_RESET,
+				 ARCH_COLD_RESET);
+}
+
+static int
+scmi_reset_domain_assert(const struct scmi_handle *handle, u32 domain)
+{
+	return scmi_domain_reset(handle, domain, EXPLICIT_RESET_ASSERT,
+				 ARCH_COLD_RESET);
+}
+
+static int
+scmi_reset_domain_deassert(const struct scmi_handle *handle, u32 domain)
+{
+	return scmi_domain_reset(handle, domain, 0, ARCH_COLD_RESET);
+}
+
+static struct scmi_reset_ops reset_ops = {
+	.num_domains_get = scmi_reset_num_domains_get,
+	.name_get = scmi_reset_name_get,
+	.latency_get = scmi_reset_latency_get,
+	.reset = scmi_reset_domain_reset,
+	.assert = scmi_reset_domain_assert,
+	.deassert = scmi_reset_domain_deassert,
+};
+
+static int scmi_reset_protocol_init(struct scmi_handle *handle)
+{
+	int domain;
+	u32 version;
+	struct scmi_reset_info *pinfo;
+
+	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);
+
+	dev_dbg(handle->dev, "Reset Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
+	if (!pinfo)
+		return -ENOMEM;
+
+	scmi_reset_attributes_get(handle, pinfo);
+
+	pinfo->dom_info = devm_kcalloc(handle->dev, pinfo->num_domains,
+				       sizeof(*pinfo->dom_info), GFP_KERNEL);
+	if (!pinfo->dom_info)
+		return -ENOMEM;
+
+	for (domain = 0; domain < pinfo->num_domains; domain++) {
+		struct reset_dom_info *dom = pinfo->dom_info + domain;
+
+		scmi_reset_domain_attributes_get(handle, domain, dom);
+	}
+
+	handle->reset_ops = &reset_ops;
+	handle->reset_priv = pinfo;
+
+	return 0;
+}
+
+static int __init scmi_reset_init(void)
+{
+	return scmi_protocol_register(SCMI_PROTOCOL_RESET,
+				      &scmi_reset_protocol_init);
+}
+subsys_initcall(scmi_reset_init);
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index f0f2b53a1dac..881fea47c83d 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -187,6 +187,26 @@ struct scmi_sensor_ops {
 			   u64 *value);
 };
 
+/**
+ * struct scmi_reset_ops - represents the various operations provided
+ *	by SCMI Reset Protocol
+ *
+ * @num_domains_get: get the count of reset domains provided by SCMI
+ * @name_get: gets the name of a reset domain
+ * @latency_get: gets the reset latency for the specified reset domain
+ * @reset: resets the specified reset domain
+ * @assert: explicitly assert reset signal of the specified reset domain
+ * @deassert: explicitly deassert reset signal of the specified reset domain
+ */
+struct scmi_reset_ops {
+	int (*num_domains_get)(const struct scmi_handle *handle);
+	char *(*name_get)(const struct scmi_handle *handle, u32 domain);
+	int (*latency_get)(const struct scmi_handle *handle, u32 domain);
+	int (*reset)(const struct scmi_handle *handle, u32 domain);
+	int (*assert)(const struct scmi_handle *handle, u32 domain);
+	int (*deassert)(const struct scmi_handle *handle, u32 domain);
+};
+
 /**
  * struct scmi_handle - Handle returned to ARM SCMI clients for usage.
  *
@@ -196,6 +216,7 @@ struct scmi_sensor_ops {
  * @perf_ops: pointer to set of performance protocol operations
  * @clk_ops: pointer to set of clock protocol operations
  * @sensor_ops: pointer to set of sensor protocol operations
+ * @reset_ops: pointer to set of reset protocol operations
  * @perf_priv: pointer to private data structure specific to performance
  *	protocol(for internal use only)
  * @clk_priv: pointer to private data structure specific to clock
@@ -204,6 +225,8 @@ struct scmi_sensor_ops {
  *	protocol(for internal use only)
  * @sensor_priv: pointer to private data structure specific to sensors
  *	protocol(for internal use only)
+ * @reset_priv: pointer to private data structure specific to reset
+ *	protocol(for internal use only)
  */
 struct scmi_handle {
 	struct device *dev;
@@ -212,11 +235,13 @@ struct scmi_handle {
 	struct scmi_clk_ops *clk_ops;
 	struct scmi_power_ops *power_ops;
 	struct scmi_sensor_ops *sensor_ops;
+	struct scmi_reset_ops *reset_ops;
 	/* for protocol internal use */
 	void *perf_priv;
 	void *clk_priv;
 	void *power_priv;
 	void *sensor_priv;
+	void *reset_priv;
 };
 
 enum scmi_std_protocol {
@@ -226,6 +251,7 @@ enum scmi_std_protocol {
 	SCMI_PROTOCOL_PERF = 0x13,
 	SCMI_PROTOCOL_CLOCK = 0x14,
 	SCMI_PROTOCOL_SENSOR = 0x15,
+	SCMI_PROTOCOL_RESET = 0x16,
 };
 
 struct scmi_device {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
