Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0A1165561
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 03:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0t67Q5nauwSsKG7Oz7qiCzoxUWpmPFDRBxahxka7DCY=; b=MXGrNLHnYOcXmujSKCE6ktAb5D
	GkU037rgVSjZfx6hslpRV7aJIVlWBSQp/DfAvGt1qkASV6s8UscXWdDnRQeM9Fap8xH3B3t75tj4k
	FVBAV9/83o2Awme/8Rkddc+v/JE6LTKqUSQA3XRzoYOqTbgb2qD7oS/gMlTheqcbzsy1wlB+QgNrT
	5AA8CPji0px4oXIbjcCXmVB+tN8J1A7iwoIrjjct5wqmYNoeFm9VnWXOHHk+GnrghGlv8SmZb6m3U
	8mI6G4QekoaTqITeULh54xXB3LLkXYhBMNDxaj/uJR3+SuKuJ6i9WA2c9y6Q0nMTqL5p8hbltNmez
	PwQrWCTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4c2q-0000ZD-PS; Thu, 20 Feb 2020 02:58:32 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4c2L-0000NI-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 02:58:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582167479; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=9u8BlgWrFHwG4Ht6CWfv3d3zqguh9fPrghJWyshx0+Y=;
 b=dqvqspdWTu/u6HDe5uyFGXoHRdRjCSa1i+dcU6gjC+tpoxY/SUgKb1hRvfwMpRUN07K6ODm0
 OMwzyisUafeULzS8fIbMRDFjnlLPqOpSoQqaht/rVI3NX0662/gry4YZGYY72ZZimWKKLHYV
 HFYqy/a0I3lCiuiCt0nTRRt6Rx8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4df5b5.7f4a2daad570-smtp-out-n03;
 Thu, 20 Feb 2020 02:57:57 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 06A68C447A3; Thu, 20 Feb 2020 02:57:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E6962C43383;
 Thu, 20 Feb 2020 02:57:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E6962C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH 4/6] drivers: remoteproc: Add name field for every subdevice
Date: Wed, 19 Feb 2020 18:57:43 -0800
Message-Id: <1582167465-2549-5-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_185801_710716_D899E603 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
 Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rishabh Bhatnagar <rishabhb@codeaurora.org>

When a client driver wishes to utilize functionality from a particular
subdevice of a remoteproc, it cannot differentiate between the subdevices
that have been added. This patch allows the client driver to distinguish
between subdevices and thus utilize their functionality.

Signed-off-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>
Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
---
 drivers/remoteproc/qcom_common.c | 6 ++++++
 include/linux/remoteproc.h       | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
index 60650bc..5d59538 100644
--- a/drivers/remoteproc/qcom_common.c
+++ b/drivers/remoteproc/qcom_common.c
@@ -58,6 +58,7 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
 	glink->dev = dev;
 	glink->subdev.start = glink_subdev_start;
 	glink->subdev.stop = glink_subdev_stop;
+	glink->subdev.name = kstrdup("glink", GFP_KERNEL);
 
 	rproc_add_subdev(rproc, &glink->subdev);
 }
@@ -73,6 +74,7 @@ void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glin
 	if (!glink->node)
 		return;
 
+	kfree(glink->subdev.name);
 	rproc_remove_subdev(rproc, &glink->subdev);
 	of_node_put(glink->node);
 }
@@ -154,6 +156,7 @@ void qcom_add_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
 	smd->dev = dev;
 	smd->subdev.start = smd_subdev_start;
 	smd->subdev.stop = smd_subdev_stop;
+	smd->subdev.name = kstrdup("smd", GFP_KERNEL);
 
 	rproc_add_subdev(rproc, &smd->subdev);
 }
@@ -169,6 +172,7 @@ void qcom_remove_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
 	if (!smd->node)
 		return;
 
+	kfree(smd->subdev.name);
 	rproc_remove_subdev(rproc, &smd->subdev);
 	of_node_put(smd->node);
 }
@@ -220,6 +224,7 @@ void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
 			 const char *ssr_name)
 {
 	ssr->name = ssr_name;
+	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
 	ssr->subdev.unprepare = ssr_notify_unprepare;
 
 	rproc_add_subdev(rproc, &ssr->subdev);
@@ -233,6 +238,7 @@ EXPORT_SYMBOL_GPL(qcom_add_ssr_subdev);
  */
 void qcom_remove_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr)
 {
+	kfree(ssr->subdev.name);
 	rproc_remove_subdev(rproc, &ssr->subdev);
 }
 EXPORT_SYMBOL_GPL(qcom_remove_ssr_subdev);
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index e2eaba9..e2f60cc 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -519,6 +519,7 @@ struct rproc {
 /**
  * struct rproc_subdev - subdevice tied to a remoteproc
  * @node: list node related to the rproc subdevs list
+ * @name: name of the subdevice
  * @prepare: prepare function, called before the rproc is started
  * @start: start function, called after the rproc has been started
  * @stop: stop function, called before the rproc is stopped; the @crashed
@@ -527,6 +528,7 @@ struct rproc {
  */
 struct rproc_subdev {
 	struct list_head node;
+	char *name;
 
 	int (*prepare)(struct rproc_subdev *subdev);
 	int (*start)(struct rproc_subdev *subdev);
-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
