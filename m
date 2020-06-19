Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ACB200A72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5hqEk4wogg0byx9nr124yroGRuvLT71bdYGHO+5i9V4=; b=pEKLGjU5BWKWsPHnbtjvDSg92e
	L+vEHbLmd4F/xNksvQS48V73IFmmYZU1M0hq9zeFLGerF3LNcEGgg+ReMORzoStg/U143MiQGlyZm
	iAk4iJq6+XDlVnPebNc+VtEGPIN2Az2QfVaaqTyp5r19Qyc5uf/ke6grrBzz/ofmyK5ElH21jCVxb
	1coaw6toSRd+NjjROZ55k8l1eNfy0oyBvhsZUTv83Bqx7w+IDXBMo7GekBRx7KYjvnruNrBKNdGAU
	BkIKxdXWLNdcHpSj9ZWhsHh+Xhh4JuVAsG7+/PT+QIDcm9dkzvCK51NwOCW6AVws6z2dmSt5JxJPw
	7tjz6oeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHHL-0007Rb-2F; Fri, 19 Jun 2020 13:41:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHEW-0002uW-Hs
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:39:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3511A143D;
 Fri, 19 Jun 2020 06:39:04 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C2B73F6CF;
 Fri, 19 Jun 2020 06:39:03 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 8/9] firmware: arm_scmi: Add Reset notifications support
Date: Fri, 19 Jun 2020 14:38:33 +0100
Message-Id: <20200619133834.18497-9-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619133834.18497-1-cristian.marussi@arm.com>
References: <20200619133834.18497-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_063904_685062_11BEB843 
X-CRM114-Status: GOOD (  13.28  )
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

Make SCMI Reset protocol register with the notification core.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V8 --> V9
- moved pr_info to pr_debug
- removed switch()
- use SCMI_PROTO_QUEUE_SZ
V6 --> V7
- fixed report.timestamp type
- added agent_id notification field
- fixed .max_payld_sz initialization
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
 drivers/firmware/arm_scmi/reset.c | 96 +++++++++++++++++++++++++++++--
 include/linux/scmi_protocol.h     |  8 +++
 2 files changed, 100 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index de73054554f3..2aea26475376 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -5,7 +5,12 @@
  * Copyright (C) 2019 ARM Ltd.
  */
 
+#define pr_fmt(fmt) "SCMI Notifications RESET - " fmt
+
+#include <linux/scmi_protocol.h>
+
 #include "common.h"
+#include "notify.h"
 
 enum scmi_reset_protocol_cmd {
 	RESET_DOMAIN_ATTRIBUTES = 0x3,
@@ -13,10 +18,6 @@ enum scmi_reset_protocol_cmd {
 	RESET_NOTIFY = 0x5,
 };
 
-enum scmi_reset_protocol_notify {
-	RESET_ISSUED = 0x0,
-};
-
 #define NUM_RESET_DOMAIN_MASK	0xffff
 #define RESET_NOTIFY_ENABLE	BIT(0)
 
@@ -40,6 +41,18 @@ struct scmi_msg_reset_domain_reset {
 #define ARCH_COLD_RESET		(ARCH_RESET_TYPE | COLD_RESET_STATE)
 };
 
+struct scmi_msg_reset_notify {
+	__le32 id;
+	__le32 event_control;
+#define RESET_TP_NOTIFY_ALL	BIT(0)
+};
+
+struct scmi_reset_issued_notify_payld {
+	__le32 agent_id;
+	__le32 domain_id;
+	__le32 reset_state;
+};
+
 struct reset_dom_info {
 	bool async_reset;
 	bool reset_notify;
@@ -190,6 +203,75 @@ static struct scmi_reset_ops reset_ops = {
 	.deassert = scmi_reset_domain_deassert,
 };
 
+static int scmi_reset_notify(const struct scmi_handle *handle, u32 domain_id,
+			     bool enable)
+{
+	int ret;
+	u32 evt_cntl = enable ? RESET_TP_NOTIFY_ALL : 0;
+	struct scmi_xfer *t;
+	struct scmi_msg_reset_notify *cfg;
+
+	ret = scmi_xfer_get_init(handle, RESET_NOTIFY,
+				 SCMI_PROTOCOL_RESET, sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	cfg = t->tx.buf;
+	cfg->id = cpu_to_le32(domain_id);
+	cfg->event_control = cpu_to_le32(evt_cntl);
+
+	ret = scmi_do_xfer(handle, t);
+
+	scmi_xfer_put(handle, t);
+	return ret;
+}
+
+static bool scmi_reset_set_notify_enabled(const struct scmi_handle *handle,
+					  u8 evt_id, u32 src_id, bool enable)
+{
+	int ret;
+
+	ret = scmi_reset_notify(handle, src_id, enable);
+	if (ret)
+		pr_debug("FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\n",
+			 evt_id, src_id, ret);
+
+	return !ret;
+}
+
+static void *scmi_reset_fill_custom_report(const struct scmi_handle *handle,
+					   u8 evt_id, u64 timestamp,
+					   const void *payld, size_t payld_sz,
+					   void *report, u32 *src_id)
+{
+	const struct scmi_reset_issued_notify_payld *p = payld;
+	struct scmi_reset_issued_report *r = report;
+
+	if (evt_id != SCMI_EVENT_RESET_ISSUED || sizeof(*p) != payld_sz)
+		return NULL;
+
+	r->timestamp = timestamp;
+	r->agent_id = le32_to_cpu(p->agent_id);
+	r->domain_id = le32_to_cpu(p->domain_id);
+	r->reset_state = le32_to_cpu(p->reset_state);
+	*src_id = r->domain_id;
+
+	return r;
+}
+
+static const struct scmi_event reset_events[] = {
+	{
+		.id = SCMI_EVENT_RESET_ISSUED,
+		.max_payld_sz = sizeof(struct scmi_reset_issued_notify_payld),
+		.max_report_sz = sizeof(struct scmi_reset_issued_report),
+	},
+};
+
+static const struct scmi_event_ops reset_event_ops = {
+	.set_notify_enabled = scmi_reset_set_notify_enabled,
+	.fill_custom_report = scmi_reset_fill_custom_report,
+};
+
 static int scmi_reset_protocol_init(struct scmi_handle *handle)
 {
 	int domain;
@@ -218,6 +300,12 @@ static int scmi_reset_protocol_init(struct scmi_handle *handle)
 		scmi_reset_domain_attributes_get(handle, domain, dom);
 	}
 
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_RESET, SCMI_PROTO_QUEUE_SZ,
+				      &reset_event_ops, reset_events,
+				      ARRAY_SIZE(reset_events),
+				      pinfo->num_domains);
+
 	pinfo->version = version;
 	handle->reset_ops = &reset_ops;
 	handle->reset_priv = pinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index d0ea4a5037e7..d04d66be596d 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -376,6 +376,7 @@ enum scmi_notification_events {
 	SCMI_EVENT_PERFORMANCE_LIMITS_CHANGED = 0x0,
 	SCMI_EVENT_PERFORMANCE_LEVEL_CHANGED = 0x1,
 	SCMI_EVENT_SENSOR_TRIP_POINT_EVENT = 0x0,
+	SCMI_EVENT_RESET_ISSUED = 0x0,
 };
 
 struct scmi_power_state_changed_report {
@@ -407,4 +408,11 @@ struct scmi_sensor_trip_point_report {
 	u32 trip_point_desc;
 };
 
+struct scmi_reset_issued_report {
+	u64 timestamp;
+	u32 agent_id;
+	u32 domain_id;
+	u32 reset_state;
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
