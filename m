Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C88186E48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 16:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PM5XzDDeNvMAa9UTBB5CZmJZ3/I30BCg+Y0mp7K8O1I=; b=qXNdA1Nir2GpRZRwehZIA11sJs
	nquWqxYvM9dCOhrTupwp/VNKv8ntJWUdpSRG3lNzRjHTqqtoQFN1RzeDRwpH2VW7kCJ7HyrkazTGA
	D2oQWRf9rIIMOB0qEMnP3f/4VPq2vroDlpUzyHJOreL9pWTVcAvnw1ESujqqs2ug46uGbcf0+hjhh
	h/tREoYH7AQ2qbkV2rEEIHKtXn5khEuNO9fuKITNThFBRGDUu9oxb2y4f+Lp0D+mInrj5FGU4yIwc
	ELjnotx5hy/92J3DEK/+tJvtgDrGNbZlMWCqVoRX1WenCUqop4gnJpccIdOmrQVlqglXSG00qWcwt
	wSkWfggQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDrLG-0001TR-HS; Mon, 16 Mar 2020 15:07:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDrI0-000514-A2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 15:04:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01646FEC;
 Mon, 16 Mar 2020 08:04:24 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 029993F534;
 Mon, 16 Mar 2020 08:04:22 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 12/13] firmware: arm_scmi: Add Reset notifications support
Date: Mon, 16 Mar 2020 15:03:33 +0000
Message-Id: <20200316150334.47463-13-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200316150334.47463-1-cristian.marussi@arm.com>
References: <20200316150334.47463-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_080424_571283_A87FE158 
X-CRM114-Status: GOOD (  11.87  )
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

Make SCMI Reset protocol register with the notification core.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
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
 drivers/firmware/arm_scmi/reset.c | 96 +++++++++++++++++++++++++++++++
 include/linux/scmi_protocol.h     |  6 ++
 2 files changed, 102 insertions(+)

diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index de73054554f3..e74806b8f58c 100644
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
@@ -190,6 +202,84 @@ static struct scmi_reset_ops reset_ops = {
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
+		pr_warn("SCMI Notifications - Proto:%X - FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\n",
+			SCMI_PROTOCOL_RESET, evt_id, src_id, ret);
+
+	return !ret;
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
+		.id = RESET_NOTIFY,
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
@@ -218,6 +308,12 @@ static int scmi_reset_protocol_init(struct scmi_handle *handle)
 		scmi_reset_domain_attributes_get(handle, domain, dom);
 	}
 
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_RESET, PAGE_SIZE,
+				      &reset_event_ops, reset_events,
+				      ARRAY_SIZE(reset_events),
+				      pinfo->num_domains);
+
 	pinfo->version = version;
 	handle->reset_ops = &reset_ops;
 	handle->reset_priv = pinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 0f40ecd0609c..0afa945fd04b 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -411,4 +411,10 @@ struct scmi_sensor_trip_point_report {
 	u32	trip_point_desc;
 };
 
+struct scmi_reset_issued_report {
+	ktime_t	timestamp;
+	u32	domain_id;
+	u32	reset_state;
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
