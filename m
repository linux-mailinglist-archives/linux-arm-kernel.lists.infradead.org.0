Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B02A1C4098
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6Ky+Aqes+0nyQ4iSiZVCSMV/sZ5Aq580s0EL+5GGB34=; b=p7r7/ASsFjY1VLMJLzFqnrpPfP
	L4rqecK8QSMWQ8zE6SkoGssisZjuJWKWneJTRTLNDjWA3r78idSpOTNyvuFsAXHA1h36G4kF2oN2q
	+mUCfqZdsM23M9yyKDv7rmdo8lvBvBLFXZssypQwzO2OO2imoTLs6TZqTGz/LXioRwwFjagAve7tv
	C8goybzSyx9EkFzcw/nKVCRJpRJA3sKApxEXXUBQ6/c10og/59gw4E+eEjaLCBO4A1OsACIKDJhfM
	n5e+c0OS93w88fE2uUY81WsmUG/by0bnvQvsOk8gyGDfEPpODATzwvaRwcxGewbp7mBJMhRnSToRw
	WRcFQYZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeOZ-0001dl-4K; Mon, 04 May 2020 16:56:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeO6-0001Rl-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:56:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 331AC1045;
 Mon,  4 May 2020 09:56:12 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B3BF3F68F;
 Mon,  4 May 2020 09:56:11 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] firmware: arm_scmi: Add System Power Protocol support
Date: Mon,  4 May 2020 17:55:38 +0100
Message-Id: <20200504165540.37188-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504165540.37188-1-cristian.marussi@arm.com>
References: <20200504165540.37188-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_095614_428012_D403695D 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bare protocol support for SCMI SystemPower as needed by an OSPM agent:
basic initialization and SYSTEM_POWER_STATE_NOTIFIER core notification
support.

No event-handling logic is attached to such notification by this commit.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V1 --> V2
- use common event enums
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/system.c | 145 +++++++++++++++++++++++++++++
 include/linux/scmi_protocol.h      |  18 ++++
 3 files changed, 164 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/system.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index d55612362d65..e01b67bc74b4 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -5,5 +5,5 @@ scmi-driver-y = driver.o notify.o
 scmi-transport-y = shmem.o
 scmi-transport-$(CONFIG_MAILBOX) += mailbox.o
 scmi-transport-$(CONFIG_HAVE_ARM_SMCCC) += smc.o
-scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
+scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o system.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/system.c b/drivers/firmware/arm_scmi/system.c
new file mode 100644
index 000000000000..4df93fc97887
--- /dev/null
+++ b/drivers/firmware/arm_scmi/system.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) System Power Protocol
+ *
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#include <linux/scmi_protocol.h>
+
+#include "common.h"
+#include "notify.h"
+
+#define SCMI_SYSTEM_NUM_SOURCES		1
+
+enum scmi_system_protocol_cmd {
+	SYSTEM_POWER_STATE_NOTIFY = 0x5,
+};
+
+struct scmi_system_power_state_notify {
+	__le32 notify_enable;
+};
+
+struct scmi_system_power_state_notifier_payld {
+	__le32 agent_id;
+	__le32 flags;
+	__le32 system_state;
+};
+
+struct scmi_system_info {
+	u32 version;
+};
+
+static int scmi_system_request_notify(const struct scmi_handle *handle,
+				      bool enable)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_system_power_state_notify *notify;
+
+	ret = scmi_xfer_get_init(handle, SYSTEM_POWER_STATE_NOTIFY,
+				 SCMI_PROTOCOL_SYSTEM, sizeof(*notify), 0, &t);
+	if (ret)
+		return ret;
+
+	notify = t->tx.buf;
+	notify->notify_enable = enable ? cpu_to_le32(BIT(0)) : 0;
+
+	ret = scmi_do_xfer(handle, t);
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
+static bool scmi_system_set_notify_enabled(const struct scmi_handle *handle,
+					   u8 evt_id, u32 src_id, bool enable)
+{
+	int ret;
+
+	ret = scmi_system_request_notify(handle, enable);
+	if (ret)
+		pr_warn("SCMI Notifications - Proto:%X - FAIL_ENABLE - evt[%X] - ret:%d\n",
+				SCMI_PROTOCOL_SYSTEM, evt_id, ret);
+
+	return !ret;
+}
+
+static void *scmi_system_fill_custom_report(const struct scmi_handle *handle,
+					    u8 evt_id, u64 timestamp,
+					    const void *payld, size_t payld_sz,
+					    void *report, u32 *src_id)
+{
+	void *rep = NULL;
+
+	switch (evt_id) {
+	case SCMI_EVENT_SYSTEM_POWER_STATE_NOTIFIER:
+	{
+		const struct scmi_system_power_state_notifier_payld *p = payld;
+		struct scmi_system_power_state_notifier_report *r = report;
+
+		if (sizeof(*p) != payld_sz)
+			break;
+
+		r->timestamp = timestamp;
+		r->agent_id = le32_to_cpu(p->agent_id);
+		r->flags = le32_to_cpu(p->flags);
+		r->system_state = le32_to_cpu(p->system_state);
+		*src_id = 0;
+		rep = r;
+		break;
+	}
+	default:
+		break;
+	}
+
+	return rep;
+}
+
+static const struct scmi_event system_events[] = {
+	{
+		.id = SCMI_EVENT_SYSTEM_POWER_STATE_NOTIFIER,
+		.max_payld_sz =
+			sizeof(struct scmi_system_power_state_notifier_payld),
+		.max_report_sz =
+			sizeof(struct scmi_system_power_state_notifier_report),
+	},
+};
+
+static const struct scmi_protocol_event_ops system_event_ops = {
+	.set_notify_enabled = scmi_system_set_notify_enabled,
+	.fill_custom_report = scmi_system_fill_custom_report,
+};
+
+static int scmi_system_protocol_init(struct scmi_handle *handle)
+{
+	u32 version;
+	struct scmi_system_info *pinfo;
+
+	scmi_version_get(handle, SCMI_PROTOCOL_SYSTEM, &version);
+
+	dev_dbg(handle->dev, "System Power Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
+	if (!pinfo)
+		return -ENOMEM;
+
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_SYSTEM, PAGE_SIZE,
+				      &system_event_ops,
+				      system_events,
+				      ARRAY_SIZE(system_events),
+				      SCMI_SYSTEM_NUM_SOURCES);
+
+	pinfo->version = version;
+	handle->system_priv = pinfo;
+
+	return 0;
+}
+
+static int __init scmi_system_init(void)
+{
+	return scmi_protocol_register(SCMI_PROTOCOL_SYSTEM,
+				      &scmi_system_protocol_init);
+}
+subsys_initcall(scmi_system_init);
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index bb858d329dae..c931df68326d 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -290,6 +290,7 @@ struct scmi_handle {
 	void *sensor_priv;
 	void *reset_priv;
 	void *notify_priv;
+	void *system_priv;
 };
 
 enum scmi_std_protocol {
@@ -302,6 +303,15 @@ enum scmi_std_protocol {
 	SCMI_PROTOCOL_RESET = 0x16,
 };
 
+enum scmi_system_events {
+	SCMI_SYSTEM_SHUTDOWN,
+	SCMI_SYSTEM_COLDRESET,
+	SCMI_SYSTEM_WARMRESET,
+	SCMI_SYSTEM_POWERUP,
+	SCMI_SYSTEM_SUSPEND,
+	SCMI_SYSTEM_MAX
+};
+
 struct scmi_device {
 	u32 id;
 	u8 protocol_id;
@@ -376,6 +386,7 @@ enum scmi_notification_events {
 	SCMI_EVENT_SENSOR_TRIP_POINT_EVENT = 0x0,
 	SCMI_EVENT_RESET_ISSUED = 0x0,
 	SCMI_EVENT_BASE_ERROR_EVENT = 0x0,
+	SCMI_EVENT_SYSTEM_POWER_STATE_NOTIFIER = 0x0,
 };
 
 struct scmi_power_state_changed_report {
@@ -385,6 +396,13 @@ struct scmi_power_state_changed_report {
 	u32 power_state;
 };
 
+struct scmi_system_power_state_notifier_report {
+	u64 timestamp;
+	u32 agent_id;
+	u32 flags;
+	u32 system_state;
+};
+
 struct scmi_perf_limits_report {
 	u64 timestamp;
 	u32 agent_id;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
