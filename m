Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D9F1ACD6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dkHzXmJJdWlI9++Gk4bqRSGa5v2pqcgmQEXXtNRICSs=; b=Ca27VhkWHx/xJ0
	5jHGP3mL3dxsfot+rVKkAhb5Rc1bt6eBRBFO2uMxFaaqR/DuA4zKN1opiWNTxYfp9DunFQvphbwOv
	bxgL1pfOH+ZPl/RsHTttfuc+AYlj2GrwJaxDwEJs2HYZN9KLAFSzD3i2QwrPlhZZZ4X+Nvan2hBQI
	2Axk4Up8suaXr3gBFa9P/6RTW0TalkOQsp5YjK6q59guQOWMBkK+UNj17PSFlqtqWtbEVwSEMUFkF
	s56PgmxE3uWtafjug7R1R1u1D5alQnibY/Bk9NlH/soz4j+om1Zc6JJbjYBEM0NOdbrXrssud37Bg
	ZB5exIFIcoX0CH5xc8gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7Ci-0001fQ-0s; Thu, 16 Apr 2020 16:17:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7Ap-0008No-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:15:37 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587053733; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=uiTtZTUVcrXfRLw4Pyx+w5Ah1e9TiEjRyiJheqElgkA=;
 b=ozBI6rrHHJovkYfyBWegrvyoof5Jrli/ntXjXkG6Na6quDYscPPq3NSqF2ZsgQGimCYeCfzC
 wgXZhSeX8MzDV8I8KQUfGbPTRPZKUxjy7poXUGqbkCej8iipeLZc8p0MMTuYEvwyPF3rI7dA
 9wVD5ZUxC7fMHzPjf+w0YRD7pts=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e988498.7ff5c5919f80-smtp-out-n05;
 Thu, 16 Apr 2020 16:15:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 37289C44788; Thu, 16 Apr 2020 16:15:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 62E86C433CB;
 Thu, 16 Apr 2020 16:15:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 62E86C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, mike.leach@linaro.org,
 Stephen Boyd <swboyd@chromium.org>
Subject: [PATCHv2] coresight: tmc: Fix TMC mode read in tmc_read_prepare_etb()
Date: Thu, 16 Apr 2020 21:44:59 +0530
Message-Id: <20200416161459.29855-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091533_556567_B261B52A 
X-CRM114-Status: GOOD (  14.59  )
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
Cc: linux-arm-msm@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some QCOM platforms like SC7180, SDM845 and SM8150,
reading TMC mode register without proper coresight power
management can lead to async exceptions like the one in
the call trace below in tmc_read_prepare_etb(). This can
happen if the user tries to read the TMC etf data via
device node without setting up source and the sink first.
Fix this by having a check for coresight sysfs mode
before reading TMC mode management register.

 Kernel panic - not syncing: Asynchronous SError Interrupt
 CPU: 7 PID: 2605 Comm: hexdump Tainted: G S                5.4.30 #122
 Call trace:
  dump_backtrace+0x0/0x188
  show_stack+0x20/0x2c
  dump_stack+0xdc/0x144
  panic+0x168/0x36c
  panic+0x0/0x36c
  arm64_serror_panic+0x78/0x84
  do_serror+0x130/0x138
  el1_error+0x84/0xf8
  tmc_read_prepare_etb+0x88/0xb8
  tmc_open+0x40/0xd8
  misc_open+0x120/0x158
  chrdev_open+0xb8/0x1a4
  do_dentry_open+0x268/0x3a0
  vfs_open+0x34/0x40
  path_openat+0x39c/0xdf4
  do_filp_open+0x90/0x10c
  do_sys_open+0x150/0x3e8
  __arm64_compat_sys_openat+0x28/0x34
  el0_svc_common+0xa8/0x160
  el0_svc_compat_handler+0x2c/0x38
  el0_svc_compat+0x8/0x10

Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
Reported-by: Stephen Boyd <swboyd@chromium.org>
Suggested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
v2:
 * Move the TMC mode read under CS_MODE_SYSFS as per Mathieu
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d0cc3985b72a..36cce2bfb744 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -596,13 +596,6 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
 		goto out;
 	}
 
-	/* There is no point in reading a TMC in HW FIFO mode */
-	mode = readl_relaxed(drvdata->base + TMC_MODE);
-	if (mode != TMC_MODE_CIRCULAR_BUFFER) {
-		ret = -EINVAL;
-		goto out;
-	}
-
 	/* Don't interfere if operated from Perf */
 	if (drvdata->mode == CS_MODE_PERF) {
 		ret = -EINVAL;
@@ -616,8 +609,15 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
 	}
 
 	/* Disable the TMC if need be */
-	if (drvdata->mode == CS_MODE_SYSFS)
+	if (drvdata->mode == CS_MODE_SYSFS) {
+		/* There is no point in reading a TMC in HW FIFO mode */
+		mode = readl_relaxed(drvdata->base + TMC_MODE);
+		if (mode != TMC_MODE_CIRCULAR_BUFFER) {
+			ret = -EINVAL;
+			goto out;
+		}
 		__tmc_etb_disable_hw(drvdata);
+	}
 
 	drvdata->reading = true;
 out:
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
