Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1EC1A2C77
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dTucL83KNYRuNmjr9/j2YkeFKnG2WH/4nhw8wS5NLEA=; b=CUyUATizlP6A7BIWrYf97DJqiY
	MHL09ABYON7J0ZYPBmeTRAESI9M35I0ricX1eXuwJLVpzLMD/nZxFuAULD/skyK6aCwKjT3VFii/4
	8bZm2agrFafb01nzW/DDtL7b5rQnnYxEQ9v1+17kkd4k87RGzjr3Rb95Yl8xRL7pW1itVGXaEFXPk
	s8vjM75xWTPuVmP1XwXW1La0YoDotJrD+1hsh04w5tE9emTA4Owo+cRHqzuM09qSdtvZYcOkh3S0V
	HLwpsgB0vYYHhJmtgVhH3C71qG1ehNUYxoonSJb2cYRCV7TXe1dsOAp/vFjCV6huE2m3XNE1V4/vS
	mqLY4Kww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKGH-0007VS-Vj; Wed, 08 Apr 2020 23:37:37 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKFn-00076t-WC
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 23:37:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586389031; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=qptNmHUGIaiinw/HDGnYvf9ekz8pYIo5r0zLW+lMxJ4=;
 b=CaUs+1dbWWzYl4GnntLFRodUGRkAzVx0jcxm8tuIkYoFC6C9Xm7sFTtKdPfqPtxUx1arx9rT
 Ypdv9D5aDJHni2WUoMeQBe1E4EvmEOj2uzrgNyh8M18uhdG1Z/9bpHkCqv7LEdGkoVW0+1qn
 uhxjH2Zp3Rsv12girBTTDgu7isw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8e6020.7f9558cd1dc0-smtp-out-n03;
 Wed, 08 Apr 2020 23:37:04 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D2586C433F2; Wed,  8 Apr 2020 23:37:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A48CEC44791;
 Wed,  8 Apr 2020 23:37:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A48CEC44791
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH v2 6/6] remoteproc: qcom: Add notification types to SSR
Date: Wed,  8 Apr 2020 16:36:43 -0700
Message-Id: <1586389003-26675-7-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_163711_428587_C5A4FBE0 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The SSR subdevice only adds callback for the unprepare event. Add callbacks
for unprepare, start and prepare events. The client driver for a particular
remoteproc might be interested in knowing the status of the remoteproc
while undergoing SSR, not just when the remoteproc has finished shutting
down.

Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
---
 drivers/remoteproc/qcom_common.c | 39 +++++++++++++++++++++++++++++++++++----
 include/linux/remoteproc.h       | 15 +++++++++++++++
 2 files changed, 50 insertions(+), 4 deletions(-)

diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
index 56b0c3e..06611f2 100644
--- a/drivers/remoteproc/qcom_common.c
+++ b/drivers/remoteproc/qcom_common.c
@@ -183,9 +183,9 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
  *
  * Returns pointer to srcu notifier head on success, ERR_PTR on failure.
  *
- * This registers the @notify function as handler for restart notifications. As
- * remote processors are stopped this function will be called, with the rproc
- * pointer passed as a parameter.
+ * This registers the @notify function as handler for powerup/shutdown
+ * notifications. This function will be invoked inside the callbacks registered
+ * for the ssr subdevice, with the rproc pointer passed as a parameter.
  */
 void *qcom_register_ssr_notifier(struct rproc *rproc, struct notifier_block *nb)
 {
@@ -227,11 +227,39 @@ int qcom_unregister_ssr_notifier(void *notify, struct notifier_block *nb)
 }
 EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
 
+static int ssr_notify_prepare(struct rproc_subdev *subdev)
+{
+	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
+
+	srcu_notifier_call_chain(ssr->rproc_notif_list,
+				 RPROC_BEFORE_POWERUP, (void *)ssr->name);
+	return 0;
+}
+
+static int ssr_notify_start(struct rproc_subdev *subdev)
+{
+	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
+
+	srcu_notifier_call_chain(ssr->rproc_notif_list,
+				 RPROC_AFTER_POWERUP, (void *)ssr->name);
+	return 0;
+}
+
+static void ssr_notify_stop(struct rproc_subdev *subdev, bool crashed)
+{
+	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
+
+	srcu_notifier_call_chain(ssr->rproc_notif_list,
+				 RPROC_BEFORE_SHUTDOWN, (void *)ssr->name);
+}
+
+
 static void ssr_notify_unprepare(struct rproc_subdev *subdev)
 {
 	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
 
-	srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void *)ssr->name);
+	srcu_notifier_call_chain(ssr->rproc_notif_list,
+				 RPROC_AFTER_SHUTDOWN, (void *)ssr->name);
 }
 
 /**
@@ -248,6 +276,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
 {
 	ssr->name = ssr_name;
 	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
+	ssr->subdev.prepare = ssr_notify_prepare;
+	ssr->subdev.start = ssr_notify_start;
+	ssr->subdev.stop = ssr_notify_stop;
 	ssr->subdev.unprepare = ssr_notify_unprepare;
 	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
 								GFP_KERNEL);
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 687e1eb..facadb07 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -452,6 +452,21 @@ struct rproc_dump_segment {
 };
 
 /**
+ * enum rproc_notif_type - Different stages of remoteproc notifications
+ * @RPROC_BEFORE_SHUTDOWN:	unprepare stage of  remoteproc
+ * @RPROC_AFTER_SHUTDOWN:	stop stage of  remoteproc
+ * @RPROC_BEFORE_POWERUP:	prepare stage of  remoteproc
+ * @RPROC_AFTER_POWERUP:	start stage of  remoteproc
+ */
+enum rproc_notif_type {
+	RPROC_BEFORE_SHUTDOWN,
+	RPROC_AFTER_SHUTDOWN,
+	RPROC_BEFORE_POWERUP,
+	RPROC_AFTER_POWERUP,
+	RPROC_MAX
+};
+
+/**
  * struct rproc - represents a physical remote processor device
  * @node: list node of this rproc object
  * @domain: iommu domain
-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
