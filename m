Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96699200A63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=43iHquwSL5irvfv7/6dftoGJ+Ck9YYum+c0cmBth7xM=; b=T3mD6lMNz8s95UspSm1VbyILOM
	VEBRB30UIklSVsqGhnshcDpoSsvUg1RDENnV8sRSDX8H/cZ2Tiw7Y0B4vNBtd49oQfgvuKZ06jUm/
	+vbb8DkULze+MitThqE41Ats3pCnzrRRUmaOUDE7ylEKq3FMslzKsm5/9cdGCmJi4nbA18lcsyuQ5
	SNHl8c+duCX/IdKK2PWnDD72avGdfJolFLGidDVUZLw42iQ7Z6C4OK27IsO9dbe+kIWVn48vkdjoQ
	uyNaEjzBb4tJWZzyrlU8w4npaOCFaMeGu39SvjigBaFVP7t4RvcI4DjS2aviFrnR0lNIH+V/DJLOc
	i5xwhvLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHGX-0006kI-Kv; Fri, 19 Jun 2020 13:41:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHET-0002uW-IY
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:39:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6725413D5;
 Fri, 19 Jun 2020 06:39:00 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DF453F6CF;
 Fri, 19 Jun 2020 06:38:59 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 5/9] firmware: arm_scmi: Add Power notifications support
Date: Fri, 19 Jun 2020 14:38:30 +0100
Message-Id: <20200619133834.18497-6-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619133834.18497-1-cristian.marussi@arm.com>
References: <20200619133834.18497-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_063901_734997_B2BB1103 
X-CRM114-Status: GOOD (  13.13  )
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

Make SCMI Power protocol register with the notification core.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V8 --> V9
- moved pr_info to pr_debug
- removed switch()
- use SCMI_PROTO_QUEUE_SZ
V6 --> V7
- fixed report.timestamp type
- removed POWER_STATE_CHANGE_REQUESTED motification handling (deprecated)
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
 drivers/firmware/arm_scmi/power.c | 92 +++++++++++++++++++++++++++++--
 include/linux/scmi_protocol.h     | 12 ++++
 2 files changed, 98 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index cf7f0312381b..b9714755a320 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -5,19 +5,18 @@
  * Copyright (C) 2018 ARM Ltd.
  */
 
+#define pr_fmt(fmt) "SCMI Notifications POWER - " fmt
+
+#include <linux/scmi_protocol.h>
+
 #include "common.h"
+#include "notify.h"
 
 enum scmi_power_protocol_cmd {
 	POWER_DOMAIN_ATTRIBUTES = 0x3,
 	POWER_STATE_SET = 0x4,
 	POWER_STATE_GET = 0x5,
 	POWER_STATE_NOTIFY = 0x6,
-	POWER_STATE_CHANGE_REQUESTED_NOTIFY = 0x7,
-};
-
-enum scmi_power_protocol_notify {
-	POWER_STATE_CHANGED = 0x0,
-	POWER_STATE_CHANGE_REQUESTED = 0x1,
 };
 
 struct scmi_msg_resp_power_attributes {
@@ -48,6 +47,12 @@ struct scmi_power_state_notify {
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
@@ -186,6 +191,75 @@ static struct scmi_power_ops power_ops = {
 	.state_get = scmi_power_state_get,
 };
 
+static int scmi_power_request_notify(const struct scmi_handle *handle,
+				     u32 domain, bool enable)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_power_state_notify *notify;
+
+	ret = scmi_xfer_get_init(handle, POWER_STATE_NOTIFY,
+				 SCMI_PROTOCOL_POWER, sizeof(*notify), 0, &t);
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
+	int ret;
+
+	ret = scmi_power_request_notify(handle, src_id, enable);
+	if (ret)
+		pr_debug("FAIL_ENABLE - evt[%X] dom[%d] - ret:%d\n",
+			 evt_id, src_id, ret);
+
+	return !ret;
+}
+
+static void *scmi_power_fill_custom_report(const struct scmi_handle *handle,
+					   u8 evt_id, u64 timestamp,
+					   const void *payld, size_t payld_sz,
+					   void *report, u32 *src_id)
+{
+	const struct scmi_power_state_notify_payld *p = payld;
+	struct scmi_power_state_changed_report *r = report;
+
+	if (evt_id != SCMI_EVENT_POWER_STATE_CHANGED || sizeof(*p) != payld_sz)
+		return NULL;
+
+	r->timestamp = timestamp;
+	r->agent_id = le32_to_cpu(p->agent_id);
+	r->domain_id = le32_to_cpu(p->domain_id);
+	r->power_state = le32_to_cpu(p->power_state);
+	*src_id = r->domain_id;
+
+	return r;
+}
+
+static const struct scmi_event power_events[] = {
+	{
+		.id = SCMI_EVENT_POWER_STATE_CHANGED,
+		.max_payld_sz = sizeof(struct scmi_power_state_notify_payld),
+		.max_report_sz =
+			sizeof(struct scmi_power_state_changed_report),
+	},
+};
+
+static const struct scmi_event_ops power_event_ops = {
+	.set_notify_enabled = scmi_power_set_notify_enabled,
+	.fill_custom_report = scmi_power_fill_custom_report,
+};
+
 static int scmi_power_protocol_init(struct scmi_handle *handle)
 {
 	int domain;
@@ -214,6 +288,12 @@ static int scmi_power_protocol_init(struct scmi_handle *handle)
 		scmi_power_domain_attributes_get(handle, domain, dom);
 	}
 
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_POWER, SCMI_PROTO_QUEUE_SZ,
+				      &power_event_ops, power_events,
+				      ARRAY_SIZE(power_events),
+				      pinfo->num_domains);
+
 	pinfo->version = version;
 	handle->power_ops = &power_ops;
 	handle->power_priv = pinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 26957d6872a5..81dc3b132fda 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -375,4 +375,16 @@ typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
 int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
 void scmi_protocol_unregister(int protocol_id);
 
+/* SCMI Notification API - Custom Event Reports */
+enum scmi_notification_events {
+	SCMI_EVENT_POWER_STATE_CHANGED = 0x0,
+};
+
+struct scmi_power_state_changed_report {
+	u64 timestamp;
+	u32 agent_id;
+	u32 domain_id;
+	u32 power_state;
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
