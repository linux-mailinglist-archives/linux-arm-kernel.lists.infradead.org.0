Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF36E142ACA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=udVn2DMaPTZQcWEcSXxpVGTnzOLd+6iR1p8OcslxzDs=; b=E4l4eHlFckA6eMxq0YFGuGtimh
	SfgUecD/jX3VhM7ybYpIV2inDF7WFWKpjhTlzJqtUC++e7xqsTJkktlmSBey/ZFy0FhnfIHB16dCX
	kSA580zYczJZeICJLMPu8ACpivxjeK86+FkyY2VBr4PvSYKDZx47OVEmpxHKdgw0XlEALpm8qTFqK
	x20f6PD2qHC4Ff4H6YWPbxxVynCV+mQx8MhRz18k+bcJVdNNTdqjxlMR0SLkJ4J+TAfLikADHrxA0
	ScXywbfmeCBcYprTnp1S1FJCzKMYm2tK1IxkAYZJdqrE9eNlkmP1r346KR0HeXJWwuBHt03xtr8A6
	r8zkHzsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW9j-00062o-JQ; Mon, 20 Jan 2020 12:27:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6f-0001Vq-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AABA613FD;
 Mon, 20 Jan 2020 04:24:35 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C64CD3F68E;
 Mon, 20 Jan 2020 04:24:34 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 10/11] firmware: arm_scmi: Add Reset notifications support
Date: Mon, 20 Jan 2020 12:23:32 +0000
Message-Id: <20200120122333.46217-11-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042437_429883_32DECF90 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: cristian.marussi@arm.com, james.quinlan@broadcom.com, lukasz.luba@arm.com,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make SCMI Reset protocol register with the notification core.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/reset.c | 126 +++++++++++++++++++++++++++++-
 include/linux/scmi_protocol.h     |  11 +++
 2 files changed, 136 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index de73054554f3..528993d62fbb 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -6,6 +6,7 @@
  */
 
 #include "common.h"
+#include "notify.h"
 
 enum scmi_reset_protocol_cmd {
 	RESET_DOMAIN_ATTRIBUTES = 0x3,
@@ -40,6 +41,17 @@ struct scmi_msg_reset_domain_reset {
 #define ARCH_COLD_RESET		(ARCH_RESET_TYPE | COLD_RESET_STATE)
 };
 
+struct scmi_msg_reset_notify {
+	__le32 id;
+	__le32 event_control;
+#define RESET_TP_NOTIFY_ALL	BIT(0)
+};
+
+struct scmi_reset_issued_notify_payld {
+	__le32 domain_id;
+	__le32 reset_state;
+};
+
 struct reset_dom_info {
 	bool async_reset;
 	bool reset_notify;
@@ -51,8 +63,11 @@ struct scmi_reset_info {
 	u32 version;
 	int num_domains;
 	struct reset_dom_info *dom_info;
+	const struct scmi_handle *handle;
 };
 
+static struct scmi_reset_info *pinfo;
+
 static int scmi_reset_attributes_get(const struct scmi_handle *handle,
 				     struct scmi_reset_info *pi)
 {
@@ -190,11 +205,101 @@ static struct scmi_reset_ops reset_ops = {
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
+static bool scmi_reset_set_notify_enabled(u8 evt_id, const u32 *src_id,
+					  bool enable)
+{
+	int ret;
+
+	if (src_id) {
+		ret = scmi_reset_notify(pinfo->handle, *src_id, enable);
+		if (ret)
+			pr_warn("Failed enabling SCMI Notifications - Reset - evt[%X] dom[%d] - ret:%d\n",
+				evt_id, *src_id, ret);
+	} else {
+		int r, dom;
+
+		ret = 1;
+		for (dom = 0; dom < pinfo->num_domains; dom++) {
+			r = scmi_reset_notify(pinfo->handle, dom, enable);
+			if (r)
+				pr_warn("Failed enabling SCMI Notifications - Reset - evt[%X] dom[%d] - ret:%d\n",
+					evt_id, dom, r);
+			ret *= r;
+		}
+	}
+
+	return !ret ? true : false;
+}
+
+static void *scmi_reset_fill_custom_report(u8 evt_id, u64 timestamp,
+					   const void *payld, size_t payld_sz,
+					   void *report, u32 *src_id)
+{
+	void *rep = NULL;
+
+	switch (evt_id) {
+	case RESET_ISSUED:
+	{
+		const struct scmi_reset_issued_notify_payld *p = payld;
+		struct scmi_reset_issued_report *r = report;
+
+		if (sizeof(*p) != payld_sz)
+			break;
+
+		r->timestamp = timestamp;
+		r->domain_id = le32_to_cpu(p->domain_id);
+		r->reset_state = le32_to_cpu(p->reset_state);
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
+static const struct scmi_event reset_events[] = {
+	{
+		.evt_id = RESET_NOTIFY,
+		.max_payld_sz = 8,
+		.max_report_sz = sizeof(struct scmi_reset_issued_report),
+	},
+};
+
+static const struct scmi_protocol_event_ops reset_event_ops = {
+	.set_notify_enabled = scmi_reset_set_notify_enabled,
+	.fill_custom_report = scmi_reset_fill_custom_report,
+};
+
 static int scmi_reset_protocol_init(struct scmi_handle *handle)
 {
 	int domain;
 	u32 version;
-	struct scmi_reset_info *pinfo;
 
 	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);
 
@@ -218,7 +323,12 @@ static int scmi_reset_protocol_init(struct scmi_handle *handle)
 		scmi_reset_domain_attributes_get(handle, domain, dom);
 	}
 
+	scmi_register_protocol_events(SCMI_PROTOCOL_RESET, PAGE_SIZE,
+				      &reset_event_ops, reset_events,
+				      ARRAY_SIZE(reset_events));
+
 	pinfo->version = version;
+	pinfo->handle = handle;
 	handle->reset_ops = &reset_ops;
 	handle->reset_priv = pinfo;
 
@@ -231,3 +341,17 @@ static int __init scmi_reset_init(void)
 				      &scmi_reset_protocol_init);
 }
 subsys_initcall(scmi_reset_init);
+
+int scmi_register_reset_event_notifier(u8 evt_id, u32 *dom_id,
+				       struct notifier_block *nb)
+{
+	return scmi_register_event_notifier(SCMI_PROTOCOL_RESET, evt_id,
+					    dom_id, nb);
+}
+
+int scmi_unregister_reset_event_notifier(u8 evt_id, u32 *dom_id,
+					 struct notifier_block *nb)
+{
+	return scmi_unregister_event_notifier(SCMI_PROTOCOL_RESET, evt_id,
+					      dom_id, nb);
+}
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 833e21af52fe..4af258f07c1e 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -376,4 +376,15 @@ int scmi_register_sensor_event_notifier(u8 evt_id, u32 *sens_id,
 int scmi_unregister_sensor_event_notifier(u8 evt_id, u32 *sens_id,
 					struct notifier_block *nb);
 
+struct scmi_reset_issued_report {
+	ktime_t	timestamp;
+	u32	domain_id;
+	u32	reset_state;
+};
+
+int scmi_register_reset_event_notifier(u8 evt_id, u32 *dom_id,
+				       struct notifier_block *nb);
+int scmi_unregister_reset_event_notifier(u8 evt_id, u32 *dom_id,
+					 struct notifier_block *nb);
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
