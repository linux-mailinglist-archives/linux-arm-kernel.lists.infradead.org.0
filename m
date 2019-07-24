Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C7E72DF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yip83V+k81wRAEq7qzCWkSaUY3b2Kc7S/wl0hnODo7g=; b=mAFRolsS1htIOZ
	vACremD3Yyu18M5wqcstr0Vsyu/GnvzYRCWi6qMq/dKELPNXM3qxB19AxihS1ZYPMzImLrLM/ul3D
	KWNtSrNOgim8NVj7RtJVFpmKLp/e+WoPmAfCmnqjgSkEe5pyEYVqYAcfGJGzV8+eTkXRUn8W8GvxT
	f9WtFznQr7Qc6ZavHKkSW/fdGsQ5WCl46d9sdORg3ms4zpEF5cQKo/jKYcHnuAb9jAzpai5SD7tse
	fnj18KZ+eqhO0z48XYCZYeqmo1HNQikbooMy2kXjGvHMXFKVJ29NaqMCVCRx53Ixmyd7xPvtaQShx
	yvOpy5ovoE0EN2peTBhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFhE-0006Ui-2o; Wed, 24 Jul 2019 11:44:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFgB-0005LA-3M
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:43:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F007C15A2;
 Wed, 24 Jul 2019 04:43:30 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 49B423F71A;
 Wed, 24 Jul 2019 04:43:30 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] coresight: tmc-etr: Handle memory errors
Date: Wed, 24 Jul 2019 12:43:11 +0100
Message-Id: <20190724114312.1024-5-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724114312.1024-1-suzuki.poulose@arm.com>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044331_197546_A0136044 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have so far ignored the memory errors, assuming that we have perfect
hardware and driver ;-). Let us handle the memory errors reported by the
TMC ETR in status and truncate the buffer.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 +++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h     |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 3116d1f28e66..2246c1e6744a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -928,6 +928,19 @@ static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
 	rrp = tmc_read_rrp(drvdata);
 	rwp = tmc_read_rwp(drvdata);
 	status = readl_relaxed(drvdata->base + TMC_STS);
+
+	/*
+	 * If there were memory errors in the session, truncate the
+	 * buffer.
+	 */
+	if (WARN_ON_ONCE(status & TMC_STS_MEMERR)) {
+		dev_dbg(&drvdata->csdev->dev,
+			"tmc memory error detected, truncating buffer\n");
+		etr_buf->len = 0;
+		etr_buf->full = 0;
+		return;
+	}
+
 	etr_buf->full = status & TMC_STS_FULL;
 
 	WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 1ed50411cc3c..95d2e2747970 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -47,6 +47,7 @@
 #define TMC_STS_TMCREADY_BIT	2
 #define TMC_STS_FULL		BIT(0)
 #define TMC_STS_TRIGGERED	BIT(1)
+#define TMC_STS_MEMERR		BIT(5)
 /*
  * TMC_AXICTL - 0x110
  *
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
