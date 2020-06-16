Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D648F1FA802
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L32LGlYAUPk1z/HL30jt41Xoje61F39aIB6878MOpgE=; b=sjXKjdw9ftBo7s
	75pC52NSSaia51z1V+c7FgaZGpTvCLDhGmpQnGLDJW61yLVCE7Yho7w6K2/8SWJ5thJH2x+0hiydS
	74rFwV8Dzw0WlJ4cVuhvZZhCkII5BZoR4F1/xpnl2HlvZurGDoazvXr1dhwvILW7BU/Edoeoy6yyq
	PMcjqZ/yYbrYFvhb2FULO9CVy3aTLUUWMpCuiBpq+9p1aeavI7IRtY/Z9p9N0oD6aqHrDzplPgo4K
	TB5Fvr8urEdV8/0Gbv1QdtzqSA+p6X/xLAZEXK/Iu5n2yqY4i0NLqeLBccuKg6GFtdP8BXg80oGrl
	RYVBYAJK32igQkoWZKBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl3d0-0008Ml-CJ; Tue, 16 Jun 2020 04:55:18 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl3ck-00077n-3P
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:55:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592283304; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=jZgiC6HhF4H2yMBLQ2oV+GtHGZHze8D5AayubjjnhoU=;
 b=jLPMOvJTn138CNaxQCVQn8dvIc3y2fpJE5UnMYDQIGuynBGMsUNs8AQIDhAU7N4t3Jc3YTac
 fRKsJ74CHuNRpBQ2F02YnTbLt7L0d5Uw8e3nmTgqQr3Gfif3zSmR+pcdwzIp5m2K69iqb86k
 5Yt4QTcwJSVLewha94zEumRysf4=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n14.prod.us-east-1.postgun.com with SMTP id
 5ee8509cbfb34e631c76c0dd (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 16 Jun 2020 04:54:52
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2D29AC43391; Tue, 16 Jun 2020 04:54:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C065AC433CA;
 Tue, 16 Jun 2020 04:54:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C065AC433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH] coresight: tmc: Fix TMC mode read in tmc_read_unprepare_etb()
Date: Tue, 16 Jun 2020 10:24:41 +0530
Message-Id: <20200616045441.27483-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_215504_741785_232977BB 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reading TMC mode register without proper coresight power
management can lead to exceptions like the one in the call
trace below in tmc_read_unprepare_etb() when the trace data
is read after the sink is disabled. So fix this by having
a check for coresight sysfs mode before reading TMC mode
management register in tmc_read_unprepare_etb() similar to
tmc_read_prepare_etb().

  SError Interrupt on CPU6, code 0xbe000411 -- SError
  pstate: 80400089 (Nzcv daIf +PAN -UAO)
  pc : tmc_read_unprepare_etb+0x74/0x108
  lr : tmc_read_unprepare_etb+0x54/0x108
  sp : ffffff80d9507c30
  x29: ffffff80d9507c30 x28: ffffff80b3569a0c
  x27: 0000000000000000 x26: 00000000000a0001
  x25: ffffff80cbae9550 x24: 0000000000000010
  x23: ffffffd07296b0f0 x22: ffffffd0109ee028
  x21: 0000000000000000 x20: ffffff80d19e70e0
  x19: ffffff80d19e7080 x18: 0000000000000000
  x17: 0000000000000000 x16: 0000000000000000
  x15: 0000000000000000 x14: 0000000000000000
  x13: 0000000000000000 x12: 0000000000000000
  x11: 0000000000000000 x10: dfffffd000000001
  x9 : 0000000000000000 x8 : 0000000000000002
  x7 : ffffffd071d0fe78 x6 : 0000000000000000
  x5 : 0000000000000080 x4 : 0000000000000001
  x3 : ffffffd071d0fe98 x2 : 0000000000000000
  x1 : 0000000000000004 x0 : 0000000000000001
  Kernel panic - not syncing: Asynchronous SError Interrupt

Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
Reported-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 36cce2bfb744..6375504ba8b0 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -639,15 +639,14 @@ int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata)
 
 	spin_lock_irqsave(&drvdata->spinlock, flags);
 
-	/* There is no point in reading a TMC in HW FIFO mode */
-	mode = readl_relaxed(drvdata->base + TMC_MODE);
-	if (mode != TMC_MODE_CIRCULAR_BUFFER) {
-		spin_unlock_irqrestore(&drvdata->spinlock, flags);
-		return -EINVAL;
-	}
-
 	/* Re-enable the TMC if need be */
 	if (drvdata->mode == CS_MODE_SYSFS) {
+		/* There is no point in reading a TMC in HW FIFO mode */
+		mode = readl_relaxed(drvdata->base + TMC_MODE);
+		if (mode != TMC_MODE_CIRCULAR_BUFFER) {
+			spin_unlock_irqrestore(&drvdata->spinlock, flags);
+			return -EINVAL;
+		}
 		/*
 		 * The trace run will continue with the same allocated trace
 		 * buffer. As such zero-out the buffer so that we don't end

base-commit: 3d439a6c349778f129de19595db564a8366c3634
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
