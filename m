Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5643B9A29D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 00:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GFEKsCTc5FB7rTibXy6VP6gOWkDLQRd9y5nNdv+H4Fk=; b=Fq8gwQ0cW7v2BuzvrAs0839w21
	WeQBnLLX9B1M9J/CfzNaPsY7WNoSugrl0V+eRDYNXXKc6l6gzVhglUr8zp2vmCUB2CxK0uQAKWP1n
	nYnA029CzToDhtCZx5hyrOgNBY4mTczvMmakZslUvwwxKSoucJ8zlKNk0SZrjnGrdkvPVu1dLh8M4
	KVCs2lmwajtdMVChV6M8tNhYfvCdNCvvh3EFc5x8D90/nAkAJsliJHs5am0GOBC5UaBNaBFcw+44g
	cdIi9o/YI/AB9GxPq7KXS0yT9xrlvLVJo62ret/MKvubDJqe5oO7q0JhmiL5i91X//6J/0t9qzP+4
	bDwRnchA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vHK-0001rC-Kr; Thu, 22 Aug 2019 22:09:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vGi-0001O7-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 22:09:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id w26so4876072pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 15:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9zuadHq2oNAonLqdCJokcmV7Tuo9vqcylSnraeruuq0=;
 b=Kpr3QTAHjS54FLrMAqnHEX87rbU/GpTGSZqfU8qQ9hxl6HzXlLA48Sn/M1KycdVeI6
 KJRdjA8uLj5Gi1uS7vdpyPz0Kw9s1VUmnULZVRTHyjf0pfqL2Q/HetGUczthXAWr9gZq
 s1rMj910XwiYgUUXbDCNTFrw2b0Liwi6uFyax9ibgDqxQlUb5bBcCgGo9WqHF+EfOCNY
 Vok1YRSY4m/O8w9HyFPA55mudsdKVOJFDk3y1ocvXxKDld3J51o+zwkHeZgyppoSnnTy
 v6GFTLNHweKRTDvOhjQKi7B1IGcuhfgiQZ4xVj04Sg0wI1ODfvlqViynwPxYi36lvVNM
 jYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9zuadHq2oNAonLqdCJokcmV7Tuo9vqcylSnraeruuq0=;
 b=TN77RcjbIbhRehA0SoMN2xNwgr1Vnbt9Mc014wi1Hw4vCLdv9UleiM/4cxBzDlGjQW
 3oRokiJ28ACZ91Wx0IzekSAOvGNxnWcyjD7S+xV5LuM5Mg0dV4kdZ18CCmJP0LGw/z6P
 eCPAud+6KVNS3WtWMzb1v20Kkct9/NqtdYlurnWkPEvhsO/6FkHJmC9lqJYRFNvPMc3m
 R6yH60mAGvsr5Idee9dVb2a5zuG8SdeTgyjXiAPhB01PiOZIM+6YKZkbmUY99kk1FQ2Z
 PC9eOwoO6SOJt6xSoNcMbqw70Cxo7y147aucBGh0VPdT2nl+jKv+yAFwPaoYRownUoAO
 EArA==
X-Gm-Message-State: APjAAAXTRY+p9Gpbe5blYfXuc95S+gf0JEjThK5oZNFY6mRvfndyuEKs
 vb89n8fVosAH3nBPGB2x7l2dXQ==
X-Google-Smtp-Source: APXvYqy84OkTLajF4+tdro/zEbqpNFakHDW+gSLGmhAWrFYvZI20iFVQypOHf0JtT/vxegZCjr1sfw==
X-Received: by 2002:a63:607:: with SMTP id 7mr1204487pgg.240.1566511759764;
 Thu, 22 Aug 2019 15:09:19 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s7sm377432pfb.138.2019.08.22.15.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 15:09:19 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: yabinc@google.com,
	suzuki.poulose@arm.com,
	leo.yan@linaro.org
Subject: [PATCH 2/2] coresight: tmc-etr: Add barrier packet when moving offset
 forward
Date: Thu, 22 Aug 2019 16:09:15 -0600
Message-Id: <20190822220915.8876-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822220915.8876-1-mathieu.poirier@linaro.org>
References: <20190822220915.8876-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_150920_593196_944B25C9 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@arm.com, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds barrier packets in the trace stream when the offset in the
data buffer needs to be moved forward.  Otherwise the decoder isn't aware
of the break in the stream and can't synchronise itself with the trace
data.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 43 ++++++++++++++-----
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 4f000a03152e..0e4cd6ec5f28 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -946,10 +946,6 @@ static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
 	WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);
 
 	etr_buf->ops->sync(etr_buf, rrp, rwp);
-
-	/* Insert barrier packets at the beginning, if there was an overflow */
-	if (etr_buf->full)
-		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
 }
 
 static void __tmc_etr_enable_hw(struct tmc_drvdata *drvdata)
@@ -1415,10 +1411,11 @@ static void tmc_free_etr_buffer(void *config)
  * buffer to the perf ring buffer.
  */
 static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
+				     unsigned long src_offset,
 				     unsigned long to_copy)
 {
 	long bytes;
-	long pg_idx, pg_offset, src_offset;
+	long pg_idx, pg_offset;
 	unsigned long head = etr_perf->head;
 	char **dst_pages, *src_buf;
 	struct etr_buf *etr_buf = etr_perf->etr_buf;
@@ -1427,7 +1424,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
 	pg_idx = head >> PAGE_SHIFT;
 	pg_offset = head & (PAGE_SIZE - 1);
 	dst_pages = (char **)etr_perf->pages;
-	src_offset = etr_buf->offset + etr_buf->len - to_copy;
 
 	while (to_copy > 0) {
 		/*
@@ -1475,7 +1471,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		      void *config)
 {
 	bool lost = false;
-	unsigned long flags, size = 0;
+	unsigned long flags, offset, size = 0;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 	struct etr_perf_buffer *etr_perf = config;
 	struct etr_buf *etr_buf = etr_perf->etr_buf;
@@ -1503,11 +1499,39 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
+	offset = etr_buf->offset;
+	lost |= etr_buf->full;
+
+	/*
+	 * The ETR buffer may be bigger than the space available in the
+	 * perf ring buffer (handle->size).  If so advance the offset so that we
+	 * get the latest trace data.  In snapshot mode none of that matters
+	 * since we are expected to clobber stale data in favour of the latest
+	 * traces.
+	 */
 	if (!etr_perf->snapshot && size > handle->size) {
-		size = handle->size;
+		u32 mask = tmc_get_memwidth_mask(drvdata);
+
+		/*
+		 * Make sure the new size is aligned in accordance with the
+		 * requirement explained in function tmc_get_memwidth_mask().
+		 */
+		size = handle->size & mask;
+		offset = etr_buf->offset + etr_buf->len - size;
+
+		if (offset >= etr_buf->size)
+			offset -= etr_buf->size;
 		lost = true;
 	}
-	tmc_etr_sync_perf_buffer(etr_perf, size);
+
+	/*
+	 * Insert barrier packets at the beginning, if there was an overflow
+	 * or if the offset had to be brought forward.
+	 */
+	if (lost)
+		tmc_etr_buf_insert_barrier_packet(etr_buf, offset);
+
+	tmc_etr_sync_perf_buffer(etr_perf, offset, size);
 
 	/*
 	 * In snapshot mode we simply increment the head by the number of byte
@@ -1518,7 +1542,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	if (etr_perf->snapshot)
 		handle->head += size;
 
-	lost |= etr_buf->full;
 out:
 	/*
 	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
