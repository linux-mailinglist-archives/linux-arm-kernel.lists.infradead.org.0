Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3150519EA61
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EWf4MywSBkCMYyMNQSNO2tgiDORH/Bcj7m6MRZdCmVQ=; b=M2pzbs9AxpJ+CQ
	irq9yYmB/YRYKkH3FHzDWxHxYeLkwCnWUeiK8h1ZB9dcE2pOqL2/LjX6bEtLuaeMOdThKqggkivHH
	czdgXfw4VqXDMgDV48ZruMjEtmI6IPvfn+CIQKwG9DY7TiMcgHej4Me+ejsv8KUJIe3HSkJFFwbyi
	+2k+hVz0Umf7ijtbrjetTmxr4ex9G4gG9oR/DHGu5JSt6palrBZrxNQVHMEdedx/A82mhK4XFC8yT
	W1NLeY5ts0pWyTT0ffM3sovUQqqs2KPyVQ2G9XNucePOClRKUOQxe5WzblZb99uPH1uhKiCYYvWk4
	djiYlSTB3jlsXUihde/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2WQ-000274-2m; Sun, 05 Apr 2020 10:28:58 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2WJ-00026P-2w
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:28:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586082532; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=vwamyz2dyPtvYzpgk3HF8HpV6xwHSgtU6f/aZSZ1WTc=;
 b=OJO/8yXJKO4F7Xpg/XhcSOsSOSL2tUWjw1dL++QvISZYyaKZuQP4hIV5fvVCX1Xns9i1bCOC
 6j4S8OF/Om3cDcMAs9kUmW2f4nfQ2HdSv3XmEnXi4vsdAP3mM3TPPFvn3dlAieXZZI5jmOIF
 YUIwmZizOvwKSaozHubuulQEnmw=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e89b2d0.7f1f1082ea78-smtp-out-n04;
 Sun, 05 Apr 2020 10:28:32 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 65C50C43636; Sun,  5 Apr 2020 10:28:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AC77DC433F2;
 Sun,  5 Apr 2020 10:28:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AC77DC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Mike Leach <mike.leach@linaro.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
Date: Sun,  5 Apr 2020 15:58:19 +0530
Message-Id: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_032852_518960_444F6BAF 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 30af4fb619e5 ("coresight: dynamic-replicator:
Handle multiple connections"), we do not make sure that
the other port is disabled when the dynamic replicator is
enabled. This is seen to cause the CPU hardlockup atleast
on SC7180 SoC when enabling ETM with ETR as the sink via
sysfs.

  Kernel panic - not syncing: Watchdog detected hard LOCKUP on cpu 0
  CPU: 7 PID: 0 Comm: swapper/7 Tainted: G S  B             5.4.25 #100
  Hardware name: Qualcomm Technologies, Inc. SC7180 IDP (DT)
  Call trace:
   dump_backtrace+0x0/0x188
   show_stack+0x20/0x2c
   dump_stack+0xdc/0x144
   panic+0x168/0x370
   arch_seccomp_spec_mitigate+0x0/0x14
   watchdog_timer_fn+0x68/0x290
   __hrtimer_run_queues+0x264/0x498
   hrtimer_interrupt+0xf0/0x22c
   arch_timer_handler_phys+0x40/0x50
   handle_percpu_devid_irq+0x8c/0x158
   __handle_domain_irq+0x84/0xc4
   gic_handle_irq+0x100/0x1c4
   el1_irq+0xbc/0x180
   arch_cpu_idle+0x3c/0x5c
   default_idle_call+0x1c/0x38
   do_idle+0x100/0x280
   cpu_startup_entry+0x24/0x28
   secondary_start_kernel+0x15c/0x170
  SMP: stopping secondary CPUs

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../hwtracing/coresight/coresight-replicator.c    | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index e7dc1c31d20d..f4eaa38f8f43 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -66,14 +66,16 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
 				     int inport, int outport)
 {
 	int rc = 0;
-	u32 reg;
+	u32 reg0, reg1;
 
 	switch (outport) {
 	case 0:
-		reg = REPLICATOR_IDFILTER0;
+		reg0 = REPLICATOR_IDFILTER0;
+		reg1 = REPLICATOR_IDFILTER1;
 		break;
 	case 1:
-		reg = REPLICATOR_IDFILTER1;
+		reg0 = REPLICATOR_IDFILTER1;
+		reg1 = REPLICATOR_IDFILTER0;
 		break;
 	default:
 		WARN_ON(1);
@@ -87,8 +89,11 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
 		rc = coresight_claim_device_unlocked(drvdata->base);
 
 	/* Ensure that the outport is enabled. */
-	if (!rc)
-		writel_relaxed(0x00, drvdata->base + reg);
+	if (!rc) {
+		writel_relaxed(0x00, drvdata->base + reg0);
+		writel_relaxed(0xff, drvdata->base + reg1);
+	}
+
 	CS_LOCK(drvdata->base);
 
 	return rc;
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
