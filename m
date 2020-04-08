Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CFA1A2C78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O3MSnkKJMTenQPGn7//Bvy1I6kK9D72OP5h2XgCu7wg=; b=KChxHAYUDD1xMO21BMQZjEDCtk
	ynOevRNgUAjN0daq+ugR8BMe9A2UaBsFeRUrQiuCZMchjzRCo4K75GJlDUN3llnCO1BrOr3KFaz9n
	joKlfAEE5D/UWIQzRDgpeU+5x/E+r6RM+z/UyQWdTQ/7bS52G6ECSSWOqoF2Um68Dtz1NOT/IVcd1
	B8vCD3xkSKyvRG/8gRwwD2HWRx+Xv0/QpISlC0T8jlUrjKw9IKNo/x462XRJHjXSJ08Ml+DwF8LJw
	e7YhpSHpUOQ2SzCLioEL7mPulaBF8b2BgTOdPg6nvSz0YtyRbNjJPf9oGERnaY2PDUGnQYKWZIBiE
	+zJAc6RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKGS-0007ja-Bd; Wed, 08 Apr 2020 23:37:48 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKFo-00077B-N6
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 23:37:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586389031; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=sd4ovfJpZhdxAUPqCMdrQUjnd3KMRkpIg+xta7RYHBA=;
 b=Gr+7qVWQN1R7MZxZRCXs84tFK4a1e70crT0TzE8CEO68/3ewluTHHKLnswzVmo1jwQpqkPLG
 Fzoki5gU+HbpCGOyAaeJGDKB/5+hJqb5A2G5cT6DyO+omUYf1RFEohEd91VjO6/VlRdj17q/
 gh0OKHQJD/n/xflDhl2qSJNzegQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8e601d.7ff5d066d5e0-smtp-out-n02;
 Wed, 08 Apr 2020 23:37:01 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E1432C43636; Wed,  8 Apr 2020 23:37:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0B99AC43637;
 Wed,  8 Apr 2020 23:37:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0B99AC43637
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH v2 2/6] remoteproc: sysmon: Add notifications for events
Date: Wed,  8 Apr 2020 16:36:39 -0700
Message-Id: <1586389003-26675-3-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_163712_059338_42230282 
X-CRM114-Status: GOOD (  12.82  )
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

Add notification for other stages of remoteproc boot and shutdown. This
includes adding callback functions for the prepare and unprepare events,
and fleshing out the callback function for start.

Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
---
 drivers/remoteproc/qcom_sysmon.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
index 1366050..851664e 100644
--- a/drivers/remoteproc/qcom_sysmon.c
+++ b/drivers/remoteproc/qcom_sysmon.c
@@ -439,8 +439,31 @@ static const struct qmi_ops ssctl_ops = {
 	.del_server = ssctl_del_server,
 };
 
+static int sysmon_prepare(struct rproc_subdev *subdev)
+{
+	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
+						  subdev);
+	struct sysmon_event event = {
+		.subsys_name = sysmon->name,
+		.ssr_event = SSCTL_SSR_EVENT_BEFORE_POWERUP
+	};
+
+	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
+
+	return 0;
+}
+
 static int sysmon_start(struct rproc_subdev *subdev)
 {
+	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
+						  subdev);
+	struct sysmon_event event = {
+		.subsys_name = sysmon->name,
+		.ssr_event = SSCTL_SSR_EVENT_AFTER_POWERUP
+	};
+
+	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
+
 	return 0;
 }
 
@@ -464,6 +487,18 @@ static void sysmon_stop(struct rproc_subdev *subdev, bool crashed)
 		sysmon_request_shutdown(sysmon);
 }
 
+static void sysmon_unprepare(struct rproc_subdev *subdev)
+{
+	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
+						  subdev);
+	struct sysmon_event event = {
+		.subsys_name = sysmon->name,
+		.ssr_event = SSCTL_SSR_EVENT_AFTER_SHUTDOWN
+	};
+
+	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
+}
+
 /**
  * sysmon_notify() - notify sysmon target of another's SSR
  * @nb:		notifier_block associated with sysmon instance
@@ -563,8 +598,10 @@ struct qcom_sysmon *qcom_add_sysmon_subdev(struct rproc *rproc,
 
 	qmi_add_lookup(&sysmon->qmi, 43, 0, 0);
 
+	sysmon->subdev.prepare = sysmon_prepare;
 	sysmon->subdev.start = sysmon_start;
 	sysmon->subdev.stop = sysmon_stop;
+	sysmon->subdev.unprepare = sysmon_unprepare;
 
 	rproc_add_subdev(rproc, &sysmon->subdev);
 
-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
