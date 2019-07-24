Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E8272DF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+a4Tkt/HQ8K2qkv0VIgKnp74GOQhV/3X2/gZ64182c=; b=UMwDc53bWL1oLH
	S3juPBi0aY/1hSKcr26XGRoLIYIzuwlCLWngv+0WvJPJKXX6IhXrTZq+W4ia50kzpazOe06JMcQC2
	J36UPUuww942PFfrv+0FtXrTBNUH1nqqa7HfQUkLg4Z8Xo4JNx42Ff2VK28zhVXz9lUtEdbYllv24
	etQ2pW7t4S9RFKXAtfSkRkVWB14+lZjljVv/SML4al/ukalAld7hXlus1LvOAR2CnUTZXcnaDZUVX
	2fl8eRCZFp2QiP+vQlXLa3Lhi+Mpg4MxvSzcjjJumRsxAW9/I3BPho2CmSc8k80GYYL2lD3nBYZSo
	Wcu0aWE2YKEG48GSh15A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFh4-00062I-Io; Wed, 24 Jul 2019 11:44:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFgA-0005LU-GB
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:43:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16DD215A1;
 Wed, 24 Jul 2019 04:43:30 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 64C7B3F71A;
 Wed, 24 Jul 2019 04:43:29 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] coresight: etr_buf: Consolidate refcount initialization
Date: Wed, 24 Jul 2019 12:43:10 +0100
Message-Id: <20190724114312.1024-4-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724114312.1024-1-suzuki.poulose@arm.com>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044330_604280_2228F6F7 
X-CRM114-Status: GOOD (  10.07  )
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

We now use refcounts for the etr_buf users. Let us initialize it
while we allocate it.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..3116d1f28e66 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -871,6 +871,7 @@ static struct etr_buf *tmc_alloc_etr_buf(struct tmc_drvdata *drvdata,
 		return ERR_PTR(rc);
 	}
 
+	refcount_set(&etr_buf->refcount, 1);
 	dev_dbg(dev, "allocated buffer of size %ldKB in mode %d\n",
 		(unsigned long)size >> 10, etr_buf->mode);
 	return etr_buf;
@@ -1263,8 +1264,6 @@ get_perf_etr_buf_cpu_wide(struct tmc_drvdata *drvdata,
 	if (IS_ERR(etr_buf))
 		return etr_buf;
 
-	refcount_set(&etr_buf->refcount, 1);
-
 	/* Now that we have a buffer, add it to the IDR. */
 	mutex_lock(&drvdata->idr_mutex);
 	ret = idr_alloc(&drvdata->idr, etr_buf, pid, pid + 1, GFP_KERNEL);
@@ -1291,19 +1290,11 @@ get_perf_etr_buf_per_thread(struct tmc_drvdata *drvdata,
 			    struct perf_event *event, int nr_pages,
 			    void **pages, bool snapshot)
 {
-	struct etr_buf *etr_buf;
-
 	/*
 	 * In per-thread mode the etr_buf isn't shared, so just go ahead
 	 * with memory allocation.
 	 */
-	etr_buf = alloc_etr_buf(drvdata, event, nr_pages, pages, snapshot);
-	if (IS_ERR(etr_buf))
-		goto out;
-
-	refcount_set(&etr_buf->refcount, 1);
-out:
-	return etr_buf;
+	return alloc_etr_buf(drvdata, event, nr_pages, pages, snapshot);
 }
 
 static struct etr_buf *
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
