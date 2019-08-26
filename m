Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8149D6FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ObHlMd4s/JON5Hnni3yVNHvHO6mF0gP/h3Yd+uVcZ3o=; b=UAbFKZgJj1XnLwSxl4aqBfmlQY
	+Kv+lKDuiLGua0BckbFiAJeraiIs3zPh8NkiNfRwzWZ3RbTEKCw0Br9m/hPrJ4fnVftWajL1Vr4kM
	UDEKqlVLZhE1vL7GYg/Y0YqIHR0cOKCdIQ7L/RiM+Kis02R12++Gn2r5uX4CvkLLvEk8EI41PA83t
	UBTmlx/yBsO6swXYJRyMnNYTYgI8mDUts4o/I7euJsIUuYzlmtylJBugW9gf3zSn2kzwVf64ROkfy
	SZNPyFoD4UardlgH7ANRcueWGIbSUCiS+jdsiBp5wYv/1aJDLN+rDVbaYAsxmuFOw5eIjfcYFD9SV
	psfJfgJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KxM-0000YF-IT; Mon, 26 Aug 2019 19:47:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KwM-0008IU-Kf
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:46:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id o70so12460230pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CW9u0WKr9dqfCIpHqZBfiXSJtaw0A8YWyqVfALCj0kc=;
 b=WVwg3TwB0HpCikLZzH4a+tShwPXLCBRYuErCCrsm3tcP1adv5q72ZruqU3zHKVzD8S
 ByNPKX2v//T5qp3BdgQ1ilHmdKngKaYYomssiom/RZ8AIO29teRGAa1I9JvNlTD+Hpsp
 rfdfUVWOgRnOjQPbEdezmgfoI/+XmvA+wM52R4VihFTMcy8K+b5zNa+SryKqtyOiee0m
 /Tj0ZExjxZJ22hU5spBS3j2rj3SmA+SyJkUS48DJ2qard1Am+ONfatSUK8VofbA25GMY
 WV6FslRPJt0RFG1IPb6U1r4TeGBcJVHsVQVZ80mdcw7mw0QS82Gj7ZxsmCAZwEMowVaH
 MoGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CW9u0WKr9dqfCIpHqZBfiXSJtaw0A8YWyqVfALCj0kc=;
 b=LaH2XteSfA82mk4KgGnfGxHXlZ8CdgLZFmfAEzojRlYh+bmADuEDxZovlfvi/eKkM8
 PciNOYY3E9rXmtrIMTqagFCiIvrJFjaeP1FaxPMiCbrzrEgF5re810AmCxGQ9iM+7xHw
 7VNHAZvQlXEMfgKPduawWYW2H0p9GBeH6UgWk2i0KAuAgB5JS+53THJvRHbh+cd5QtPh
 XZRoMtNnZNkl38uO45LBimsDBajghkEfCjps/F9y2NjwqbxuakbH+AiXm/tOlWar1NUa
 QNXv3ND8Kb7zca1Aom07tZ/RJpn79TjXYEuBSk4KHkJ/SjmrPxXE1GtMKHlj9PDn36i/
 gK7g==
X-Gm-Message-State: APjAAAW7BebXFPXPiupO/9RMziYA4eY7emfIg/+hQxEDqQty27To+GXA
 tR4dWLd3JcJIkXPR2HT8A0RxUg==
X-Google-Smtp-Source: APXvYqy1mvElBIxSMcteaEt74lmxuEQ926hHKQgX9L8nPzxDIVTjKn/u3jKSSZSkxZ0hbk581HsHSQ==
X-Received: by 2002:a63:fe52:: with SMTP id x18mr18744105pgj.344.1566848770082; 
 Mon, 26 Aug 2019 12:46:10 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c35sm13214789pgl.72.2019.08.26.12.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:46:09 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: suzuki.poulose@arm.com,
	leo.yan@linaro.org,
	mike.leach@arm.com
Subject: [PATCH v2 3/3] coresight: tmc-etr: Add barrier packets when moving
 offset forward
Date: Mon, 26 Aug 2019 13:46:05 -0600
Message-Id: <20190826194605.3791-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826194605.3791-1-mathieu.poirier@linaro.org>
References: <20190826194605.3791-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_124610_674522_24A9D00E 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexander.shishkin@linux.intel.com, yabinc@google.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
Tested-by: Yabin Cui <yabinc@google.com>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 29 +++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index bae47272de98..625882bc8b08 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1418,10 +1418,11 @@ static void tmc_free_etr_buffer(void *config)
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
@@ -1430,7 +1431,6 @@ static void tmc_etr_sync_perf_buffer(struct etr_perf_buffer *etr_perf,
 	pg_idx = head >> PAGE_SHIFT;
 	pg_offset = head & (PAGE_SIZE - 1);
 	dst_pages = (char **)etr_perf->pages;
-	src_offset = etr_buf->offset + etr_buf->len - to_copy;
 
 	while (to_copy > 0) {
 		/*
@@ -1478,7 +1478,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		      void *config)
 {
 	bool lost = false;
-	unsigned long flags, size = 0;
+	unsigned long flags, offset, size = 0;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 	struct etr_perf_buffer *etr_perf = config;
 	struct etr_buf *etr_buf = etr_perf->etr_buf;
@@ -1506,16 +1506,35 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	lost = etr_buf->full;
+	offset = etr_buf->offset;
 	size = etr_buf->len;
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
 
 	/* Insert barrier packets at the beginning, if there was an overflow */
 	if (lost)
 		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
-	tmc_etr_sync_perf_buffer(etr_perf, size);
+	tmc_etr_sync_perf_buffer(etr_perf, offset, size);
 
 	/*
 	 * In snapshot mode we simply increment the head by the number of byte
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
