Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED3AE5747
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 01:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GJYDGkEBJguttw9Z4E75zXCk9bturxFoQBdBte9JTmY=; b=VAq1c8ubpc2EJI
	dPoWUwNiO9vg9Ye7DxqBaotDu016tvT4EI7uXVTro8dntosN7GTzVU/O/r/2q0zVo+Ku40ifYooPy
	PyFCCmJ1fKlRjQ3AkflMwSkgfFUdbEG3rcERpkgxo7qmkS50jzKNw5/t3TWDhzLkrjj3+te8/DSRo
	lv6J9EIZPg2bAXv4wZeufmdaPDlWz2rsGHUaJzKGFwuVzLLE8T24uLkWHeLKT/NgmQD7CvdDDBGml
	Pw4paSnHIBpBEJBltrIRSmhUUptXU6kM4bUXchDxMTCkkm0UGEzkQYwj7w50//xuk72r5ARlkV9tw
	56JyJtTQA9RQNLyrm5bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9Or-00010D-2v; Fri, 25 Oct 2019 23:53:45 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9Og-0000zT-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 23:53:36 +0000
Received: by mail-ua1-x94a.google.com with SMTP id t13so844045uaj.23
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 16:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=KnfaRBhkOtHWNKkkUS56gRLOAqFL2VhO104CkKgAj7o=;
 b=AuGhkHR8iBMzEcCPPn4V14Su+r21HbFFTMMS6A7pf5C9wbtJctuUA48d+H1tJ+bEoC
 3Tg70X/TGlsYsmU4GOtVroAQFOCaJ1aEtF1/76VJsN/gU9nvfquUVFBuSIpE2LOScpfN
 0CEpGHcamMjTHDSIA2hDnznXKU/2CThei57JKVfViiQlwzec/2wlIXe7awj9dfgFmrs5
 si6T2Nrz0gPRWUrMA0FSEnoynyhsPD8ht3Y9ySprePWyysKePQj8ImP3zktI6AmnhQXx
 9JYXSqSc+fVYt6D3HjAZJwfL0//2dojiW5F2TFEIFYW3o9WCctCDXJEgvY9D2QB0Jrb2
 nmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=KnfaRBhkOtHWNKkkUS56gRLOAqFL2VhO104CkKgAj7o=;
 b=iyDpLtMtaf/X8zmS+E9szhncvO01nh9pBqeD3hacW1evD6ew1my3dGXo6nY0aS4MC5
 NG+5g8sv5nrYusTNHSnucfVciKuWwQaHvXxlQhvuhuDVJU9wYqU+Mf0llwMOJPf0ABWy
 zEJNlJ+whkEfmzVGoo6dh2tWrDZK3BJ3PwBimyit7Ofh7txJ9OzWzUGNG7GbGbCUEOVk
 gbEKk+O6GOtuxoW/Efng3GoAIGIfxXMLMC9Z8OSIG12pNRWWgoYgHVM4opE7iJPN+863
 +I3oD+5cbl4+amkB3pSKxJ6yhMkjvmhAChaUkJjXusY626Y2T4qZXt6aFR+DG+FKImmO
 5/mA==
X-Gm-Message-State: APjAAAWMTRChyNtVfKr7FDnXjnyXPNQ5p/57PiKoNUGaiARlZLhozgA8
 59B+H6QRSpxxgx3SEiynMeYx8/1Zyg==
X-Google-Smtp-Source: APXvYqxpDgDz/ktMb9wA+EcdZzsO6eQSyMWuV7t4wmCmvLO62su503/HF5jQ9/waz/s/Lm4kQxQzupYjKFs=
X-Received: by 2002:ab0:2e9c:: with SMTP id f28mr3115278uaa.20.1572047604815; 
 Fri, 25 Oct 2019 16:53:24 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:53:21 -0700
Message-Id: <20191025235321.181897-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v5] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_165334_258409_2C29F1D6 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Sorry for the delay!

v4 -> v5:
added document for spinlock fields.
moved dev_dbg() out of lock section, and verified printed debug msgs.

split atomic_inc_return() into atomic_read() and atomic_inc() as
commented.
checked drvdata->reading before refcnt.

---
 .../hwtracing/coresight/coresight-funnel.c    | 36 +++++++++++----
 .../coresight/coresight-replicator.c          | 35 ++++++++++++---
 .../hwtracing/coresight/coresight-tmc-etf.c   | 26 ++++++++---
 drivers/hwtracing/coresight/coresight.c       | 45 ++++++-------------
 4 files changed, 90 insertions(+), 52 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 05f7896c3a01..b605889b507a 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -38,12 +38,14 @@ DEFINE_CORESIGHT_DEVLIST(funnel_devs, "funnel");
  * @atclk:	optional clock for the core parts of the funnel.
  * @csdev:	component vitals needed by the framework.
  * @priority:	port selection order.
+ * @spinlock:	serialize enable/disable operations.
  */
 struct funnel_drvdata {
 	void __iomem		*base;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	unsigned long		priority;
+	spinlock_t		spinlock;
 };
 
 static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
@@ -76,11 +78,21 @@ static int funnel_enable(struct coresight_device *csdev, int inport,
 {
 	int rc = 0;
 	struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-
-	if (drvdata->base)
-		rc = dynamic_funnel_enable_hw(drvdata, inport);
-
+	unsigned long flags;
+	bool first_enable = false;
+
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_read(&csdev->refcnt[inport]) == 0) {
+		if (drvdata->base)
+			rc = dynamic_funnel_enable_hw(drvdata, inport);
+		if (!rc)
+			first_enable = true;
+	}
 	if (!rc)
+		atomic_inc(&csdev->refcnt[inport]);
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
+
+	if (first_enable)
 		dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n", inport);
 	return rc;
 }
@@ -107,11 +119,19 @@ static void funnel_disable(struct coresight_device *csdev, int inport,
 			   int outport)
 {
 	struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	unsigned long flags;
+	bool last_disable = false;
+
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_dec_return(&csdev->refcnt[inport]) == 0) {
+		if (drvdata->base)
+			dynamic_funnel_disable_hw(drvdata, inport);
+		last_disable = true;
+	}
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	if (drvdata->base)
-		dynamic_funnel_disable_hw(drvdata, inport);
-
-	dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
+	if (last_disable)
+		dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
 }
 
 static const struct coresight_ops_link funnel_link_ops = {
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index b29ba640eb25..43304196a1a6 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -31,11 +31,13 @@ DEFINE_CORESIGHT_DEVLIST(replicator_devs, "replicator");
  *		whether this one is programmable or not.
  * @atclk:	optional clock for the core parts of the replicator.
  * @csdev:	component vitals needed by the framework
+ * @spinlock:	serialize enable/disable operations.
  */
 struct replicator_drvdata {
 	void __iomem		*base;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
+	spinlock_t		spinlock;
 };
 
 static void dynamic_replicator_reset(struct replicator_drvdata *drvdata)
@@ -97,10 +99,22 @@ static int replicator_enable(struct coresight_device *csdev, int inport,
 {
 	int rc = 0;
 	struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-
-	if (drvdata->base)
-		rc = dynamic_replicator_enable(drvdata, inport, outport);
+	unsigned long flags;
+	bool first_enable = false;
+
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_read(&csdev->refcnt[outport]) == 0) {
+		if (drvdata->base)
+			rc = dynamic_replicator_enable(drvdata, inport,
+						       outport);
+		if (!rc)
+			first_enable = true;
+	}
 	if (!rc)
+		atomic_inc(&csdev->refcnt[outport]);
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
+
+	if (first_enable)
 		dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
 	return rc;
 }
@@ -137,10 +151,19 @@ static void replicator_disable(struct coresight_device *csdev, int inport,
 			       int outport)
 {
 	struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	unsigned long flags;
+	bool last_disable = false;
+
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (atomic_dec_return(&csdev->refcnt[outport]) == 0) {
+		if (drvdata->base)
+			dynamic_replicator_disable(drvdata, inport, outport);
+		last_disable = true;
+	}
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	if (drvdata->base)
-		dynamic_replicator_disable(drvdata, inport, outport);
-	dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
+	if (last_disable)
+		dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
 }
 
 static const struct coresight_ops_link replicator_link_ops = {
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 807416b75ecc..d0cc3985b72a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -334,9 +334,10 @@ static int tmc_disable_etf_sink(struct coresight_device *csdev)
 static int tmc_enable_etf_link(struct coresight_device *csdev,
 			       int inport, int outport)
 {
-	int ret;
+	int ret = 0;
 	unsigned long flags;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	bool first_enable = false;
 
 	spin_lock_irqsave(&drvdata->spinlock, flags);
 	if (drvdata->reading) {
@@ -344,12 +345,18 @@ static int tmc_enable_etf_link(struct coresight_device *csdev,
 		return -EBUSY;
 	}
 
-	ret = tmc_etf_enable_hw(drvdata);
+	if (atomic_read(&csdev->refcnt[0]) == 0) {
+		ret = tmc_etf_enable_hw(drvdata);
+		if (!ret) {
+			drvdata->mode = CS_MODE_SYSFS;
+			first_enable = true;
+		}
+	}
 	if (!ret)
-		drvdata->mode = CS_MODE_SYSFS;
+		atomic_inc(&csdev->refcnt[0]);
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	if (!ret)
+	if (first_enable)
 		dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
 	return ret;
 }
@@ -359,6 +366,7 @@ static void tmc_disable_etf_link(struct coresight_device *csdev,
 {
 	unsigned long flags;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+	bool last_disable = false;
 
 	spin_lock_irqsave(&drvdata->spinlock, flags);
 	if (drvdata->reading) {
@@ -366,11 +374,15 @@ static void tmc_disable_etf_link(struct coresight_device *csdev,
 		return;
 	}
 
-	tmc_etf_disable_hw(drvdata);
-	drvdata->mode = CS_MODE_DISABLED;
+	if (atomic_dec_return(&csdev->refcnt[0]) == 0) {
+		tmc_etf_disable_hw(drvdata);
+		drvdata->mode = CS_MODE_DISABLED;
+		last_disable = true;
+	}
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
+	if (last_disable)
+		dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
