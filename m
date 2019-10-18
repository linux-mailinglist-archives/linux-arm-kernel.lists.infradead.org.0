Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA554DCDAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jU0KcwAhrJ686Q2XHeXO6UM46JDnen8exKyzn7jxNe0=; b=hx5tzfKKWbcXnF
	eCQWDfriGE/pk9enViveeLxg8FowwQusLCBY98lPzOuhX/fBVz5dFixAmV8OrNjpTuxlv9dd/7uf1
	OubUV2OQh4Eln7/kMpqPiYaSHpK79vLq73ecZpt4oFmvRcU//VbfJFYaBtvN9Ze2DyxDf1RAKU8e4
	4DEUvWJsXDQ85xLqGqL8lcF0+0ussFKXELOJYpTW73gHyUkPboKenCPWWNyJyiIgYIn+U9XR7rXJO
	lr348sbh3j6jy5LsepUJVIUUMlbA5YCiFzRW7upOGv0g/9Z/qku83yFjX561dlVcV+r9U7PKHwyU/
	Ud/UEGVWl6yHZ4isILLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWlb-0005Yo-R6; Fri, 18 Oct 2019 18:14:23 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWlP-0005Tf-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:14:13 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id o204so5049620ywc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=IaFQRFoIKxbV+3Wiy1V75DzJYOA/bGVuQra7qnEhMcY=;
 b=JWxYvpobrwgL0pkXSKTJ4CsepjAxBY+VeNnXG55aHZfRGx104crk0mITbxGlM5JKod
 FpPCvBTLFCBpJRb8dlKQ476CEpHlWvG/hEEHr2rxvisA8bvOg2MXXeJsAV/6gH6AnE15
 fhs4smEtZ43z89Q2XqQEdKZJcMKhGSqpk9fTZfkMclqdp7+HoqHzYbeS1pCE1zDzqPD9
 c02JtxSqBRJAnrZetqxoQBKDFZSS+zpbf3pvL00TiG+8EorcEWx8UOFv2pE42Ev+goQv
 cuQEDSnZ15UGJKp3PCojLGtscYMsdBpaEj2ao8mlpkL+k1GsYlG+O2hlRUs0255ZTMpC
 kFTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=IaFQRFoIKxbV+3Wiy1V75DzJYOA/bGVuQra7qnEhMcY=;
 b=fSuDkCwRY4CqJEl4L7nJHryLAaKkPcbfl4h6skmXULED3YI5Uj976V1sZhKA1u2h7y
 Mhg9TRu77lVcEO3xCGkmZI/DDx4QgadYvtUCs/gJauXivAhsV5xtZzd8It4uoX+UMV8M
 NJsJ7A6I2Ge7zOrTSLj1VQDLaC7Hld6qcjyrh13doSQwvT3E8ukvLtOps+tNMA/+64Ek
 4ppQ8x27hqeGnJ1r/H4aKsLBhC+eo6Uy87lvdhgHsBWIRmBIFiu2SjsIGxghZTr2WHug
 bJkpVJB7Wl8VyIxZtxd4g/FB3QopmrWEyajYlew6jjGNZ7z3OHzGDKDZw9Z8O9RDgrZB
 PSMg==
X-Gm-Message-State: APjAAAX+9fcxUhG/ccaWbpfq9mPzlS3gZI2PwlyQjVm2bgjiKvYeY7dI
 yU1Y8LLd+2K6Gsx8MC1NLLNlhDLhaw==
X-Google-Smtp-Source: APXvYqzt8DNJJd9Eu6sisLImGf22fQmuBo9KAFOjGRAf+2nFwozhnFGV0lfwRGc1JpssCfpBwbwLVj5Ny0w=
X-Received: by 2002:a25:50c8:: with SMTP id e191mr7436750ybb.152.1571422448526; 
 Fri, 18 Oct 2019 11:14:08 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:14:03 -0700
Message-Id: <20191018181403.106836-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v4] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111411_563260_55509DEE 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When tracing etm data of multiple threads on multiple cpus through perf
interface, some link devices are shared between paths of different cpus.
It creates race conditions when different cpus wants to enable/disable
the same link device at the same time.

Example 1:
Two cpus want to enable different ports of a coresight funnel, thus
calling the funnel enable operation at the same time. But the funnel
enable operation isn't reentrantable.

Example 2:
For an enabled coresight dynamic replicator with refcnt=1, one cpu wants
to disable it, while another cpu wants to enable it. Ideally we still have
an enabled replicator with refcnt=1 at the end. But in reality the result
is uncertain.

Since coresight devices claim themselves when enabled for self-hosted
usage, the race conditions above usually make the link devices not usable
after many cycles.

To fix the race conditions, this patch uses spinlocks to serialize
enabling/disabling link devices.

Fixes: a06ae8609b3d ("coresight: add CoreSight core layer framework")
Signed-off-by: Yabin Cui <yabinc@google.com>
---

v3 -> v4: moved lock from coresight_enable/disable_link() to
enable/disable functions of each link device.

I also removed lock protection of csdev->enable in v3. Because that
needs to move csdev->enable inside the enable/disable functions of
each link device. That's much effort with almost no benefits.
csdev->enable seems only used for source devices in sysfs interface.

---
 .../hwtracing/coresight/coresight-funnel.c    | 29 ++++++++----
 .../coresight/coresight-replicator.c          | 31 +++++++++----
 .../hwtracing/coresight/coresight-tmc-etf.c   | 39 ++++++++--------
 drivers/hwtracing/coresight/coresight.c       | 45 ++++++-------------
 4 files changed, 77 insertions(+), 67 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 05f7896c3a01..8326d03a0d03 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -44,6 +44,7 @@ struct funnel_drvdata {
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	unsigned long		priority;
+	spinlock_t		spinlock;
 };
 
 static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
@@ -76,12 +77,20 @@ static int funnel_enable(struct coresight_device *csdev, int inport,
 {
 	int rc = 0;
 	struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	unsigned long flags;
 
-	if (drvdata->base)
-		rc = dynamic_funnel_enable_hw(drvdata, inport);
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_inc_return(&csdev->refcnt[inport]) == 1) {
+		if (drvdata->base)
+			rc = dynamic_funnel_enable_hw(drvdata, inport);
 
-	if (!rc)
-		dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n", inport);
+		if (rc)
+			atomic_dec(&csdev->refcnt[inport]);
+		else
+			dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n",
+				inport);
+	}
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 	return rc;
 }
 
@@ -107,11 +116,15 @@ static void funnel_disable(struct coresight_device *csdev, int inport,
 			   int outport)
 {
 	struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	unsigned long flags;
 
-	if (drvdata->base)
-		dynamic_funnel_disable_hw(drvdata, inport);
-
-	dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_dec_return(&csdev->refcnt[inport]) == 0) {
+		if (drvdata->base)
+			dynamic_funnel_disable_hw(drvdata, inport);
+		dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
+	}
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 }
 
 static const struct coresight_ops_link funnel_link_ops = {
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index b29ba640eb25..427d8b8d0917 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -36,6 +36,7 @@ struct replicator_drvdata {
 	void __iomem		*base;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
+	spinlock_t		spinlock;
 };
 
 static void dynamic_replicator_reset(struct replicator_drvdata *drvdata)
@@ -97,11 +98,20 @@ static int replicator_enable(struct coresight_device *csdev, int inport,
 {
 	int rc = 0;
 	struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-
-	if (drvdata->base)
-		rc = dynamic_replicator_enable(drvdata, inport, outport);
-	if (!rc)
-		dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
+	unsigned long flags;
+
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_inc_return(&csdev->refcnt[outport]) == 1) {
+		if (drvdata->base)
+			rc = dynamic_replicator_enable(drvdata, inport,
+						       outport);
+
+		if (rc)
+			atomic_dec(&csdev->refcnt[outport]);
+		else
+			dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
+	}
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 	return rc;
 }
 
@@ -137,10 +147,15 @@ static void replicator_disable(struct coresight_device *csdev, int inport,
 			       int outport)
 {
 	struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	unsigned long flags;
 
-	if (drvdata->base)
-		dynamic_replicator_disable(drvdata, inport, outport);
-	dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_dec_return(&csdev->refcnt[outport]) == 0) {
+		if (drvdata->base)
+			dynamic_replicator_disable(drvdata, inport, outport);
+		dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
+	}
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 }
 
 static const struct coresight_ops_link replicator_link_ops = {
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 807416b75ecc..cb4a38541bf8 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -334,23 +334,25 @@ static int tmc_disable_etf_sink(struct coresight_device *csdev)
 static int tmc_enable_etf_link(struct coresight_device *csdev,
 			       int inport, int outport)
 {
-	int ret;
+	int ret = 0;
 	unsigned long flags;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
 	spin_lock_irqsave(&drvdata->spinlock, flags);
-	if (drvdata->reading) {
-		spin_unlock_irqrestore(&drvdata->spinlock, flags);
-		return -EBUSY;
+	if (atomic_inc_return(&csdev->refcnt[0]) == 1) {
+		if (drvdata->reading)
+			ret = -EBUSY;
+		else
+			ret = tmc_etf_enable_hw(drvdata);
+
+		if (ret) {
+			atomic_dec(&csdev->refcnt[0]);
+		} else {
+			drvdata->mode = CS_MODE_SYSFS;
+			dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
+		}
 	}
-
-	ret = tmc_etf_enable_hw(drvdata);
-	if (!ret)
-		drvdata->mode = CS_MODE_SYSFS;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
-
-	if (!ret)
-		dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
 	return ret;
 }
 
@@ -361,16 +363,13 @@ static void tmc_disable_etf_link(struct coresight_device *csdev,
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
 	spin_lock_irqsave(&drvdata->spinlock, flags);
-	if (drvdata->reading) {
-		spin_unlock_irqrestore(&drvdata->spinlock, flags);
-		return;
-	}
-
-	tmc_etf_disable_hw(drvdata);
-	drvdata->mode = CS_MODE_DISABLED;
+	if (atomic_dec_return(&csdev->refcnt[0]) == 0)
+		if (!drvdata->reading) {
+			tmc_etf_disable_hw(drvdata);
+			drvdata->mode = CS_MODE_DISABLED;
+			dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
+		}
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
-
-	dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
 }
 
 static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 6453c67a4d01..0bbce0d29158 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -253,9 +253,9 @@ static int coresight_enable_link(struct coresight_device *csdev,
 				 struct coresight_device *parent,
 				 struct coresight_device *child)
 {
-	int ret;
+	int ret = 0;
 	int link_subtype;
-	int refport, inport, outport;
+	int inport, outport;
 
 	if (!parent || !child)
 		return -EINVAL;
@@ -264,29 +264,17 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	outport = coresight_find_link_outport(csdev, child);
 	link_subtype = csdev->subtype.link_subtype;
 
-	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG)
-		refport = inport;
-	else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT)
-		refport = outport;
-	else
-		refport = 0;
-
-	if (refport < 0)
-		return refport;
+	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG && inport < 0)
+		return inport;
+	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT && outport < 0)
+		return outport;
 
-	if (atomic_inc_return(&csdev->refcnt[refport]) == 1) {
-		if (link_ops(csdev)->enable) {
-			ret = link_ops(csdev)->enable(csdev, inport, outport);
-			if (ret) {
-				atomic_dec(&csdev->refcnt[refport]);
-				return ret;
-			}
-		}
-	}
-
-	csdev->enable = true;
+	if (link_ops(csdev)->enable)
+		ret = link_ops(csdev)->enable(csdev, inport, outport);
+	if (!ret)
+		csdev->enable = true;
 
-	return 0;
+	return ret;
 }
 
 static void coresight_disable_link(struct coresight_device *csdev,
@@ -295,7 +283,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
 {
 	int i, nr_conns;
 	int link_subtype;
-	int refport, inport, outport;
+	int inport, outport;
 
 	if (!parent || !child)
 		return;
@@ -305,20 +293,15 @@ static void coresight_disable_link(struct coresight_device *csdev,
 	link_subtype = csdev->subtype.link_subtype;
 
 	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG) {
-		refport = inport;
 		nr_conns = csdev->pdata->nr_inport;
 	} else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT) {
-		refport = outport;
 		nr_conns = csdev->pdata->nr_outport;
 	} else {
-		refport = 0;
 		nr_conns = 1;
 	}
 
-	if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
-		if (link_ops(csdev)->disable)
-			link_ops(csdev)->disable(csdev, inport, outport);
-	}
+	if (link_ops(csdev)->disable)
+		link_ops(csdev)->disable(csdev, inport, outport);
 
 	for (i = 0; i < nr_conns; i++)
 		if (atomic_read(&csdev->refcnt[i]) != 0)
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
