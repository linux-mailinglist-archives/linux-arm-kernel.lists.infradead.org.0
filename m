Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCFC4CF55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoKrz0YgnzAyTk3Q33+KRArO+i4nsFHFAAxo3l1fQDw=; b=GKUWaKrWJnhHK3
	OzDLT13dZVp5wddK4oQETGrP05e+eDOyPKt1SH7hTNkXBPgVxRlF9ZMo+/LDOBaXtnk0tq5N2X7ou
	2guI5usfe97cPpcVZuC//WoR86rQXfZidsrq0LOMfRAMi/BjSQB8JBV+58Nj9CbGpz5NCGdsGrXGQ
	GO1epraoMjCeUSQ06Ibn0Mub1uPfOD2BsvXtnF/vu8ezNgUBzXY7fgToiE4xt2E1QQXWAOeeDzj8a
	2bizrUD2fHNFsQPkwe6PJHmyuu9IaHp0+Hgw8nuyzMWsU9kEM13/K4RlZST3xFn8tZQjKnLRFPVbt
	eGZ/yDHKIzRQ2F/7IkiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxP1-0000r3-0T; Thu, 20 Jun 2019 13:46:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxOR-0000aR-SK
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:46:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 15F1161110; Thu, 20 Jun 2019 13:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561038383;
 bh=CDu98sBkLBz6RzBo8RnhLJXtzsjr6rfol3vSoWIvAOM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i3IdTJ9LhqDlz6En4Aj3xzcwEmKCXq/1CFGU1bO1ca/yMTV0nGPzHgbkqBftFoJc+
 ASLCPa2rAHPZlmdXkDorJJNsf2QNeJlI5jx9D4ZOJ9B9EGNpuuX+YQ5sieiQhn1nXL
 LTPZo2yt5VnX4YSo7uKT+X6SJu3Fq57IZN+AArEA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B739060FE9;
 Thu, 20 Jun 2019 13:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561038379;
 bh=CDu98sBkLBz6RzBo8RnhLJXtzsjr6rfol3vSoWIvAOM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a+3C9YAYBQQ87X/jMfFOhcFPXwOCiKUOKjbcyl50POoQX9htMAh5ZpfQUh00wyIgp
 atux3As4Mw5nEkfVbcZk+rvFZOcKUZ1tDSwDc+5g+aBdqilWBK2z4Jl9EUoNgXnH5r
 FPS6ImPocqjGFFt3vxZEzCqPFVgHdM+9UUvT6Rk0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B739060FE9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
Date: Thu, 20 Jun 2019 19:15:47 +0530
Message-Id: <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064623_986683_AD27148F 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the coresight etm and cpu-debug drivers
assume the affinity to CPU0 returned by coresight
platform and continue the probe in case of missing
CPU phandle. This is not true and leads to crash
in some cases, so abort the probe in case of missing
CPU phandle.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/hwtracing/coresight/coresight-cpu-debug.c | 3 +++
 drivers/hwtracing/coresight/coresight-etm3x.c     | 3 +++
 drivers/hwtracing/coresight/coresight-etm4x.c     | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index 07a1367c733f..43f32fa71ff9 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
 		return -ENOMEM;
 
 	drvdata->cpu = coresight_get_cpu(dev);
+	if (drvdata->cpu == -ENODEV)
+		return -ENODEV;
+
 	if (per_cpu(debug_drvdata, drvdata->cpu)) {
 		dev_err(dev, "CPU%d drvdata has already been initialized\n",
 			drvdata->cpu);
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index 225c2982e4fe..882e2751746c 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -816,6 +816,9 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	}
 
 	drvdata->cpu = coresight_get_cpu(dev);
+	if (drvdata->cpu == -ENODEV)
+		return -ENODEV;
+
 	desc.name  = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
 	if (!desc.name)
 		return -ENOMEM;
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7fe266194ab5..97d71dbbeb19 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1101,6 +1101,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	spin_lock_init(&drvdata->spinlock);
 
 	drvdata->cpu = coresight_get_cpu(dev);
+	if (drvdata->cpu == -ENODEV)
+		return -ENODEV;
+
 	desc.name = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
 	if (!desc.name)
 		return -ENOMEM;
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
