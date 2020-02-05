Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F89A1530A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pmymv/jfNEmHgkLBm4IcREpZtqKMgZYaM1LNftwQWAM=; b=IIgN8sv5CTWpB+hPyhZ/BHqpi/
	7MqchXXaO/O+YAkrG79EhYURizkpkkLDLCaySIS18mPJCZF0tFJ3wfg2N3RV+8jHVIu4/uNMDOYfr
	Zyai/aJZI6jqmXYe9KZjLwEOxWDov2B8ib6z+lZJPKDSdCxMZSRIl1UWH0G2IV9la3yjug6GCB2ut
	bA76o56JJmRcXvZzyn86LdrgVFLkc+zK1Nl9wKQqT/0Vn62r4dfofS2ZwikjkzZauLekWRPGqOHuA
	EOFgTFz0AZvu4g9SxUFyUe/KOGKkJxxrPFzOTU70Y6V4rZNNUxIuXVAfcY6oXhMhp0L97rdN+Ux8U
	Gd9ic08w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJlw-0001ED-TD; Wed, 05 Feb 2020 12:27:13 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJlV-0000sE-0N
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:26:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580905608; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=x+iZQ9XzDcSMxhDrHJl3nh+DtwFljq054K315F2nuJg=;
 b=rBdeT8wntoLUD0stIgMXwm52hChJMh2A34nZN/Hg3OMkMmz2inL+F3C9ip/BZXYy77lXQ6K+
 5Vixq4NSYRXP4dbjNEs/4gfJ6Y/hxhbb5kSlbENOShSf4DYSFXmwCGjLsuwXWB2qdpkIlQMn
 Kp1+lbMPsFMsNyR7r1yLg+uVggU=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3ab482.7f51f69db068-smtp-out-n01;
 Wed, 05 Feb 2020 12:26:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC3B3C433CB; Wed,  5 Feb 2020 12:26:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mkshah-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 83D9EC447A2;
 Wed,  5 Feb 2020 12:26:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 83D9EC447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
From: Maulik Shah <mkshah@codeaurora.org>
To: swboyd@chromium.org, agross@kernel.org, david.brown@linaro.org,
 sudeep.holla@arm.com, Lorenzo.Pieralisi@arm.com
Subject: [PATCH v4 2/6] drivers: qcom: rpmh: remove rpmh_flush export
Date: Wed,  5 Feb 2020 17:56:08 +0530
Message-Id: <1580905572-22712-3-git-send-email-mkshah@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580905572-22712-1-git-send-email-mkshah@codeaurora.org>
References: <1580905572-22712-1-git-send-email-mkshah@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_042648_559258_7F656FED 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 dianders@chromium.org, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org, ilina@codeaurora.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

rpmh_flush() was exported with the idea that an external entity
operation during CPU idle would know when to flush the sleep and wake
TCS. Since, this is not the case when defining a power domain for the
RSC. Remove the function export and instead allow the function to be
called internally.

Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/soc/qcom/rpmh-internal.h |  1 +
 drivers/soc/qcom/rpmh.c          | 18 ++++++++----------
 include/soc/qcom/rpmh.h          |  5 -----
 3 files changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/soc/qcom/rpmh-internal.h b/drivers/soc/qcom/rpmh-internal.h
index a7bbbb6..6eec32b 100644
--- a/drivers/soc/qcom/rpmh-internal.h
+++ b/drivers/soc/qcom/rpmh-internal.h
@@ -110,5 +110,6 @@ int rpmh_rsc_write_ctrl_data(struct rsc_drv *drv,
 int rpmh_rsc_invalidate(struct rsc_drv *drv);
 
 void rpmh_tx_done(const struct tcs_request *msg, int r);
+int rpmh_flush(struct rpmh_ctrlr *ctrlr);
 
 #endif /* __RPM_INTERNAL_H__ */
diff --git a/drivers/soc/qcom/rpmh.c b/drivers/soc/qcom/rpmh.c
index 3a4579d..eb0ded0 100644
--- a/drivers/soc/qcom/rpmh.c
+++ b/drivers/soc/qcom/rpmh.c
@@ -427,11 +427,10 @@ static int is_req_valid(struct cache_req *req)
 		req->sleep_val != req->wake_val);
 }
 
-static int send_single(const struct device *dev, enum rpmh_state state,
+static int send_single(struct rpmh_ctrlr *ctrlr, enum rpmh_state state,
 		       u32 addr, u32 data)
 {
-	DEFINE_RPMH_MSG_ONSTACK(dev, state, NULL, rpm_msg);
-	struct rpmh_ctrlr *ctrlr = get_rpmh_ctrlr(dev);
+	DEFINE_RPMH_MSG_ONSTACK(NULL, state, NULL, rpm_msg);
 
 	/* Wake sets are always complete and sleep sets are not */
 	rpm_msg.msg.wait_for_compl = (state == RPMH_WAKE_ONLY_STATE);
@@ -445,7 +444,7 @@ static int send_single(const struct device *dev, enum rpmh_state state,
 /**
  * rpmh_flush: Flushes the buffered active and sleep sets to TCS
  *
- * @dev: The device making the request
+ * @ctrlr: controller making request to flush cached data
  *
  * Return: -EBUSY if the controller is busy, probably waiting on a response
  * to a RPMH request sent earlier.
@@ -454,10 +453,9 @@ static int send_single(const struct device *dev, enum rpmh_state state,
  * that is powering down the entire system. Since no other RPMH API would be
  * executing at this time, it is safe to run lockless.
  */
-int rpmh_flush(const struct device *dev)
+int rpmh_flush(struct rpmh_ctrlr *ctrlr)
 {
 	struct cache_req *p;
-	struct rpmh_ctrlr *ctrlr = get_rpmh_ctrlr(dev);
 	int ret;
 
 	if (!ctrlr->dirty) {
@@ -480,11 +478,12 @@ int rpmh_flush(const struct device *dev)
 				 __func__, p->addr, p->sleep_val, p->wake_val);
 			continue;
 		}
-		ret = send_single(dev, RPMH_SLEEP_STATE, p->addr, p->sleep_val);
+		ret = send_single(ctrlr, RPMH_SLEEP_STATE, p->addr,
+				  p->sleep_val);
 		if (ret)
 			return ret;
-		ret = send_single(dev, RPMH_WAKE_ONLY_STATE,
-				  p->addr, p->wake_val);
+		ret = send_single(ctrlr, RPMH_WAKE_ONLY_STATE, p->addr,
+				  p->wake_val);
 		if (ret)
 			return ret;
 	}
@@ -493,7 +492,6 @@ int rpmh_flush(const struct device *dev)
 
 	return 0;
 }
-EXPORT_SYMBOL(rpmh_flush);
 
 /**
  * rpmh_invalidate: Invalidate all sleep and active sets
diff --git a/include/soc/qcom/rpmh.h b/include/soc/qcom/rpmh.h
index 619e07c..f9ec353 100644
--- a/include/soc/qcom/rpmh.h
+++ b/include/soc/qcom/rpmh.h
@@ -20,8 +20,6 @@ int rpmh_write_async(const struct device *dev, enum rpmh_state state,
 int rpmh_write_batch(const struct device *dev, enum rpmh_state state,
 		     const struct tcs_cmd *cmd, u32 *n);
 
-int rpmh_flush(const struct device *dev);
-
 int rpmh_invalidate(const struct device *dev);
 
 #else
@@ -40,9 +38,6 @@ static inline int rpmh_write_batch(const struct device *dev,
 				   const struct tcs_cmd *cmd, u32 *n)
 { return -ENODEV; }
 
-static inline int rpmh_flush(const struct device *dev)
-{ return -ENODEV; }
-
 static inline int rpmh_invalidate(const struct device *dev)
 { return -ENODEV; }
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
