Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C17165565
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 03:59:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/C0vDBIrK1rVgHYjiTl/3qDSDsZlH/oMxhOFSPjryK0=; b=NBD/MLfp2UWYzYGjqEb1ZCFUIN
	2GA8DWJaVnNAXb1O8N/MVFCfZwbGQEZEVy4nGKwvsFtxOaNHqf0u+/3u7jFCQJUnDw12GJszZS2oQ
	X/j0EI2ojQSL9gR9QCzdXZcQdTSMqN3gE6ySFgBg6PahLQSOmaDMLR3CqXYs6wgHAovfkVJgCaH7e
	9plC3PzChdFq2KWF/FbkybGmGlDBeAfv8vvr4lhNRwP/e9r9A+0zzgq72J4f45zBLzpe3d84jXnIb
	4NkRD02bL0aNyQFMmDM+cNiuHrzDDK3X6Jqx/BOCufOe0+mTqV/gd7+9WNBQ/rJeX6Qq+y8WFhr7z
	xwlFgk1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4c3j-0001b4-SC; Thu, 20 Feb 2020 02:59:27 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4c2L-0000NX-9x
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 02:58:08 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582167485; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=bml65BiZKqC8La35iek9YW4e+KEfIXfCCZ0eFO8GDNY=;
 b=FLaxEvb17W5LKFlgHxwmwVf6mQIwLNPG6mgp9Hk0ozhPI8LhzDKE5XGjnwm7vrJcxV2d1sOb
 JWd4///RMo/EPIN6T7no+U5acQXD8kndWcOBBDdVvuFfHUdFVAZKwNUI7+44hzb9Sbf0GoeS
 lMkAmauNvyM9LfS/YB8Q7917IXQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4df5b3.7fa3ae4723e8-smtp-out-n02;
 Thu, 20 Feb 2020 02:57:55 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 406A7C447A4; Thu, 20 Feb 2020 02:57:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 02FFDC4479C;
 Thu, 20 Feb 2020 02:57:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 02FFDC4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH 1/6] remoteproc: sysmon: Add ability to send type of
 notification
Date: Wed, 19 Feb 2020 18:57:40 -0800
Message-Id: <1582167465-2549-2-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_185805_654030_2213F831 
X-CRM114-Status: GOOD (  17.13  )
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

Current implementation of the sysmon driver does not support adding
notifications for other remoteproc events - prepare, start, unprepare.
Clients on the remoteproc side might be interested in knowing when a
remoteproc boots up. This change adds the ability to send the notification
type along with the name. For example, audio DSP is interested in knowing
when modem has crashed so that it can perform cleanup and wait for modem to
boot up before it starts processing data again.

Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
---
 drivers/remoteproc/qcom_sysmon.c | 54 +++++++++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 17 deletions(-)

diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
index faf3822..1366050 100644
--- a/drivers/remoteproc/qcom_sysmon.c
+++ b/drivers/remoteproc/qcom_sysmon.c
@@ -46,6 +46,25 @@ struct qcom_sysmon {
 	struct sockaddr_qrtr ssctl;
 };
 
+enum {
+	SSCTL_SSR_EVENT_BEFORE_POWERUP,
+	SSCTL_SSR_EVENT_AFTER_POWERUP,
+	SSCTL_SSR_EVENT_BEFORE_SHUTDOWN,
+	SSCTL_SSR_EVENT_AFTER_SHUTDOWN,
+};
+
+static const char * const sysmon_state_string[] = {
+	[SSCTL_SSR_EVENT_BEFORE_POWERUP]	= "before_powerup",
+	[SSCTL_SSR_EVENT_AFTER_POWERUP]		= "after_powerup",
+	[SSCTL_SSR_EVENT_BEFORE_SHUTDOWN]	= "before_shutdown",
+	[SSCTL_SSR_EVENT_AFTER_SHUTDOWN]	= "after_shutdown",
+};
+
+struct sysmon_event {
+	const char *subsys_name;
+	u32 ssr_event;
+};
+
 static DEFINE_MUTEX(sysmon_lock);
 static LIST_HEAD(sysmon_list);
 
@@ -54,13 +73,15 @@ static LIST_HEAD(sysmon_list);
  * @sysmon:	sysmon context
  * @name:	other remote's name
  */
-static void sysmon_send_event(struct qcom_sysmon *sysmon, const char *name)
+static void sysmon_send_event(struct qcom_sysmon *sysmon,
+			      const struct sysmon_event *event)
 {
 	char req[50];
 	int len;
 	int ret;
 
-	len = snprintf(req, sizeof(req), "ssr:%s:before_shutdown", name);
+	len = snprintf(req, sizeof(req), "ssr:%s:%s", event->subsys_name,
+		       sysmon_state_string[event->ssr_event]);
 	if (len >= sizeof(req))
 		return;
 
@@ -149,13 +170,6 @@ static int sysmon_callback(struct rpmsg_device *rpdev, void *data, int count,
 #define SSCTL_SUBSYS_NAME_LENGTH	15
 
 enum {
-	SSCTL_SSR_EVENT_BEFORE_POWERUP,
-	SSCTL_SSR_EVENT_AFTER_POWERUP,
-	SSCTL_SSR_EVENT_BEFORE_SHUTDOWN,
-	SSCTL_SSR_EVENT_AFTER_SHUTDOWN,
-};
-
-enum {
 	SSCTL_SSR_EVENT_FORCED,
 	SSCTL_SSR_EVENT_GRACEFUL,
 };
@@ -331,7 +345,8 @@ static void ssctl_request_shutdown(struct qcom_sysmon *sysmon)
  * @sysmon:	sysmon context
  * @name:	other remote's name
  */
-static void ssctl_send_event(struct qcom_sysmon *sysmon, const char *name)
+static void ssctl_send_event(struct qcom_sysmon *sysmon,
+			     const struct sysmon_event *event)
 {
 	struct ssctl_subsys_event_resp resp;
 	struct ssctl_subsys_event_req req;
@@ -346,9 +361,9 @@ static void ssctl_send_event(struct qcom_sysmon *sysmon, const char *name)
 	}
 
 	memset(&req, 0, sizeof(req));
-	strlcpy(req.subsys_name, name, sizeof(req.subsys_name));
+	strlcpy(req.subsys_name, event->subsys_name, sizeof(req.subsys_name));
 	req.subsys_name_len = strlen(req.subsys_name);
-	req.event = SSCTL_SSR_EVENT_BEFORE_SHUTDOWN;
+	req.event = event->ssr_event;
 	req.evt_driven_valid = true;
 	req.evt_driven = SSCTL_SSR_EVENT_FORCED;
 
@@ -432,8 +447,12 @@ static int sysmon_start(struct rproc_subdev *subdev)
 static void sysmon_stop(struct rproc_subdev *subdev, bool crashed)
 {
 	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon, subdev);
+	struct sysmon_event event = {
+		.subsys_name = sysmon->name,
+		.ssr_event = SSCTL_SSR_EVENT_BEFORE_SHUTDOWN
+	};
 
-	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)sysmon->name);
+	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
 
 	/* Don't request graceful shutdown if we've crashed */
 	if (crashed)
@@ -456,19 +475,20 @@ static int sysmon_notify(struct notifier_block *nb, unsigned long event,
 {
 	struct qcom_sysmon *sysmon = container_of(nb, struct qcom_sysmon, nb);
 	struct rproc *rproc = sysmon->rproc;
-	const char *ssr_name = data;
+	struct sysmon_event *sysmon_event = data;
 
 	/* Skip non-running rprocs and the originating instance */
-	if (rproc->state != RPROC_RUNNING || !strcmp(data, sysmon->name)) {
+	if (rproc->state != RPROC_RUNNING ||
+	    !strcmp(sysmon_event->subsys_name, sysmon->name)) {
 		dev_dbg(sysmon->dev, "not notifying %s\n", sysmon->name);
 		return NOTIFY_DONE;
 	}
 
 	/* Only SSCTL version 2 supports SSR events */
 	if (sysmon->ssctl_version == 2)
-		ssctl_send_event(sysmon, ssr_name);
+		ssctl_send_event(sysmon, sysmon_event);
 	else if (sysmon->ept)
-		sysmon_send_event(sysmon, ssr_name);
+		sysmon_send_event(sysmon, sysmon_event);
 
 	return NOTIFY_DONE;
 }
-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
