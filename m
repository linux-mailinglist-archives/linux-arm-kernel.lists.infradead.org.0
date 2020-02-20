Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A92165566
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 03:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KfBizovAp3JKJH4U41LyaEQ5iw+6z5W1HCLEvM76/Wg=; b=qVsvbqCEybZ5VJOL9jXZenMbQE
	kJHfZ8twxMrIs6lprm0a6rmWxPaoqKLcOJIcnxcZ7CBlFpkXazcRBWzIpduM+FHBALMYcVT2KKKaG
	PyAzNRlFUSBKAo7sp59jl9+QJmpleTa3suGINetVP0z1LCyb6Km+ThcvIGYDMXZQ2E2Ynqew7JKOl
	/HL3YxUdQn9DRWq+ZnV+bQjZTviSsz57PB0BkoZL9bLpTt13AxPKQFwSbVe0qU81KmWET+rgz/0dC
	Y4hZNslkBTpBVpRwvIK/zD6SmhFt5VugUbz60oLRuIH9kHT6XSYg6GUxXBoE10iylCuSXYu4wpEjP
	yAqh9qIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4c3v-0001oR-NP; Thu, 20 Feb 2020 02:59:39 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4c2Q-0000NJ-Ew
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 02:58:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582167491; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=iuWKVPRXslKzC7/ZGLleZutVx9tH9oVwDuvKGKDkAFg=;
 b=jRVZqIo9YUNU0U5xjbWgLTIc1EBpIgvhxvhbPPb/4OZJTDrxHth74iDTtuH3H8ahESk21hNY
 yrgWBNAQcfDqVJry2Iy7VfgNTKEBIouQWaQ9Zw7S3LA6q9IzJnSmO5zQTR4xysQxB2fIL+uH
 1RLmMTuWKlE1zCnr5qYOcHLTbbA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4df5b4.7f59f52a8180-smtp-out-n02;
 Thu, 20 Feb 2020 02:57:56 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CC099C4479F; Thu, 20 Feb 2020 02:57:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8ECE4C4479C;
 Thu, 20 Feb 2020 02:57:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8ECE4C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH 5/6] remoteproc: qcom: Add per subsystem SSR notification
Date: Wed, 19 Feb 2020 18:57:44 -0800
Message-Id: <1582167465-2549-6-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_185811_532879_893D42E0 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 rishabhb@codeaurora.org, Siddharth Gupta <sidgup@codeaurora.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there is a global notification chain which is called whenever any
remoteproc shuts down. This leads to all the listeners being notified, and
is not an optimal design as kernel drivers might only be interested in
listening to notifications from a particular remoteproc. Create an
individual notifier chain for every SSR subdevice, and modify the
notification registration API to include the remoteproc struct as an
argument. Update the existing user of the registration API to get the
phandle of the remoteproc dt node to register for SSR notifications.

Signed-off-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>
Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
---
 drivers/remoteproc/qcom_common.c      | 49 +++++++++++++++++++++++++++--------
 drivers/remoteproc/qcom_common.h      |  1 +
 drivers/soc/qcom/glink_ssr.c          | 20 ++++++++++++--
 include/linux/remoteproc/qcom_rproc.h | 17 ++++++++----
 4 files changed, 69 insertions(+), 18 deletions(-)

diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
index 5d59538..6714f27 100644
--- a/drivers/remoteproc/qcom_common.c
+++ b/drivers/remoteproc/qcom_common.c
@@ -23,8 +23,6 @@
 #define to_smd_subdev(d) container_of(d, struct qcom_rproc_subdev, subdev)
 #define to_ssr_subdev(d) container_of(d, struct qcom_rproc_ssr, subdev)
 
-static BLOCKING_NOTIFIER_HEAD(ssr_notifiers);
-
 static int glink_subdev_start(struct rproc_subdev *subdev)
 {
 	struct qcom_rproc_glink *glink = to_glink_subdev(subdev);
@@ -180,27 +178,52 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
 
 /**
  * qcom_register_ssr_notifier() - register SSR notification handler
+ * @rproc:	pointer to the remoteproc structure
  * @nb:		notifier_block to notify for restart notifications
  *
- * Returns 0 on success, negative errno on failure.
+ * Returns pointer to srcu notifier head on success, ERR_PTR on failure.
  *
- * This register the @notify function as handler for restart notifications. As
- * remote processors are stopped this function will be called, with the SSR
- * name passed as a parameter.
+ * This registers the @notify function as handler for restart notifications. As
+ * remote processors are stopped this function will be called, with the rproc
+ * pointer passed as a parameter.
  */
-int qcom_register_ssr_notifier(struct notifier_block *nb)
+void *qcom_register_ssr_notifier(struct rproc *rproc, struct notifier_block *nb)
 {
-	return blocking_notifier_chain_register(&ssr_notifiers, nb);
+	struct rproc_subdev *subdev;
+	struct qcom_rproc_ssr *ssr;
+	int ret;
+
+	if (!rproc)
+		return ERR_PTR(-EINVAL);
+
+	mutex_lock(&rproc->lock);
+	list_for_each_entry(subdev, &rproc->subdevs, node) {
+		ret = strcmp(subdev->name, "ssr_notifs");
+		if (!ret)
+			break;
+	}
+	mutex_unlock(&rproc->lock);
+	if (ret)
+		return ERR_PTR(-ENOENT);
+
+	ssr = to_ssr_subdev(subdev);
+	srcu_notifier_chain_register(ssr->rproc_notif_list, nb);
+
+	return ssr->rproc_notif_list;
 }
 EXPORT_SYMBOL_GPL(qcom_register_ssr_notifier);
 
 /**
  * qcom_unregister_ssr_notifier() - unregister SSR notification handler
+ * @notify:	pointer to srcu notifier head
  * @nb:		notifier_block to unregister
  */
-void qcom_unregister_ssr_notifier(struct notifier_block *nb)
+int qcom_unregister_ssr_notifier(void *notify, struct notifier_block *nb)
 {
-	blocking_notifier_chain_unregister(&ssr_notifiers, nb);
+	if (!notify)
+		return -EINVAL;
+
+	return srcu_notifier_chain_unregister(notify, nb);
 }
 EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
 
@@ -208,7 +231,7 @@ static void ssr_notify_unprepare(struct rproc_subdev *subdev)
 {
 	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
 
-	blocking_notifier_call_chain(&ssr_notifiers, 0, (void *)ssr->name);
+	srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void *)ssr->name);
 }
 
 /**
@@ -226,6 +249,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
 	ssr->name = ssr_name;
 	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
 	ssr->subdev.unprepare = ssr_notify_unprepare;
+	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
+								GFP_KERNEL);
+	srcu_init_notifier_head(ssr->rproc_notif_list);
 
 	rproc_add_subdev(rproc, &ssr->subdev);
 }
@@ -239,6 +265,7 @@ EXPORT_SYMBOL_GPL(qcom_add_ssr_subdev);
 void qcom_remove_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr)
 {
 	kfree(ssr->subdev.name);
+	kfree(ssr->rproc_notif_list);
 	rproc_remove_subdev(rproc, &ssr->subdev);
 }
 EXPORT_SYMBOL_GPL(qcom_remove_ssr_subdev);
diff --git a/drivers/remoteproc/qcom_common.h b/drivers/remoteproc/qcom_common.h
index 58de71e..7792691 100644
--- a/drivers/remoteproc/qcom_common.h
+++ b/drivers/remoteproc/qcom_common.h
@@ -27,6 +27,7 @@ struct qcom_rproc_subdev {
 struct qcom_rproc_ssr {
 	struct rproc_subdev subdev;
 
+	struct srcu_notifier_head *rproc_notif_list;
 	const char *name;
 };
 
diff --git a/drivers/soc/qcom/glink_ssr.c b/drivers/soc/qcom/glink_ssr.c
index d7babe3..2b39683 100644
--- a/drivers/soc/qcom/glink_ssr.c
+++ b/drivers/soc/qcom/glink_ssr.c
@@ -7,6 +7,7 @@
 #include <linux/completion.h>
 #include <linux/module.h>
 #include <linux/notifier.h>
+#include <linux/remoteproc.h>
 #include <linux/rpmsg.h>
 #include <linux/remoteproc/qcom_rproc.h>
 
@@ -49,6 +50,7 @@ struct glink_ssr {
 	struct rpmsg_endpoint *ept;
 
 	struct notifier_block nb;
+	void *notifier_head;
 
 	u32 seq_num;
 	struct completion completion;
@@ -112,6 +114,7 @@ static int qcom_glink_ssr_notify(struct notifier_block *nb, unsigned long event,
 static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
 {
 	struct glink_ssr *ssr;
+	struct rproc *rproc;
 
 	ssr = devm_kzalloc(&rpdev->dev, sizeof(*ssr), GFP_KERNEL);
 	if (!ssr)
@@ -125,14 +128,27 @@ static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
 
 	dev_set_drvdata(&rpdev->dev, ssr);
 
-	return qcom_register_ssr_notifier(&ssr->nb);
+	rproc = rproc_get_by_child(&rpdev->dev);
+	if (!rproc) {
+		dev_err(&rpdev->dev, "glink device not child of rproc\n");
+		return -EINVAL;
+	}
+
+	ssr->notifier_head = qcom_register_ssr_notifier(rproc, &ssr->nb);
+	if (IS_ERR(ssr->notifier_head)) {
+		dev_err(&rpdev->dev,
+			"failed to register for ssr notifications\n");
+		return PTR_ERR(ssr->notifier_head);
+	}
+
+	return 0;
 }
 
 static void qcom_glink_ssr_remove(struct rpmsg_device *rpdev)
 {
 	struct glink_ssr *ssr = dev_get_drvdata(&rpdev->dev);
 
-	qcom_unregister_ssr_notifier(&ssr->nb);
+	qcom_unregister_ssr_notifier(ssr->notifier_head, &ssr->nb);
 }
 
 static const struct rpmsg_device_id qcom_glink_ssr_match[] = {
diff --git a/include/linux/remoteproc/qcom_rproc.h b/include/linux/remoteproc/qcom_rproc.h
index fa8e386..89e830a 100644
--- a/include/linux/remoteproc/qcom_rproc.h
+++ b/include/linux/remoteproc/qcom_rproc.h
@@ -2,20 +2,27 @@
 #define __QCOM_RPROC_H__
 
 struct notifier_block;
+struct rproc;
 
 #if IS_ENABLED(CONFIG_QCOM_RPROC_COMMON)
 
-int qcom_register_ssr_notifier(struct notifier_block *nb);
-void qcom_unregister_ssr_notifier(struct notifier_block *nb);
+void *qcom_register_ssr_notifier(struct rproc *rproc,
+				 struct notifier_block *nb);
+int qcom_unregister_ssr_notifier(void *notify, struct notifier_block *nb);
 
 #else
 
-static inline int qcom_register_ssr_notifier(struct notifier_block *nb)
+static inline void *qcom_register_ssr_notifier(struct rproc *rproc,
+					       struct notifier_block *nb)
 {
-	return 0;
+	return NULL;
 }
 
-static inline void qcom_unregister_ssr_notifier(struct notifier_block *nb) {}
+static inline int qcom_unregister_ssr_notifier(void *notify,
+					       struct notifier_block *nb)
+{
+	return 0;
+}
 
 #endif
 
-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
