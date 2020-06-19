Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A50E200A75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LSlFHM3YbnGU/Q4EXS83muuGcXEQseGqiA1HcgHwiFg=; b=bNigNGmuUlYh4UycPCjTN7J7q9
	lbICKp5kZdh6HPbOipZA0rbbGIr/ugs6/W3pCS2HvgZ2U4czspa7HCWlAwRFLiF1PrNweIQMiUCMo
	o3XjXQWsHsj+nv9s+jFT6bdWwQnAH95asfLg5djEGacVi/94/26ATtyn9Hkjf1irbv6Nh3QE2DG3F
	YkYjKdipWICUabVYWNxJPt1+AuUe0F+bLTewUWXPvI46njIsuFwH//p3qYbBfZ9FY5C0n9c/vGDiu
	4DpiZRlhCBP4KybNntMNs+zvwTwFP+YUdnzifYQW4DnWBt0BX1S/Q3FJKCLsPpSq46dyl1Rzg0Hpa
	yYRNHBKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHHW-0007e6-HP; Fri, 19 Jun 2020 13:42:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHEX-0002vM-NZ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:39:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73FC01477;
 Fri, 19 Jun 2020 06:39:05 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AA9B3F6CF;
 Fri, 19 Jun 2020 06:39:04 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 9/9] firmware: arm_scmi: Add Base notifications support
Date: Fri, 19 Jun 2020 14:38:34 +0100
Message-Id: <20200619133834.18497-10-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619133834.18497-1-cristian.marussi@arm.com>
References: <20200619133834.18497-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_063905_886130_F1DA9048 
X-CRM114-Status: GOOD (  14.50  )
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

Make SCMI Base protocol register with the notification core.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V8 --> V9
- moved pr_info to pr_debug
- removed switch()
- use SCMI_PROTO_QUEUE_SZ
V6 --> V7
- fixed report.timestamp type
- fix max_payld_sz initialization
- fix report layout and initialization
- expose SCMI_EVENT_ in linux/scmi_protocol.h
V5 --> V6
- added handle argument to fill_custom_report()
V4 --> V5
- fixed unsual return construct
V3 --> V4
- scmi_event field renamed
V2 --> V3
- added handle awareness
V1 --> V2
- simplified .set_notify_enabled() implementation moving the ALL_SRCIDs
  logic out of protocol. ALL_SRCIDs logic is now in charge of the
  notification core, together with proper reference counting of enables
- switched to devres protocol-registration
---
 drivers/firmware/arm_scmi/base.c | 109 +++++++++++++++++++++++++++++--
 include/linux/scmi_protocol.h    |   9 +++
 2 files changed, 114 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
index ce7d9203e41b..d5a7878d3fbd 100644
--- a/drivers/firmware/arm_scmi/base.c
+++ b/drivers/firmware/arm_scmi/base.c
@@ -5,7 +5,15 @@
  * Copyright (C) 2018 ARM Ltd.
  */
 
+#define pr_fmt(fmt) "SCMI Notifications BASE - " fmt
+
+#include <linux/scmi_protocol.h>
+
 #include "common.h"
+#include "notify.h"
+
+#define SCMI_BASE_NUM_SOURCES		1
+#define SCMI_BASE_MAX_CMD_ERR_COUNT	1024
 
 enum scmi_base_protocol_cmd {
 	BASE_DISCOVER_VENDOR = 0x3,
@@ -19,16 +27,25 @@ enum scmi_base_protocol_cmd {
 	BASE_RESET_AGENT_CONFIGURATION = 0xb,
 };
 
-enum scmi_base_protocol_notify {
-	BASE_ERROR_EVENT = 0x0,
-};
-
 struct scmi_msg_resp_base_attributes {
 	u8 num_protocols;
 	u8 num_agents;
 	__le16 reserved;
 };
 
+struct scmi_msg_base_error_notify {
+	__le32 event_control;
+#define BASE_TP_NOTIFY_ALL	BIT(0)
+};
+
+struct scmi_base_error_notify_payld {
+	__le32 agent_id;
+	__le32 error_status;
+#define IS_FATAL_ERROR(x)	((x) & BIT(31))
+#define ERROR_CMD_COUNT(x)	FIELD_GET(GENMASK(9, 0), (x))
+	__le64 msg_reports[SCMI_BASE_MAX_CMD_ERR_COUNT];
+};
+
 /**
  * scmi_base_attributes_get() - gets the implementation details
  *	that are associated with the base protocol.
@@ -222,6 +239,84 @@ static int scmi_base_discover_agent_get(const struct scmi_handle *handle,
 	return ret;
 }
 
+static int scmi_base_error_notify(const struct scmi_handle *handle, bool enable)
+{
+	int ret;
+	u32 evt_cntl = enable ? BASE_TP_NOTIFY_ALL : 0;
+	struct scmi_xfer *t;
+	struct scmi_msg_base_error_notify *cfg;
+
+	ret = scmi_xfer_get_init(handle, BASE_NOTIFY_ERRORS,
+				 SCMI_PROTOCOL_BASE, sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	cfg = t->tx.buf;
+	cfg->event_control = cpu_to_le32(evt_cntl);
+
+	ret = scmi_do_xfer(handle, t);
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
+static bool scmi_base_set_notify_enabled(const struct scmi_handle *handle,
+					 u8 evt_id, u32 src_id, bool enable)
+{
+	int ret;
+
+	ret = scmi_base_error_notify(handle, enable);
+	if (ret)
+		pr_debug("FAIL_ENABLED - evt[%X] ret:%d\n", evt_id, ret);
+
+	return !ret;
+}
+
+static void *scmi_base_fill_custom_report(const struct scmi_handle *handle,
+					  u8 evt_id, u64 timestamp,
+					  const void *payld, size_t payld_sz,
+					  void *report, u32 *src_id)
+{
+	int i;
+	const struct scmi_base_error_notify_payld *p = payld;
+	struct scmi_base_error_report *r = report;
+
+
+	/*
+	 * BaseError notification payload is variable in size but
+	 * up to a maximum length determined by the struct ponted by p.
+	 * Instead payld_sz is the effective length of this notification
+	 * payload so cannot be greater of the maximum allowed size as
+	 * pointed by p.
+	 */
+	if (evt_id != SCMI_EVENT_BASE_ERROR_EVENT || sizeof(*p) < payld_sz)
+		return NULL;
+
+	r->timestamp = timestamp;
+	r->agent_id = le32_to_cpu(p->agent_id);
+	r->fatal = IS_FATAL_ERROR(le32_to_cpu(p->error_status));
+	r->cmd_count = ERROR_CMD_COUNT(le32_to_cpu(p->error_status));
+	for (i = 0; i < r->cmd_count; i++)
+		r->reports[i] = le64_to_cpu(p->msg_reports[i]);
+	*src_id = 0;
+
+	return r;
+}
+
+static const struct scmi_event base_events[] = {
+	{
+		.id = SCMI_EVENT_BASE_ERROR_EVENT,
+		.max_payld_sz = sizeof(struct scmi_base_error_notify_payld),
+		.max_report_sz = sizeof(struct scmi_base_error_report) +
+				  SCMI_BASE_MAX_CMD_ERR_COUNT * sizeof(u64),
+	},
+};
+
+static const struct scmi_event_ops base_event_ops = {
+	.set_notify_enabled = scmi_base_set_notify_enabled,
+	.fill_custom_report = scmi_base_fill_custom_report,
+};
+
 int scmi_base_protocol_init(struct scmi_handle *h)
 {
 	int id, ret;
@@ -256,6 +351,12 @@ int scmi_base_protocol_init(struct scmi_handle *h)
 	dev_dbg(dev, "Found %d protocol(s) %d agent(s)\n", rev->num_protocols,
 		rev->num_agents);
 
+	scmi_register_protocol_events(handle, SCMI_PROTOCOL_BASE,
+				      (4 * SCMI_PROTO_QUEUE_SZ),
+				      &base_event_ops, base_events,
+				      ARRAY_SIZE(base_events),
+				      SCMI_BASE_NUM_SOURCES);
+
 	for (id = 0; id < rev->num_agents; id++) {
 		scmi_base_discover_agent_get(handle, id, name);
 		dev_dbg(dev, "Agent %d: %s\n", id, name);
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index d04d66be596d..46d98be92466 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -377,6 +377,7 @@ enum scmi_notification_events {
 	SCMI_EVENT_PERFORMANCE_LEVEL_CHANGED = 0x1,
 	SCMI_EVENT_SENSOR_TRIP_POINT_EVENT = 0x0,
 	SCMI_EVENT_RESET_ISSUED = 0x0,
+	SCMI_EVENT_BASE_ERROR_EVENT = 0x0,
 };
 
 struct scmi_power_state_changed_report {
@@ -415,4 +416,12 @@ struct scmi_reset_issued_report {
 	u32 reset_state;
 };
 
+struct scmi_base_error_report {
+	u64 timestamp;
+	u32 agent_id;
+	bool fatal;
+	u16 cmd_count;
+	u64 reports[0];
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
