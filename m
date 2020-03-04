Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08218179541
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 17:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OG1c520JUYQnFUGss8LBpMJom2+GErgZ8B5cEmCVtls=; b=bxbw4esteJrdxLqou19s+BDHOw
	9nYu2fsfqJONRZTjrtSEgSrPiFzq2nfBnuW5SQUIpUar1wyVxb1G+YAl8B072ucZG4FSbIK8+1eWY
	6U/2+/7s5Pd4xw/htTkto+bN/oZYZnpE5anqX/OAaqV6aHHz/0iO00Zcd94VomxSGMPXa8XdC96Uv
	quCVETWbsacESVikwhRHDVm+kUmRyHO1g4a09gMnKFbwgqjUe1/x9KFmvzkAQsW5IZW8gG6Lhcn45
	f1Mp4kf8RRPOk1eB+93I8Oy2+mbKZYpjk1AJrhvo5FLULQdp9aztm4yyvAXG7UCGSAOu1xkcQaSJE
	6YvlBiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Wtc-0005Ns-Gt; Wed, 04 Mar 2020 16:29:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WrA-00033N-Kh
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 16:26:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91C271045;
 Wed,  4 Mar 2020 08:26:47 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92D833F6CF;
 Wed,  4 Mar 2020 08:26:46 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 09/13] firmware: arm_scmi: Add Power notifications support
Date: Wed,  4 Mar 2020 16:25:54 +0000
Message-Id: <20200304162558.48836-10-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200304162558.48836-1-cristian.marussi@arm.com>
References: <20200304162558.48836-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_082648_775226_A1786834 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make SCMI Power protocol register with the notification core.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
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
 drivers/firmware/arm_scmi/power.c | 123 ++++++++++++++++++++++++++++++
 include/linux/scmi_protocol.h     |  15 ++++
 2 files changed, 138 insertions(+)

diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index cf7f0312381b..281da7e7e33a 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -6,6 +6,7 @@
  */
 
 #include "common.h"
+#include "notify.h"
 
 enum scmi_power_protocol_cmd {
 	POWER_DOMAIN_ATTRIBUTES = 0x3,
@@ -48,6 +49,12 @@ struct scmi_power_state_notify {
 	__le32 notify_enable;
 };
 
+struct scmi_power_state_notify_payld {
+	__le32 agent_id;
+	__le32 domain_id;
+	__le32 power_state;
+};
+
 struct power_dom_info {
 	bool state_set_sync;
 	bool state_set_async;
@@ -63,6 +70,11 @@ struct scmi_power_info {
 	struct power_dom_info *dom_info;
 };
 
+static enum scmi_power_protocol_cmd evt_2_cmd[] = {
+	POWER_STATE_NOTIFY,
+	POWER_STATE_CHANGE_REQUESTED_NOTIFY,
+};
+
 static int scmi_power_attributes_get(const struct scmi_handle *handle,
 				     struct scmi_power_info *pi)
 {
@@ -186,6 +198,111 @@ static struct scmi_power_ops power_ops = {
 	.state_get = scmi_power_state_get,
 };
 
+static int scmi_power_request_notify(const struct scmi_handle *handle,
+				     u32 domain, int message_id, bool enable)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_power_state_notify *notify;
+
+	ret = scmi_xfer_get_init(handle, message_id, SCMI_PROTOCOL_POWER,
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
+static bool scmi_power_set_notify_enabled(const struct scmi_handle *handle,
+					  u8 evt_id, u32 src_id, bool enable)
+{
+	int ret, cmd_id;
+
+	cmd_id = MAP_EVT_TO_ENABLE_CMD(evt_id, evt_2_cmd);
+	if (cmd_id < 0)
+		return false;
+
+	ret = scmi_power_request_notify(handle, src_id, cmd_id, enable);
+	if (ret)
+		pr_warn("SCMI Notifications - Proto:%X - FAIL_ENABLE - evt[%X] dom[%d] - ret:%d\n",
+				SCMI_PROTOCOL_POWER, evt_id, src_id, ret);
+
+	return !ret ? true : false;
+}
+
+static void *scmi_power_fill_custom_report(u8 evt_id, u64 timestamp,
+					   const void *payld, size_t payld_sz,
+					   void *report, u32 *src_id)
+{
+	void *rep = NULL;
+
+	switch (evt_id) {
+	case POWER_STATE_CHANGED:
+	{
+		const struct scmi_power_state_notify_payld *p = payld;
+		struct scmi_power_state_changed_report *r = report;
+
+		if (sizeof(*p) != payld_sz)
+			break;
+
+		r->timestamp = timestamp;
+		r->agent_id = le32_to_cpu(p->agent_id);
+		r->domain_id = le32_to_cpu(p->domain_id);
+		r->power_state = le32_to_cpu(p->power_state);
+		*src_id = r->domain_id;
+		rep = r;
+		break;
+	}
+	case POWER_STATE_CHANGE_REQUESTED:
+	{
+		const struct scmi_power_state_notify_payld *p = payld;
+		struct scmi_power_state_change_requested_report *r = report;
+
+		if (sizeof(*p) != payld_sz)
+			break;
+
+		r->timestamp = timestamp;
+		r->agent_id = le32_to_cpu(p->agent_id);
+		r->domain_id = le32_to_cpu(p->domain_id);
+		r->power_state = le32_to_cpu(p->power_state);
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
+static const struct scmi_event power_events[] = {
+	{
+		.id = POWER_STATE_CHANGED,
+		.max_payld_sz = 12,
+		.max_report_sz =
+			sizeof(struct scmi_power_state_changed_report),
+	},
+	{
+		.id = POWER_STATE_CHANGE_REQUESTED,
+		.max_payld_sz = 12,
+		.max_report_sz =
+			sizeof(struct scmi_power_state_change_requested_report),
+	},
+};
+
+static const struct scmi_protocol_event_ops power_event_ops = {
+	.set_notify_enabled = scmi_power_set_notify_enabled,
+	.fill_custom_report = scmi_power_fill_custom_report,
+};
+
 static int scmi_power_protocol_init(struct scmi_handle *handle)
 {
 	int domain;
@@ -214,6 +331,12 @@ static int scmi_power_protocol_init(struct scmi_handle *handle)
 		scmi_power_domain_attributes_get(handle, domain, dom);
 	}
 
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_POWER, PAGE_SIZE,
+				      &power_event_ops, power_events,
+				      ARRAY_SIZE(power_events),
+				      pinfo->num_domains);
+
 	pinfo->version = version;
 	handle->power_ops = &power_ops;
 	handle->power_priv = pinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 797e1e03ae52..baa117f9eda3 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -377,4 +377,19 @@ typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
 int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
 void scmi_protocol_unregister(int protocol_id);
 
+/* SCMI Notification API - Custom Event Reports */
+struct scmi_power_state_changed_report {
+	ktime_t	timestamp;
+	u32	agent_id;
+	u32	domain_id;
+	u32	power_state;
+};
+
+struct scmi_power_state_change_requested_report {
+	ktime_t	timestamp;
+	u32	agent_id;
+	u32	domain_id;
+	u32	power_state;
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
