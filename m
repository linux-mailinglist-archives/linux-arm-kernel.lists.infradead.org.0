Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC929142AB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4SBehfgAl9pgJKniA56Vi5Bv2Dy1y6oZk3VrNO5Q5YQ=; b=fzb8cquoZP9tHsrwVJN3+7ywis
	F3VWYyFD754881W0yGY/48Bj/SiNlqzkxXvNoYLNdZFue9toVpTNa5a8Zo4sUjFQBY4PtRAloOpH2
	8S8/+BGqHZ1OQy5obKbsne/L4jZKFIZqB2AQMkmixFB6obgZ4+JV0B2ZmjAM+sMeyhBQgmiK8UnVG
	WIo1UT9Be0sqbQBTPe5R8eiyd66rTDNxlU7j+q9j1lqn/UKwvk28O6nC92k0+HBi+nC84qMrh/Nhq
	mmV6Fz9TOirbHRrP/3kNESrxTP6dLj8MGF6Qj7pkvdRMstKmSVsgKgIGrMCmhsWPQCcneEzOEr28z
	on1oOgVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW8Y-00049l-TB; Mon, 20 Jan 2020 12:26:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6b-0001Vq-AG
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30EF91396;
 Mon, 20 Jan 2020 04:24:30 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48A053F68E;
 Mon, 20 Jan 2020 04:24:29 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 05/11] firmware: arm_scmi: Add notifications anti-tampering
Date: Mon, 20 Jan 2020 12:23:27 +0000
Message-Id: <20200120122333.46217-6-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042433_460922_699E5274 
X-CRM114-Status: GOOD (  17.66  )
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

Add a simple mechanism to avoid the fact that with standard Kernel
notification chains a notifier callback, registered by a user, can
potentially stop further processing for the notification chain itself,
or mangle the *data content callback parameter along the way.

A simple notifier_block wrapper layer is introduced in order to limit the
above described tampering capabilities.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
This patch can be simply dropped from the series if the anti-tampering
mechanism itself is not deemed worth the effort
---
 drivers/firmware/arm_scmi/notify.c | 151 ++++++++++++++++++++++++++++-
 1 file changed, 147 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index da342f43021e..ab5033c1b03c 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -111,6 +111,9 @@
 #define KEY_XTRACT_EVT_ID(key)		FIELD_GET(EVT_ID_MASK, (key))
 #define KEY_XTRACT_SRC_ID(key)		FIELD_GET(SRC_ID_MASK, (key))
 
+#define	PTR_2_EVT_KEY(p)		\
+	((u32)((unsigned long)(p) & 0x00000000ffffffffL))
+
 /**
  * events_queue  - Describes a queue and its associated worker
  *
@@ -180,6 +183,7 @@ struct scmi_registered_event {
  *	     related IDR mapping
  * @r_evt: A reference to the underlying registered event
  * @chain: The notification chain dedicated to this specific event tuple
+ * @scmi_registered_nbs: An IDR map to the currently allocated wrapper nbs.
  */
 struct scmi_event_handler {
 	u32				evt_key;
@@ -187,6 +191,7 @@ struct scmi_event_handler {
 	refcount_t			users;
 	struct scmi_registered_event	*r_evt;
 	struct blocking_notifier_head	chain;
+	struct idr			scmi_registered_nbs;
 };
 
 /**
@@ -211,6 +216,26 @@ struct scmi_event_header {
 	u8	payld[];
 } __packed;
 
+/**
+ * scmi_wrapper_block  - A wrapper notifier_block
+ *
+ * Used to wrap the original notifier_block provided by the user to limit user
+ * capabilities to cut short the notification chain or mangle the *data
+ * parameters.
+ *
+ * @original_nb: The original notifier_block provided by the user
+ * @wnb: A wrapper notifier_block to be effectively registered with the chains
+ * @report_copy: A pointer to the pre-allocated report buffer effectively passed
+ *		 down to the user notifier_block as *data param
+ * @report_sz: The size of the @report_copy buffer
+ */
+struct scmi_wrapper_block {
+	struct notifier_block	*original_nb;
+	struct notifier_block	wnb;
+	void			*report_copy;
+	size_t			report_sz;
+};
+
 /*
  * A few IDR maps to track:
  *
@@ -579,6 +604,104 @@ int scmi_register_protocol_events(u8 proto_id, size_t queue_sz,
 	return 0;
 }
 
+/**
+ * scmi_wrapper_notifier_call  - A common wrapper notifier_call function
+ *
+ * This wrapper callback is what is effectively registered on the notification
+ * chains; it ensures the user provided callback which is in turn called from
+ * this cannot tamper with the notification deliveries, like returning a
+ * NOTIFY_STOP to cut the chain or mangling with the event reports passed down
+ * *data.
+ *
+ * @nb: The associated notifier block
+ * @event: The event ID
+ * @data: A custom event report
+ *
+ * Return: Alwways NOTIFY_OK
+ */
+static int scmi_wrapper_notifier_call(struct notifier_block *nb,
+				      unsigned long event, void *data)
+{
+	int ret;
+	struct scmi_wrapper_block *cwnb;
+	void *report = data;
+
+	cwnb = container_of(nb, struct scmi_wrapper_block, wnb);
+
+	if (!cwnb)
+		return NOTIFY_STOP;
+
+	if (cwnb->report_copy) {
+		memcpy(cwnb->report_copy, data, cwnb->report_sz);
+		report = cwnb->report_copy;
+	}
+	ret = cwnb->original_nb->notifier_call(cwnb->original_nb,
+					       event, report);
+
+	return NOTIFY_OK;
+}
+
+/**
+ * scmi_register_wrapper_blocking_notifier  - Register a notifier wrapper
+ *
+ * In order to avoid a user registering a notifier_block to tamper with the
+ * notification delivery process, this function builds a notifier_block wrapper
+ * and embeds into it the user provided one @nb.
+ *
+ * @hndl: The event handler to act upon
+ * @nb: the original user provided notfier_block to wrap over
+ *
+ * Return: The allocated and registered scmi_wrapper_block on Success
+ */
+static struct scmi_wrapper_block *
+scmi_register_wrapper_blocking_notifier(struct scmi_event_handler *hndl,
+					struct notifier_block *nb)
+{
+	int id;
+	struct scmi_wrapper_block *cwnb;
+
+	cwnb = kzalloc(sizeof(*cwnb), GFP_KERNEL);
+	if (!cwnb)
+		return ERR_PTR(-ENOMEM);
+
+	cwnb->report_sz = hndl->r_evt->evt->max_report_sz;
+	cwnb->report_copy = kzalloc(cwnb->report_sz, GFP_KERNEL);
+	if (!cwnb->report_copy)
+		pr_warn("SCMI Failed to allocate per-notifier report-buffer\n");
+	cwnb->original_nb = nb;
+	cwnb->wnb.notifier_call = scmi_wrapper_notifier_call;
+	cwnb->wnb.priority = nb->priority;
+
+	id = idr_alloc(&hndl->scmi_registered_nbs, cwnb, PTR_2_EVT_KEY(nb),
+		       PTR_2_EVT_KEY(nb) + 1, GFP_KERNEL);
+	if (id < 0) {
+		pr_err("SCMI Failed to allocate NB IDR - err:%d\n", id);
+		kfree(cwnb);
+		return ERR_PTR(id);
+	}
+
+	blocking_notifier_chain_register(&hndl->chain, &cwnb->wnb);
+
+	return cwnb;
+}
+
+/**
+ * scmi_unregister_wrapper_blocking_notifier  - Unregister a notifier wrapper
+ *
+ * @hndl: The event handler to act upon
+ * @cwnb: The wrapper notifier to be unregistered
+ */
+static void
+scmi_unregister_wrapper_blocking_notifier(struct scmi_event_handler *hndl,
+					  struct scmi_wrapper_block *cwnb)
+{
+	idr_remove(&hndl->scmi_registered_nbs,
+		   PTR_2_EVT_KEY(cwnb->original_nb));
+	blocking_notifier_chain_unregister(&hndl->chain, &cwnb->wnb);
+	kfree(cwnb->report_copy);
+	kfree(cwnb);
+}
+
 /**
  * scmi_register_event_handler  - Allocate an Event handler
  *
@@ -624,6 +747,8 @@ static struct scmi_event_handler *scmi_register_event_handler(u32 evt_key)
 		return ERR_PTR(id);
 	}
 
+	idr_init(&hndl->scmi_registered_nbs);
+
 	return hndl;
 }
 
@@ -779,17 +904,28 @@ int scmi_register_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
 {
 	u32 evt_key;
 	struct scmi_event_handler *hndl;
+	struct scmi_wrapper_block *cwnb;
 
 	evt_key = MAKE_EVT_KEY(proto_id, evt_id, src_id);
 	hndl = scmi_get_or_create_event_handler(evt_key);
 	if (IS_ERR_OR_NULL(hndl))
 		return PTR_ERR(hndl);
 
-	blocking_notifier_chain_register(&hndl->chain, nb);
+	if (idr_find(&hndl->scmi_registered_nbs, PTR_2_EVT_KEY(nb))) {
+		pr_err("SCMI Duplicated NB\n");
+		scmi_put_event_handler(hndl);
+		return -EINVAL;
+	}
+
+	cwnb = scmi_register_wrapper_blocking_notifier(hndl, nb);
+	if (IS_ERR_OR_NULL(cwnb)) {
+		scmi_put_event_handler(hndl);
+		return PTR_ERR(cwnb);
+	}
 
 	if (!scmi_enable_events(hndl)) {
 		pr_err("SCMI Failed to ENABLE events for key:%X !\n", evt_key);
-		blocking_notifier_chain_unregister(&hndl->chain, nb);
+		scmi_unregister_wrapper_blocking_notifier(hndl, cwnb);
 		scmi_put_event_handler(hndl);
 		return -EINVAL;
 	}
@@ -816,15 +952,22 @@ int scmi_unregister_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
 {
 	u32 evt_key;
 	struct scmi_event_handler *hndl;
+	struct scmi_wrapper_block *cwnb;
 
 	evt_key = MAKE_EVT_KEY(proto_id, evt_id, src_id);
 	hndl = scmi_get_event_handler(evt_key);
 	if (IS_ERR_OR_NULL(hndl))
 		return -EINVAL;
 
-	blocking_notifier_chain_unregister(&hndl->chain, nb);
-
+	cwnb = idr_find(&hndl->scmi_registered_nbs, PTR_2_EVT_KEY(nb));
+	if (!cwnb) {
+		pr_err("SCMI Unknown NB\n");
+		scmi_put_event_handler(hndl);
+		return -EINVAL;
+	}
+	scmi_unregister_wrapper_blocking_notifier(hndl, cwnb);
 	scmi_put_event_handler(hndl);
+
 	/*
 	 * If this was the last user callback for this handler, this last put
 	 * will force the handler to be freed.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
