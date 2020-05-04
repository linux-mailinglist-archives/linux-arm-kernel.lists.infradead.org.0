Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709771C4049
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o1swUKXdqaokHfdzCpiI5kXSpmkrL+A71RKyItJhwxQ=; b=DXHsOUJiQN7g3LfuHYpbAdPxsx
	wsyhGue73iRA3jyeAczsy/jmJBi4a0h/q/fvwuvuBlMP3jilf9uLWSglwvue+5X6SgH9+iu8hxOAo
	fPWoOMmS1CWcf/vIrjrT8kJFkzhqP9dvIxds2hYuf+i5aDXEcvZE1AmaoMN6auFw/LPLX6XNRQ1Uh
	fjAafLkARhjJW3cCesmMAyJtSbLSMwJvXZEvTtZ0pN9d1QK8ZnMteaPPOQZU5MXh1EDPwkrHX83I2
	wCGqmuQqfUEkbXe/h8qtFTNAvLY23P5TqUjYSlJwiphRh0gAmTz61v9iWdFR7zjnds3CN77G3vPs2
	Zvtd67kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeAw-0005fk-N1; Mon, 04 May 2020 16:42:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe7x-0000oy-IL
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:39:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15FDA101E;
 Mon,  4 May 2020 09:39:28 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05D413F68F;
 Mon,  4 May 2020 09:39:26 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 6/9] firmware: arm_scmi: Add Perf notifications support
Date: Mon,  4 May 2020 17:38:52 +0100
Message-Id: <20200504163855.54548-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504163855.54548-1-cristian.marussi@arm.com>
References: <20200504163855.54548-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_093933_731800_AE76E2C5 
X-CRM114-Status: GOOD (  13.78  )
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

Make SCMI Perf protocol register with the notification core.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V6 --> V7
- fixed report.timestamp type
- fixed max_payld_sz initialization
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
 drivers/firmware/arm_scmi/perf.c | 137 +++++++++++++++++++++++++++++--
 include/linux/scmi_protocol.h    |  17 ++++
 2 files changed, 149 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index eadc171e254b..72b0fcb5e40b 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -11,9 +11,11 @@
 #include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/platform_device.h>
 #include <linux/pm_opp.h>
+#include <linux/scmi_protocol.h>
 #include <linux/sort.h>
 
 #include "common.h"
+#include "notify.h"
 
 enum scmi_performance_protocol_cmd {
 	PERF_DOMAIN_ATTRIBUTES = 0x3,
@@ -27,11 +29,6 @@ enum scmi_performance_protocol_cmd {
 	PERF_DESCRIBE_FASTCHANNEL = 0xb,
 };
 
-enum scmi_performance_protocol_notify {
-	PERFORMANCE_LIMITS_CHANGED = 0x0,
-	PERFORMANCE_LEVEL_CHANGED = 0x1,
-};
-
 struct scmi_opp {
 	u32 perf;
 	u32 power;
@@ -86,6 +83,19 @@ struct scmi_perf_notify_level_or_limits {
 	__le32 notify_enable;
 };
 
+struct scmi_perf_limits_notify_payld {
+	__le32 agent_id;
+	__le32 domain_id;
+	__le32 range_max;
+	__le32 range_min;
+};
+
+struct scmi_perf_level_notify_payld {
+	__le32 agent_id;
+	__le32 domain_id;
+	__le32 performance_level;
+};
+
 struct scmi_msg_resp_perf_describe_levels {
 	__le16 num_returned;
 	__le16 num_remaining;
@@ -158,6 +168,11 @@ struct scmi_perf_info {
 	struct perf_dom_info *dom_info;
 };
 
+static enum scmi_performance_protocol_cmd evt_2_cmd[] = {
+	PERF_NOTIFY_LIMITS,
+	PERF_NOTIFY_LEVEL,
+};
+
 static int scmi_perf_attributes_get(const struct scmi_handle *handle,
 				    struct scmi_perf_info *pi)
 {
@@ -488,6 +503,29 @@ static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
 	return scmi_perf_mb_level_get(handle, domain, level, poll);
 }
 
+static int scmi_perf_level_limits_notify(const struct scmi_handle *handle,
+					 u32 domain, int message_id,
+					 bool enable)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_perf_notify_level_or_limits *notify;
+
+	ret = scmi_xfer_get_init(handle, message_id, SCMI_PROTOCOL_PERF,
+				 sizeof(*notify), 0, &t);
+	if (ret)
+		return ret;
+
+	notify = t->tx.buf;
+	notify->domain = cpu_to_le32(domain);
+	notify->notify_enable = enable ? cpu_to_le32(BIT(0)) : 0;
+
+	ret = scmi_do_xfer(handle, t);
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
 static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size)
 {
 	if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)
@@ -710,6 +748,89 @@ static struct scmi_perf_ops perf_ops = {
 	.est_power_get = scmi_dvfs_est_power_get,
 };
 
+static bool scmi_perf_set_notify_enabled(const struct scmi_handle *handle,
+					 u8 evt_id, u32 src_id, bool enable)
+{
+	int ret, cmd_id;
+
+	cmd_id = MAP_EVT_TO_ENABLE_CMD(evt_id, evt_2_cmd);
+	if (cmd_id < 0)
+		return false;
+
+	ret = scmi_perf_level_limits_notify(handle, src_id, cmd_id, enable);
+	if (ret)
+		pr_warn("SCMI Notifications - Proto:%X - FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\n",
+				SCMI_PROTOCOL_PERF, evt_id, src_id, ret);
+
+	return !ret;
+}
+
+static void *scmi_perf_fill_custom_report(const struct scmi_handle *handle,
+					  u8 evt_id, u64 timestamp,
+					  const void *payld, size_t payld_sz,
+					  void *report, u32 *src_id)
+{
+	void *rep = NULL;
+
+	switch (evt_id) {
+	case SCMI_EVENT_PERFORMANCE_LIMITS_CHANGED:
+	{
+		const struct scmi_perf_limits_notify_payld *p = payld;
+		struct scmi_perf_limits_report *r = report;
+
+		if (sizeof(*p) != payld_sz)
+			break;
+
+		r->timestamp = timestamp;
+		r->agent_id = le32_to_cpu(p->agent_id);
+		r->domain_id = le32_to_cpu(p->domain_id);
+		r->range_max = le32_to_cpu(p->range_max);
+		r->range_min = le32_to_cpu(p->range_min);
+		*src_id = r->domain_id;
+		rep = r;
+		break;
+	}
+	case SCMI_EVENT_PERFORMANCE_LEVEL_CHANGED:
+	{
+		const struct scmi_perf_level_notify_payld *p = payld;
+		struct scmi_perf_level_report *r = report;
+
+		if (sizeof(*p) != payld_sz)
+			break;
+
+		r->timestamp = timestamp;
+		r->agent_id = le32_to_cpu(p->agent_id);
+		r->domain_id = le32_to_cpu(p->domain_id);
+		r->performance_level = le32_to_cpu(p->performance_level);
+		*src_id = r->domain_id;
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
+static const struct scmi_event perf_events[] = {
+	{
+		.id = SCMI_EVENT_PERFORMANCE_LIMITS_CHANGED,
+		.max_payld_sz = sizeof(struct scmi_perf_limits_notify_payld),
+		.max_report_sz = sizeof(struct scmi_perf_limits_report),
+	},
+	{
+		.id = SCMI_EVENT_PERFORMANCE_LEVEL_CHANGED,
+		.max_payld_sz = sizeof(struct scmi_perf_level_notify_payld),
+		.max_report_sz = sizeof(struct scmi_perf_level_report),
+	},
+};
+
+static const struct scmi_protocol_event_ops perf_event_ops = {
+	.set_notify_enabled = scmi_perf_set_notify_enabled,
+	.fill_custom_report = scmi_perf_fill_custom_report,
+};
+
 static int scmi_perf_protocol_init(struct scmi_handle *handle)
 {
 	int domain;
@@ -742,6 +863,12 @@ static int scmi_perf_protocol_init(struct scmi_handle *handle)
 			scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
 	}
 
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_PERF, PAGE_SIZE,
+				      &perf_event_ops, perf_events,
+				      ARRAY_SIZE(perf_events),
+				      pinfo->num_domains);
+
 	pinfo->version = version;
 	handle->perf_ops = &perf_ops;
 	handle->perf_priv = pinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index b2fe3bb9871d..832b03ef37c7 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -376,6 +376,8 @@ void scmi_protocol_unregister(int protocol_id);
 /* SCMI Notification API - Custom Event Reports */
 enum scmi_notification_events {
 	SCMI_EVENT_POWER_STATE_CHANGED = 0x0,
+	SCMI_EVENT_PERFORMANCE_LIMITS_CHANGED = 0x0,
+	SCMI_EVENT_PERFORMANCE_LEVEL_CHANGED = 0x1,
 };
 
 struct scmi_power_state_changed_report {
@@ -385,4 +387,19 @@ struct scmi_power_state_changed_report {
 	u32 power_state;
 };
 
+struct scmi_perf_limits_report {
+	u64 timestamp;
+	u32 agent_id;
+	u32 domain_id;
+	u32 range_max;
+	u32 range_min;
+};
+
+struct scmi_perf_level_report {
+	u64 timestamp;
+	u32 agent_id;
+	u32 domain_id;
+	u32 performance_level;
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
