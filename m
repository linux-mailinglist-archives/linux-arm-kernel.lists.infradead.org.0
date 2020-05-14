Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7691D2DB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 13:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CD0IzdY1E4I7LiGiTO7YVwIQQwYtoH0eRv4Ue9Ybfqk=; b=n8j8IZodrGxH5v
	KPdZGDH/uCVwzMDRXEZUlFuSKzV0o46PfcXi4OxO/IsdUt3JL5YEh+ALlDc+VXWCquwYnx11bxtDU
	TycZJzdld9Wkosn4rz7s7P9bEvTwpyoDdSVuA3nXzfaztnJZ924+7TqSNLe5JRaiTb7uVGu+W1xnV
	aPPjNcVEYm7uCKGIBKbkL/NiECQ/MKkJHJCvQllKpGSYugzOuFXpraorj7i3F95qbfeJUlWYhs+CI
	Fo/VbX9kBnewEYI0PkFMdpPf8ABbGS+/QfrbmjRHPr//viD+1oWuptUJRBYHeFse5XQOgQbOHuxfl
	RcyZWLztCbhBd/5g/FfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZBbA-0006Ku-3N; Thu, 14 May 2020 11:00:20 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZBat-0004wZ-57
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 11:00:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589454004; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=XXh5+LWOjvzZ2TuFCskcCvNUWMxUWX8AwU8p78yuh8Y=;
 b=Zyx91KhCjrylLzSWpw4NI/c3cSwCYq2aIxWVyw6l2HiwiYLWBRwdFCYTOS4lyxFTtLqF5HUn
 duVNMZ2af3bDtNZ1ETQKTKMZmp0gJDpji17+rD93iheUHQHcnYS0dTonGlZoWHOL/2DKXuiK
 B9A9zkwI4a3nQK7EM7psVr/8sqg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebd2492.7f70815073e8-smtp-out-n01;
 Thu, 14 May 2020 10:59:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 04ED7C433F2; Thu, 14 May 2020 10:59:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E0357C433BA;
 Thu, 14 May 2020 10:59:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E0357C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH] coresight: etm4x: Add support to disable trace unit power up
Date: Thu, 14 May 2020 16:29:15 +0530
Message-Id: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_040005_034138_0766DD68 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Tingwei Zhang <tingwei@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tingwei Zhang <tingwei@codeaurora.org>

On some Qualcomm Technologies Inc. SoCs like SC7180, there
exists a hardware errata where the APSS (Application Processor
SubSystem)/CPU watchdog counter is stopped when ETM register
TRCPDCR.PU=1. Since the ETMs share the same power domain as
that of respective CPU cores, they are powered on when the
CPU core is powered on. So we can disable powering up of the
trace unit after checking for this errata via new property
called "qcom,tupwr-disable".

Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../devicetree/bindings/arm/coresight.txt     |  6 ++++
 drivers/hwtracing/coresight/coresight-etm4x.c | 29 ++++++++++++-------
 2 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index 846f6daae71b..d2030128fe46 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -108,6 +108,12 @@ its hardware characteristcs.
 	* arm,cp14: must be present if the system accesses ETM/PTM management
 	  registers via co-processor 14.
 
+	* qcom,tupwr-disable: boolean. Indicates that trace unit power up can
+	  be disabled on Qualcomm Technologies Inc. systems where ETMs are in
+	  the same power domain as their CPU cores. This property is required
+	  to identify such systems with hardware errata where the CPU watchdog
+	  counter is stopped when TRCPDCR.PU=1.
+
 * Optional property for TMC:
 
 	* arm,buffer-size: size of contiguous buffer space for TMC ETR
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index fb0f5f4f3a91..6886b44f6947 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -104,6 +104,11 @@ struct etm4_enable_arg {
 	int rc;
 };
 
+static inline bool etm4_can_disable_tupwr(struct device *dev)
+{
+	return fwnode_property_present(dev_fwnode(dev), "qcom,tupwr-disable");
+}
+
 static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 {
 	int i, rc;
@@ -196,12 +201,14 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 	writel_relaxed(config->vmid_mask0, drvdata->base + TRCVMIDCCTLR0);
 	writel_relaxed(config->vmid_mask1, drvdata->base + TRCVMIDCCTLR1);
 
-	/*
-	 * Request to keep the trace unit powered and also
-	 * emulation of powerdown
-	 */
-	writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
-		       drvdata->base + TRCPDCR);
+	if (!etm4_can_disable_tupwr(etm_dev)) {
+		/*
+		 * Request to keep the trace unit powered and also
+		 * emulation of powerdown
+		 */
+		writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
+			       drvdata->base + TRCPDCR);
+	}
 
 	/* Enable the trace unit */
 	writel_relaxed(1, drvdata->base + TRCPRGCTLR);
@@ -476,10 +483,12 @@ static void etm4_disable_hw(void *info)
 
 	CS_UNLOCK(drvdata->base);
 
-	/* power can be removed from the trace unit now */
-	control = readl_relaxed(drvdata->base + TRCPDCR);
-	control &= ~TRCPDCR_PU;
-	writel_relaxed(control, drvdata->base + TRCPDCR);
+	if (!etm4_can_disable_tupwr(etm_dev)) {
+		/* power can be removed from the trace unit now */
+		control = readl_relaxed(drvdata->base + TRCPDCR);
+		control &= ~TRCPDCR_PU;
+		writel_relaxed(control, drvdata->base + TRCPDCR);
+	}
 
 	control = readl_relaxed(drvdata->base + TRCPRGCTLR);
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
